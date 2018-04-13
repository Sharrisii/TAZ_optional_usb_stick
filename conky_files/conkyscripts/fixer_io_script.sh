#!/usr/bin/python
#
# Retrieves and displays currency rates info from fixer.io
# Script made by Brian Peregrine, under GPL v3 license.
#
# Program code:
import urllib2
import json
import time

# Retrieve fixer.io API key and store temporarily under the name "API_key_fixer"
API_key_fixer = "insert_API_key_here"

# Define additional parameters
#timestamp format example: 2018-02-23
from datetime import datetime, timedelta
clock = datetime.now()
timestamp_today = str(str(clock.year) + ('-' if len(str(clock.month)) > 1 else '-0') + str(clock.month) + ('-' if len(str(clock.day)) > 1 else '-0') + str(clock.day))
clock = datetime.now() - timedelta(days=1)
timestamp_yesterday = str(str(clock.year) + ('-' if len(str(clock.month)) > 1 else '-0') + str(clock.month) + ('-' if len(str(clock.day)) > 1 else '-0') + str(clock.day))

while True:
#------------------------------------------ CNYEUR ------------------------------------------
# Do the "current exchangerate" info request for CNY, with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_cnyeur"
f = urllib2.urlopen('http://data.fixer.io/api/' + timestamp_today + ?access_key:' + API_key_fixer + '?symbols=CNY?base=EUR')
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_today_cnyeur = round(1 / parsed_json['rates']['CNY'], 2)

# Do the "historical exchangerate" info request for CNY, with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_cnyeur"
f = urllib2.urlopen('http://data.fixer.io/api/' + timestamp_yesterday + ?access_key:' + API_key_fixer + '?symbols=CNY?base=EUR')
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_yesterday_cnyeur = round(1 / parsed_json['rates']['CNY'], 2)

# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "cnyeur_rate_increase_percent_compared_to_yesterdays_rate"
cnyeur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_cnyeur - currency_rate_yesterday_cnyeur ) / currency_rate_yesterday_cnyeur

# Display the info
print "CNYEUR: " + str(currency_rate_today_cnyeur) + "(" + str(cnyeur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()

#------------------------------------------ INREUR ------------------------------------------
# Do the "current exchangerate" info request for INR, with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_inreur"
f = urllib2.urlopen('http://data.fixer.io/api/' + timestamp_today + ?access_key:' + API_key_fixer + '?symbols=INR?base=EUR')
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_today_inreur = round(1 / parsed_json['rates']['INR'], 2)

# Do the "historical exchangerate" info request for INR, with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_inreur"
f = urllib2.urlopen('http://data.fixer.io/api/' + timestamp_yesterday + ?access_key:' + API_key_fixer + '?symbols=INR?base=EUR')
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_yesterday_inreur = round(1 / parsed_json['rates']['INR'], 2)

# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "inreur_rate_increase_percent_compared_to_yesterdays_rate"
inreur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_inreur - currency_rate_yesterday_inreur ) / currency_rate_yesterday_inreur

# Display the info
print "INREUR: " + str(currency_rate_today_inreur) + "(" + str(inreur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()

#------------------------------------------ USDEUR ------------------------------------------
# Do the "current exchangerate" info request for USD, with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_usdeur"
f = urllib2.urlopen('http://data.fixer.io/api/' + timestamp_today + ?access_key:' + API_key_fixer + '?symbols=USD?base=EUR')
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_today_usdeur = round(1 / parsed_json['rates']['USD'], 2)

# Do the "historical exchangerate" info request for USD, with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_usdeur"
f = urllib2.urlopen('http://data.fixer.io/api/' + timestamp_yesterday + ?access_key:' + API_key_fixer + '?symbols=USD?base=EUR')
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_yesterday_usdeur = round(1 / parsed_json['rates']['USD'], 2)

# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "usdeur_rate_increase_percent_compared_to_yesterdays_rate"
usdeur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_usdeur - currency_rate_yesterday_usdeur ) / currency_rate_yesterday_usdeur

# Display the info
print "USDEUR: " + str(currency_rate_today_usdeur) + "(" + str(usdeur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()

#------------------------------------------ RUBEUR ------------------------------------------
# Do the "current exchangerate" info request for RUB, with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_rubeur"
f = urllib2.urlopen('http://data.fixer.io/api/' + timestamp_today + ?access_key:' + API_key_fixer + '?symbols=RUB?base=EUR')
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_today_rubeur = round(1 / parsed_json['rates']['RUB'], 2)

# Do the "historical exchangerate" info request for RUB, with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_rubeur"
f = urllib2.urlopen('http://data.fixer.io/api/' + timestamp_yesterday + ?access_key:' + API_key_fixer + '?symbols=RUB?base=EUR')
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_yesterday_rubeur = round(1 / parsed_json['rates']['RUB'], 2)

# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "rubeur_rate_increase_percent_compared_to_yesterdays_rate"
rubeur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_rubeur - currency_rate_yesterday_rubeur ) / currency_rate_yesterday_rubeur

# Display the info
print "RUBEUR: " + str(currency_rate_today_rubeur) + "(" + str(rubeur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()

#------------------------------------------ MXNEUR ------------------------------------------
# Do the "current exchangerate" info request for MXN, with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_mxneur"
f = urllib2.urlopen('http://data.fixer.io/api/' + timestamp_today + ?access_key:' + API_key_fixer + '?symbols=MXN?base=EUR')
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_today_mxneur = round(1 / parsed_json['rates']['MXN'], 2)

# Do the "historical exchangerate" info request for MXN, with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_mxneur"
f = urllib2.urlopen('http://data.fixer.io/api/' + timestamp_yesterday + ?access_key:' + API_key_fixer + '?symbols=MXN?base=EUR')
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_yesterday_mxneur = round(1 / parsed_json['rates']['MXN'], 2)

# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "inreur_rate_increase_percent_compared_to_yesterdays_rate"
mxneur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_mxneur - currency_rate_yesterday_mxneur ) / currency_rate_yesterday_mxneur

# Display the info
print "MXNEUR: " + str(currency_rate_today_mxneur) + "(" + str(mxneur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()

#------------------------------------------ JPYEUR ------------------------------------------
# Do the "current exchangerate" info request for JPY, with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_jpyeur"
f = urllib2.urlopen('http://data.fixer.io/api/' + timestamp_today + ?access_key:' + API_key_fixer + '?symbols=JPY?base=EUR')
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_today_jpyeur = round(1 / parsed_json['rates']['JPY'], 2)

# Do the "historical exchangerate" info request for JPY, with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_jpyeur"
f = urllib2.urlopen('http://data.fixer.io/api/' + timestamp_yesterday + ?access_key:' + API_key_fixer + '?symbols=JPY?base=EUR')
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_yesterday_jpyeur = round(1 / parsed_json['rates']['JPY'], 2)

# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "jpyeur_rate_increase_percent_compared_to_yesterdays_rate"
jpyeur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_jpyeur - currency_rate_yesterday_jpyeur ) / currency_rate_yesterday_jpyeur

# Display the info
print "JPYEUR: " + str(currency_rate_today_jpyeur) + "(" + str(jpyeur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()

time.sleep(3600)
