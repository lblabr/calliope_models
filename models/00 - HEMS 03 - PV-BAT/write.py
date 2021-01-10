import requests
import json
import os
import time
import datetime
import pytz
import pandas
import calliope

import re
import warnings

import plotly.offline as pltly
import jinja2

periods = 96*3


print(datetime.datetime.now())
print("Start")

#timezone of value to import
tzOfValues = pytz.timezone("UTC")

#Europe/Berlin
#tzOfValues = pytz.timezone("Europe/Berlin")

# --- Erstellen eine datetime-Objekts
LOCAL_TIMEZONE = datetime.datetime.now(datetime.timezone(datetime.timedelta(0))).astimezone().tzinfo
tzOffset = int(datetime.datetime.now().astimezone(LOCAL_TIMEZONE).utcoffset().total_seconds()) - int(datetime.datetime.now().astimezone(tzOfValues).utcoffset().total_seconds())

######################################
dtStart = datetime.date.today()
#dtStart = datetime.date(2020, 11, 5)
#dtStart = datetime.date(2020, 12, 10)
#dtStart = datetime.date(2020, 8, 9)
#dtStart = datetime.datetime.strptime(datetime.datetime.now().strftime("%Y-%m-%d %H:00"),'%Y-%m-%d %H:00')
dtEnd = dtStart + datetime.timedelta(minutes=periods*15)

ldtStart = time.mktime(dtStart.timetuple())
ldtEnd = time.mktime(dtEnd.timetuple())

#https://flexengine.staging.energiemanagement-enviam.de/incentive
#headers = {}

if (1==1):
    headers = {'content-type': 'application/json'}
    r = requests.get("https://flexengine.staging.energiemanagement-enviam.de/incentive", headers=headers)
    data = json.loads(r.text)
    for obj in data:
    
        print(obj)
    
        if obj["type"] == "Price" and obj['name'] == "Mitnetz GridFee Incentive":
            r = requests.get("https://flexengine.staging.energiemanagement-enviam.de/incentive/" + obj["id"] + "/" + str(int(ldtStart-3*60*60)) + "/" + str(int(ldtEnd+15*60)), headers=headers)
#            r = requests.get("https://flexengine.staging.energiemanagement-enviam.de/incentive/" + obj["id"] + "/" + str(int(ldtStart-3*60*60)) + "/" + str(int(ldtEnd+72*60*60)), headers=headers)
#            print("https://flexengine.staging.energiemanagement-enviam.de/incentive/" + obj["id"] + "/" + str(int(time.mktime(datetime.date.today().timetuple()))) + "/" + str(int(time.mktime(datetime.date.today().timetuple()))+144*60*60) )
#            print("https://flexengine.staging.energiemanagement-enviam.de/incentive/" + obj["id"])
            schedules = json.loads(r.text)
#            print(schedules)
#            exit()            
            df = pandas.DataFrame(schedules["items"])

            print(df)
            
            try:
                for i, row in df.iterrows():
#                    print(i)
#                    print(row)

                    df.at[i,"startTime"] = datetime.datetime.strptime(row[0],'%Y-%m-%dT%H:%M:%S%z').strftime('%Y-%m-%d %H:%M:%S')        
                    df.at[i,"value"] = row['value']/100

                df.to_csv('./timeseries_data/netzflex.csv', columns=["startTime","value"],index=False, index_label="asdas",header=["Time","Incentive"])
                break
            except:
                print("!!!!! Error Netzflex !!!!!!")

#PV-Prognose
url = 'http://10.100.10.1:8086/query?db=openhab'
data = {'q': "SELECT * FROM (SELECT mean(\"value\") FROM \"solcast\" WHERE (\"product\" = \'pvforecast\' AND \"version\" = \'latest\') AND time >= " + str(int( ldtStart *1000*1000*1000) + tzOffset*1000*1000*1000) + " and time <= " + str(int((ldtEnd+4*15*60)*1000*1000*1000) + tzOffset*1000*1000*1000) + " GROUP BY time(15m) fill(previous)) "}
#data = {'q': "SELECT * FROM (SELECT mean(\"value\") FROM \"solcast\" WHERE (\"product\" = \'pvforecast\' AND \"version\" = \'latest\') AND time >= " + str(int( ldtStart *1000*1000*1000) + tzOffset*1000*1000*1000) + " and time <= " + str(int(ldtEnd + (periods*15)/60*60*60)*1000*1000*1000 + tzOffset*1000*1000*1000) + " GROUP BY time(15m) fill(previous)) "}
headers = {}

