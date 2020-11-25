import requests
import json
import os
import time
import datetime
import pytz
import pandas
import calliope

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
data = {'q': "SELECT * FROM (SELECT mean(\"value\") FROM \"solcast\" WHERE (\"product\" = \'pvforecast\' AND \"version\" = \'latest\') AND time >= " + str(int(time.mktime(datetime.date.today().timetuple())*1000*1000*1000) + tzOffset*1000*1000*1000) + " and time <= " + str(int(time.mktime(datetime.date.today().timetuple()) + 24*60*60)*1000*1000*1000 + tzOffset*1000*1000*1000) + " GROUP BY time(15m) fill(previous)) "}
headers = {}

r = requests.post(url, headers=headers, data=data)
data = json.loads(r.text)

aa = pandas.DataFrame(data["results"][0]["series"][0]["values"])

for i, row in aa.iterrows():
    aa.at[i,0] = datetime.datetime.strptime(row[0],'%Y-%m-%dT%H:%M:%SZ')

aa.to_csv('./timeseries_data/pv-prognose.csv', index=False, index_label="asdas", header=["Time","PV-Prognose in kWh"])
#PV-Prognose


#Prognose Demand
index=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23]

print(datetime.datetime.today().strftime("%Y-%m-%d %H:%M:%S"))

demandTemplate = pandas.DataFrame({'Demand': [-500,-500,-500,-500,-500,-500,-500,-500,-1500,-500,-500,-500,-500,-2500,-500,-500,-500,-500,-500,-500,-500,-500,-500,-500]},index=index)

demandTimeSeries = pandas.Series(pandas.date_range(datetime.datetime.today().strftime("%Y-%m-%d"), periods=24, freq='H'), index=index)

demand = pandas.concat([demandTimeSeries, demandTemplate], axis=1, join='inner')
print(demand)

demand.to_csv('./timeseries_data/demand_node1.csv', index=False, index_label="asdas", header=["Time","Demand"])
#Prognose Demand

#'model.subset_time': ['2005-01-01', '2005-01-31']
#model = calliope.Model(
#    'model.yaml',
#    override_dict={'run.solver': 'glpk'}
#)
#solver: glpk


#'model.subset_time': ['2005-01-01', '2005-01-31']
model = calliope.Model(
    'model.yaml',
#    override_dict={'model.subset_time': ['2020-11-23'], 'run.solver': 'glpk'}
    override_dict={'model.subset_time': '2020-11-23', 'run.solver': 'glpk'}
)

model.run()
model.to_csv(datetime.datetime.today().strftime("%Y%m%d_%H%M%S"))
#model.plot.capacity()
model.plot.timeseries()
#model.plot.summary(to_file="summary.html")





