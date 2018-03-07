#!/usr/bin/python
#
# Retrieves and displays currency rates info from fixer.io
# Script made by Brian Peregrine, under GPL v3 license.
#
# no api key needed, if a key becomes needed later on, it can be added later-on
#
# Program code:
import urllib2
import json

# Define additional parameters
#timestamp format example: 2018-02-23
from datetime import datetime, timedelta
clock = datetime.now()
timestamp_today = str(str(clock.year) + ('-' if len(str(clock.month)) > 1 else '-0') + str(clock.month) + ('-' if len(str(clock.day)) > 1 else '-0') + str(clock.day))
clock = datetime.now() - timedelta(days=1)
timestamp_yesterday = str(str(clock.year) + ('-' if len(str(clock.month)) > 1 else '-0') + str(clock.month) + ('-' if len(str(clock.day)) > 1 else '-0') + str(clock.day))

#------------------------------------------ CNYEUR ------------------------------------------
# Do the "current exchangerate" info request for CNY, and store the output data 
# temporarily under the name "currency_rate_today_cnyeur"
f = urllib2.urlopen('http://api.fixer.io/' + timestamp_today + '?symbols=CNY?base=EUR')
parsed_json = json.loads(json_string)
currency_rate_today_cnyeur = parsed_json['rates']['CNY']

# Do the "historical exchangerate" info request for CNY, and store the output data 
# temporarily under the name "currency_rate_today_cnyeur"
f = urllib2.urlopen('http://api.fixer.io/' + timestamp_yesterday + '?symbols=CNY?base=EUR')
parsed_json = json.loads(json_string)
currency_rate_yesterday_cnyeur = parsed_json['rates']['CNY']

# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "cnyeur_rate_increase_percent_compared_to_yesterdays_rate"
cnyeur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_cnyeur - currency_rate_yesterday_cnyeur ) / currency_rate_yesterday_cnyeur

# Display the info
print "CNYEUR: " + str(currency_rate_today_cnyeur) + "(" + str(cnyeur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()

#------------------------------------------ INREUR ------------------------------------------
# Do the "current exchangerate" info request for INR, and store the output data 
# temporarily under the name "currency_rate_today_inreur"
f = urllib2.urlopen('http://api.fixer.io/' + timestamp_today + '?symbols=INR?base=EUR')
parsed_json = json.loads(json_string)
currency_rate_today_inreur = parsed_json['rates']['INR']

# Do the "historical exchangerate" info request for INR, and store the output data 
# temporarily under the name "currency_rate_today_inreur"
f = urllib2.urlopen('http://api.fixer.io/' + timestamp_yesterday + '?symbols=INR?base=EUR')
parsed_json = json.loads(json_string)
currency_rate_yesterday_inreur = parsed_json['rates']['INR']

# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "inreur_rate_increase_percent_compared_to_yesterdays_rate"
inreur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_inreur - currency_rate_yesterday_inreur ) / currency_rate_yesterday_inreur

# Display the info
print "INREUR: " + str(currency_rate_today_inreur) + "(" + str(inreur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()

#------------------------------------------ USDEUR ------------------------------------------
# Do the "current exchangerate" info request for USD, and store the output data 
# temporarily under the name "currency_rate_today_usdeur"
f = urllib2.urlopen('http://api.fixer.io/' + timestamp_today + '?symbols=USD?base=EUR')
parsed_json = json.loads(json_string)
currency_rate_today_usdeur = parsed_json['rates']['USD']

# Do the "historical exchangerate" info request for USD, and store the output data 
# temporarily under the name "currency_rate_today_usdeur"
f = urllib2.urlopen('http://api.fixer.io/' + timestamp_yesterday + '?symbols=USD?base=EUR')
parsed_json = json.loads(json_string)
currency_rate_yesterday_usdeur = parsed_json['rates']['USD']

# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "usdeur_rate_increase_percent_compared_to_yesterdays_rate"
usdeur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_usdeur - currency_rate_yesterday_usdeur ) / currency_rate_yesterday_usdeur

# Display the info
print "USDEUR: " + str(currency_rate_today_usdeur) + "(" + str(usdeur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()

#------------------------------------------ RUBEUR ------------------------------------------
# Do the "current exchangerate" info request for RUB, and store the output data 
# temporarily under the name "currency_rate_today_rubeur"
f = urllib2.urlopen('http://api.fixer.io/' + timestamp_today + '?symbols=RUB?base=EUR')
parsed_json = json.loads(json_string)
currency_rate_today_rubeur = parsed_json['rates']['RUB']

# Do the "historical exchangerate" info request for RUB, and store the output data 
# temporarily under the name "currency_rate_today_rubeur"
f = urllib2.urlopen('http://api.fixer.io/' + timestamp_yesterday + '?symbols=RUB?base=EUR')
parsed_json = json.loads(json_string)
currency_rate_yesterday_rubeur = parsed_json['rates']['RUB']

# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "rubeur_rate_increase_percent_compared_to_yesterdays_rate"
rubeur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_rubeur - currency_rate_yesterday_rubeur ) / currency_rate_yesterday_rubeur

# Display the info
print "RUBEUR: " + str(currency_rate_today_rubeur) + "(" + str(rubeur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()

#------------------------------------------ MXNEUR ------------------------------------------
# Do the "current exchangerate" info request for MXN, and store the output data 
# temporarily under the name "currency_rate_today_mxneur"
f = urllib2.urlopen('http://api.fixer.io/' + timestamp_today + '?symbols=MXN?base=EUR')
parsed_json = json.loads(json_string)
currency_rate_today_mxneur = parsed_json['rates']['MXN']

# Do the "historical exchangerate" info request for MXN, and store the output data 
# temporarily under the name "currency_rate_today_mxneur"
f = urllib2.urlopen('http://api.fixer.io/' + timestamp_yesterday + '?symbols=MXN?base=EUR')
parsed_json = json.loads(json_string)
currency_rate_yesterday_mxneur = parsed_json['rates']['MXN']

# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "inreur_rate_increase_percent_compared_to_yesterdays_rate"
mxneur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_mxneur - currency_rate_yesterday_mxneur ) / currency_rate_yesterday_mxneur

# Display the info
print "MXNEUR: " + str(currency_rate_today_mxneur) + "(" + str(mxneur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()

#------------------------------------------ JPYEUR ------------------------------------------
# Do the "current exchangerate" info request for JPY, and store the output data 
# temporarily under the name "currency_rate_today_jpyeur"
f = urllib2.urlopen('http://api.fixer.io/' + timestamp_today + '?symbols=JPY?base=EUR')
parsed_json = json.loads(json_string)
currency_rate_today_jpyeur = parsed_json['rates']['JPY']

# Do the "historical exchangerate" info request for JPY, and store the output data 
# temporarily under the name "currency_rate_today_jpyeur"
f = urllib2.urlopen('http://api.fixer.io/' + timestamp_yesterday + '?symbols=JPY?base=EUR')
parsed_json = json.loads(json_string)
currency_rate_yesterday_jpyeur = parsed_json['rates']['JPY']

# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "jpyeur_rate_increase_percent_compared_to_yesterdays_rate"
jpyeur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_jpyeur - currency_rate_yesterday_jpyeur ) / currency_rate_yesterday_jpyeur

# Display the info
print "JPYEUR: " + str(currency_rate_today_jpyeur) + "(" + str(jpyeur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()