r = requests.post(url, headers=headers, data=data)
data = json.loads(r.text)

print('#####')
print(data)
print('#####')

aa = pandas.DataFrame(data["results"][0]["series"][0]["values"])

for i, row in aa.iterrows():
    aa.at[i,0] = datetime.datetime.strptime(row[0],'%Y-%m-%dT%H:%M:%SZ')

aa.to_csv('./timeseries_data/pv-prognose.csv', index=False, index_label="asdas", header=["Time","PV"])

#PV-Prognose


#aWATTar
url = 'http://10.100.10.1:8086/query?db=marketdata'
#data = {'q': "SELECT mean(\"value\")/1000 FROM \"awattar\" WHERE \"product\" = \'spot\' AND time >= " + str(int(ldtStart*1000*1000*1000) + tzOffset*1000*1000*1000) + " and time <= " + str(int( ldtEnd + (periods*15)/60*60*60)*1000*1000*1000 + tzOffset*1000*1000*1000) + " GROUP BY time(15m) fill(previous) "}
data = {'q': "SELECT mean(\"value\")/1000 FROM \"awattar\" WHERE \"product\" = \'spot\' AND time >= " + str(int(ldtStart*1000*1000*1000) + tzOffset*1000*1000*1000) + " and time <= " + str(int((ldtEnd+4*15*60)*1000*1000*1000) + tzOffset*1000*1000*1000) + " GROUP BY time(15m) fill(previous) "}

#print(data)
#exit()

headers = {}

r = requests.post(url, headers=headers, data=data)
data = json.loads(r.text)



aa = pandas.DataFrame(data["results"][0]["series"][0]["values"])

for i, row in aa.iterrows():
    aa.at[i,0] = datetime.datetime.strptime(row[0],'%Y-%m-%dT%H:%M:%SZ')

aa.to_csv('./timeseries_data/awattar.csv', index=False, index_label="asdas", header=["Time","Price"])

#PV-Prognose


hourlyTimeSeries = pandas.Series(pandas.date_range(dtStart.strftime("%Y-%m-%d %H:00"), periods=periods+5, freq='15T'))

#Prognose Demand Start
demandTemplate = pandas.Series([-500 for x in range(periods+5)])
demand = pandas.concat([hourlyTimeSeries, demandTemplate], axis=1, join='inner')
demand.to_csv('./timeseries_data/demand_node1.csv', index=False, index_label="asdas", header=["Time","Demand"])
#Prognose Demand End

#Prognose Demand-EV Start
demandTemplate = pandas.Series([0 for x in range(periods+5)])
demandTemplate[88:96]=-3700
demand = pandas.concat([hourlyTimeSeries, demandTemplate], axis=1, join='inner')
demand.to_csv('./timeseries_data/demand_ev.csv', index=False, index_label="asdas", header=["Time","Demand"])
#Prognose Demand-EV End

#Price Start
#priceTemplate = pandas.DataFrame({'Prices': [0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.13,0.3,0.3,0.3,0.3,0.3]},index=index)
priceTemplate = pandas.Series([0.3 for x in range(periods+5)])
priceTemplate[96*0+18*4:96*0+18*4+4] = 0.13925
priceTemplate[96*1+18*4:96*1+18*4+4] = 0.13925
priceTemplate[96*2+18*4:96*2+18*4+4] = 0.13925

print(priceTemplate)
#exit()
prices = pandas.concat([hourlyTimeSeries, priceTemplate], axis=1, join='inner')
prices.to_csv('./timeseries_data/prices.csv', index=False, index_label="asdas", header=["Time","Price"])
#Price End


