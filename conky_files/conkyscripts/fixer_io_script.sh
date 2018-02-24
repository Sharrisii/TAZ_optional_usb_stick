#!/usr/bin/python
#
# Retrieves and displays currency rates info from fixer.io
# Script made by Brian Peregrine, under GPL v3 license.
#
# no api key needed, if a key becomes needed later on, retrieve key from currency_rates_api_key.sh on
# optional USB stick and store under [API_key_fixer] to be called upon in the HTTP requests
#
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

# Do the "current exchangerate" info request for CNY, and store the output data 
# temporarily under the name "[currency_rate_today_cnyeur]"
f = urllib2.urlopen('http://api.fixer.io/' + timestamp_today + '?symbols=CNY?base=EUR')
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string)
currency_rate_today_cnyeur = parsed_json['rates']['CNY']

# Do the "historical exchangerate" info request for CNY, and store the output data 
# temporarily under the name "[currency_rate_today_cnyeur]"
f = urllib2.urlopen('http://api.fixer.io/' + timestamp_yesterday + '?symbols=CNY?base=EUR')
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string)
currency_rate_yesterday_cnyeur = parsed_json['rates']['CNY']

# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "[cnyeur_rate_increase_percent_compared_to_yesterdays_rate]"
cnyeur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_cnyeur - currency_rate_yesterday_cnyeur ) / currency_rate_yesterday_cnyeur

# Display the info
print "CNYEUR: " + str(currency_rate_today_cnyeur) + "(" + str(cnyeur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()



Do the same requests for:
inreur
usdeur
rubeur
mxneur
jpyeur
