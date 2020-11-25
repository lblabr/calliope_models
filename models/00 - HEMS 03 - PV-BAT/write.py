import requests
import json
import os
import time
import datetime
import pytz
import pandas
import calliope

periods = 96*3

#timezone of value to import
tzOfValues = pytz.timezone("UTC")

#Europe/Berlin
#tzOfValues = pytz.timezone("Europe/Berlin")

# --- Erstellen eine datetime-Objekts
LOCAL_TIMEZONE = datetime.datetime.now(datetime.timezone(datetime.timedelta(0))).astimezone().tzinfo
tzOffset = int(datetime.datetime.now().astimezone(LOCAL_TIMEZONE).utcoffset().total_seconds()) - int(datetime.datetime.now().astimezone(tzOfValues).utcoffset().total_seconds())

######################################

#PV-Prognose
url = 'http://10.100.10.1:8086/query?db=openhab'
data = {'q': "SELECT * FROM (SELECT mean(\"value\") FROM \"solcast\" WHERE (\"product\" = \'pvforecast\' AND \"version\" = \'latest\') AND time >= " + str(int(time.mktime(datetime.date.today().timetuple())*1000*1000*1000) + tzOffset*1000*1000*1000) + " and time <= " + str(int(time.mktime(datetime.date.today().timetuple()) + (periods*15)/60*60*60)*1000*1000*1000 + tzOffset*1000*1000*1000) + " GROUP BY time(15m) fill(previous)) "}
headers = {}

r = requests.post(url, headers=headers, data=data)
data = json.loads(r.text)

aa = pandas.DataFrame(data["results"][0]["series"][0]["values"])

for i, row in aa.iterrows():
    aa.at[i,0] = datetime.datetime.strptime(row[0],'%Y-%m-%dT%H:%M:%SZ')

aa.to_csv('./timeseries_data/pv-prognose.csv', index=False, index_label="asdas", header=["Time","PV"])

#PV-Prognose

hourlyTimeSeries = pandas.Series(pandas.date_range(datetime.datetime.today().strftime("%Y-%m-%d"), periods=periods, freq='15T'))

#Prognose Demand Start
demandTemplate = pandas.Series([-500 for x in range(periods)])
demand = pandas.concat([hourlyTimeSeries, demandTemplate], axis=1, join='inner')
demand.to_csv('./timeseries_data/demand_node1.csv', index=False, index_label="asdas", header=["Time","Demand"])
#Prognose Demand End

#Prognose Demand-EV Start
demandTemplate = pandas.Series([0 for x in range(periods)])
demandTemplate[84:96]=-3700
demand = pandas.concat([hourlyTimeSeries, demandTemplate], axis=1, join='inner')
demand.to_csv('./timeseries_data/demand_ev.csv', index=False, index_label="asdas", header=["Time","Demand"])
#Prognose Demand-EV End

#Price Start
#priceTemplate = pandas.DataFrame({'Prices': [0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.13,0.3,0.3,0.3,0.3,0.3]},index=index)
priceTemplate = pandas.Series([0.3 for x in range(periods)])
priceTemplate[96*0+18*4:96*0+18*4+4] = 0.13
priceTemplate[96*1+18*4:96*1+18*4+4] = 0.13
#priceTemplate[96*2+18*4:96*2+18*4+4] = 0.13

print(priceTemplate)
#exit()
prices = pandas.concat([hourlyTimeSeries, priceTemplate], axis=1, join='inner')
prices.to_csv('./timeseries_data/prices.csv', index=False, index_label="asdas", header=["Time","Price"])
#Price End

model = calliope.Model(
    'model.yaml',
    override_dict={'model.subset_time': [datetime.datetime.today().strftime("%Y-%m-%d"),(datetime.datetime.today() + datetime.timedelta(days=2)).strftime("%Y-%m-%d")], 'run.solver': 'glpk'}
#    override_dict={'model.subset_time': datetime.datetime.today().strftime("%Y-%m-%d"), 'run.solver': 'glpk'}
)

model.run()

model.to_csv(datetime.datetime.today().strftime("%Y%m%d_%H%M%S"))


url = 'http://10.100.10.1:8086/write?db=openhab&precision=s'
headers = {}
myDate = datetime.datetime.today()

if 1==1:
    for obj in model.results["carrier_con"].sel(loc_tech_carriers_con='location::battery::electricity'):

        if model.results["carrier_prod"].sel(loc_tech_carriers_prod='location::pv::electricity').sel(timesteps=obj.coords["timesteps"].values).values == 0 and abs(obj.values) > 0:
    #        schedulerTuple = {"parameter":[{'item':'Mode', 'type':'String', 'value':'load'}, {'item':'Out', 'type': 'Number','value':0},{'item':'OutLimitMax', 'value':0}, {'item':'OutLimitMin', 'value':0}, {'item':'In', 'value':7200}, {'item':'InLimitMax', 'value': int(abs(obj.values))}, {'item':'InLimitMin', 'value':3680}]}
            schedulerTuple = {"parameter":[{'item':'Mode', 'type':'String', 'value':'load'}, {'item':'Out', 'type': 'Number','value':0},{'item':'OutLimitMax', 'value':0}, {'item':'OutLimitMin', 'value':0}, {'item':'In', 'value':7200}, {'item':'InLimitMax', 'value': 3680}, {'item':'InLimitMin', 'value':3680}]}
            myString = json.dumps(schedulerTuple).replace('"','\\\"')
            dt = time.mktime(datetime.datetime.strptime(str(obj.coords["timesteps"].values)[0:19],'%Y-%m-%dT%H:%M:%S').timetuple()) + tzOffset
            r = requests.post(url, headers=headers, data='mqtt_topic_ems_battery_activeLoadProfile value="' + myString + '" ' + str(int(dt)))
            print(r)

        else:
            print("else auto_load")
#            print(obj)
            schedulerTuple = {"parameter":[{'item':'Mode', 'type':'String', 'value':'auto_load'}, {'item':'Out', 'type': 'Number','value':0},{'item':'OutLimitMax', 'value':3680}, {'item':'OutLimitMin', 'value':300}, {'item':'In', 'value':0}, {'item':'InLimitMax', 'value': int(abs(obj.values)*1.2)}, {'item':'InLimitMin', 'value':300}]}
            myString = json.dumps(schedulerTuple).replace('"','\\\"')
            dt = time.mktime(datetime.datetime.strptime(str(obj.coords["timesteps"].values)[0:19],'%Y-%m-%dT%H:%M:%S').timetuple()) + tzOffset
            r = requests.post(url, headers=headers, data='mqtt_topic_ems_battery_activeLoadProfile value="' + myString + '" ' + str(int(dt)))
            print(r)

model.plot.timeseries()
#model.plot.summary("summary")