print(datetime.datetime.now())
print("Start Model")

#http://10.100.10.1:8080/rest/items/SBSSoC/state

#headers = {'content-type': 'application/json'}
r = requests.get("http://10.100.10.1:8080/rest/items/SBSSoC/state", headers=headers)
data = json.loads(r.text)

model = calliope.Model(
    'model.yaml',
#    override_dict={'model.subset_time': [datetime.datetime.now().strftime("%Y-%m-%d %H:00"),(datetime.datetime.today() + datetime.timedelta(days=2)).strftime("%Y-%m-%d")], 'run.solver': 'glpk',
    override_dict={'model.subset_time': [dtStart.strftime("%Y-%m-%d %H:00"),dtEnd.strftime("%Y-%m-%d 00:00")], 'run.solver': 'glpk',
#                    'techs.battery.constraints.storage_initial': 0.4 },
                    'techs.battery.constraints.storage_initial': data/100 },
    scenario='ohne_netzflex'
#    override_dict={'model.subset_time': datetime.datetime.today().strftime("%Y-%m-%d"), 'run.solver': 'glpk'}
)

print(datetime.datetime.now())
print("Run Model")

model.run()

print(datetime.datetime.now())
print("Run -finish- Model")


outputDir = datetime.datetime.today().strftime("%Y%m%d_%H%M%S") + '_' + dtStart.strftime("%Y%m%d_%H%M")

if 1==1:
    model.to_csv(outputDir)

url = 'http://10.100.10.1:8086/write?db=openhab&precision=s'
headers = {}
myDate = datetime.datetime.today()

if 1==0:
    for obj in model.results["carrier_con"].sel(loc_tech_carriers_con='location::battery::electricity')[:96]:

        pv_prognose = model.results["carrier_prod"].sel(loc_tech_carriers_prod='location::pv::electricity').sel(timesteps=obj.coords["timesteps"]).values
        demand = model.results["carrier_con"].sel(loc_tech_carriers_con='location::demand_electricity::electricity').sel(timesteps=obj.coords["timesteps"]).values
        battery = model.results["carrier_con"].sel(loc_tech_carriers_con='location::battery::electricity').sel(timesteps=obj.coords["timesteps"]).values

#        print(pv_prognose)
#        print(demand)
#        print(battery)
#        print(pv_prognose + demand + battery)

        if pv_prognose + demand + battery > -50 and pv_prognose + demand + battery < 50:
            print("100%")

            schedulerTuple = {"parameter":[{'item':'Mode', 'type':'String', 'value':'auto_load'}, {'item':'Out', 'type': 'Number','value':0},{'item':'OutLimitMax', 'value':3700}, {'item':'OutLimitMin', 'value':0}, {'item':'In', 'value':0}, {'item':'InLimitMax', 'value': 3680}, {'item':'InLimitMin', 'value':300}]}
            myString = json.dumps(schedulerTuple).replace('"','\\\"')
            dt = time.mktime(datetime.datetime.strptime(str(obj.coords["timesteps"].values)[0:19],'%Y-%m-%dT%H:%M:%S').timetuple()) + tzOffset
            r = requests.post(url, headers=headers, data='mqtt_topic_ems_battery_activeLoadProfile value="' + myString + '" ' + str(int(dt)))

        elif model.results["carrier_prod"].sel(loc_tech_carriers_prod='location::pv::electricity').sel(timesteps=obj.coords["timesteps"].values).values == 0 and abs(obj.values) > 0:

            schedulerTuple = {"parameter":[{'item':'Mode', 'type':'String', 'value':'load'}, {'item':'Out', 'type': 'Number','value':0},{'item':'OutLimitMax', 'value':0}, {'item':'OutLimitMin', 'value':0}, {'item':'In', 'value':7200}, {'item':'InLimitMax', 'value': 3680}, {'item':'InLimitMin', 'value':3680}]}
            myString = json.dumps(schedulerTuple).replace('"','\\\"')
            dt = time.mktime(datetime.datetime.strptime(str(obj.coords["timesteps"].values)[0:19],'%Y-%m-%dT%H:%M:%S').timetuple()) + tzOffset
            r = requests.post(url, headers=headers, data='mqtt_topic_ems_battery_activeLoadProfile value="' + myString + '" ' + str(int(dt)))

        elif model.results["carrier_prod"].sel(loc_tech_carriers_prod='location::pv::electricity').sel(timesteps=obj.coords["timesteps"].values).values < 2000 and abs(obj.values) >= 0:
            print("<2000 - keine PV Produktion angesagt, zu Sicherheit alles einsammeln")

            schedulerTuple = {"parameter":[{'item':'Mode', 'type':'String', 'value':'auto_load'}, {'item':'Out', 'type': 'Number','value':0},{'item':'OutLimitMax', 'value':3680}, {'item':'OutLimitMin', 'value':0}, {'item':'In', 'value':0}, {'item':'InLimitMax', 'value': 3685}, {'item':'InLimitMin', 'value':300}]}
            myString = json.dumps(schedulerTuple).replace('"','\\\"')
            dt = time.mktime(datetime.datetime.strptime(str(obj.coords["timesteps"].values)[0:19],'%Y-%m-%dT%H:%M:%S').timetuple()) + tzOffset
            r = requests.post(url, headers=headers, data='mqtt_topic_ems_battery_activeLoadProfile value="' + myString + '" ' + str(int(dt)))

        else:
            schedulerTuple = {"parameter":[{'item':'Mode', 'type':'String', 'value':'auto_load'}, {'item':'Out', 'type': 'Number','value':0},{'item':'OutLimitMax', 'value':3689}, {'item':'OutLimitMin', 'value':0}, {'item':'In', 'value':0}, {'item':'InLimitMax', 'value': int(abs(obj.values))}, {'item':'InLimitMin', 'value':300}]}
            myString = json.dumps(schedulerTuple).replace('"','\\\"')
            dt = time.mktime(datetime.datetime.strptime(str(obj.coords["timesteps"].values)[0:19],'%Y-%m-%dT%H:%M:%S').timetuple()) + tzOffset
            r = requests.post(url, headers=headers, data='mqtt_topic_ems_battery_activeLoadProfile value="' + myString + '" ' + str(int(dt)))

if 1==1:
    template_path = os.path.join(
            os.path.dirname(__file__), "plots_template.html"
        )

    with open(template_path, "r") as f:
            html_template = jinja2.Template(f.read())

    html = html_template.render(
            model_name=' ' + model.model_config["name"] + ' - ' + outputDir + ' ',
            top=model.plot.timeseries(html_only=True),
            bottom_left=model.plot.timeseries(html_only=True),
        )

    with open("./" + outputDir + "/timeseries.html", "w") as f:
        f.write(html)



if 1==0:
    scenario = "mit_netzflex"
    model = calliope.Model(
        'model.yaml',
        override_dict={'model.subset_time': [dtStart.strftime("%Y-%m-%d %H:00"),dtEnd.strftime("%Y-%m-%d 00:00")], 'run.solver': 'glpk',
                        'techs.battery.constraints.storage_initial': data/100 },
        scenario=scenario
    )

    model.run()
    outputDirScenario = outputDir + '-' + scenario

    if 1==1:
        model.to_csv(outputDirScenario)

    template_path = os.path.join(
            os.path.dirname(__file__), "plots_template.html"
        )

    with open(template_path, "r") as f:
            html_template = jinja2.Template(f.read())

    html = html_template.render(
            model_name=' ' + model.model_config["name"] + ' - ' + outputDirScenario + ' ',
            calliope_version=model._model_data.attrs["calliope_version"],
            top=model.plot.timeseries(html_only=True),
            bottom_left=model.plot.timeseries(html_only=True),
        )

    with open("./" + outputDirScenario + "/timeseries.html", "w") as f:
        f.write(html)
