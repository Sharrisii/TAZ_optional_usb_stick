#!/usr/bin/python
#
# Retrieves and displays currency rates info from fixer.io
# Script made by Brian Peregrine, under GPL v3 license.
#
# no api key needed, if a key becomes needed later on, retrieve key from currency_rates_api_key.sh on
# optional USB stick and store under [API_key_fixer] to be called upon in the HTTP requests
#
# Program code:

# Define additional parameters
#timestamp format example: 2018-02-23
[timestamp_today]] = [clock.year]-[clock.month]-[clock.day]
[timestamp_yesterday] = [clock.year]-[clock.month]-([clock.day]-1)

# Do the "current exchangerate" info request for CNY, and store the output data 
# temporarily under the name "[currency_rate_today_cnyeur]"
import urllib2
import json
f = urllib2.urlopen(http://api.fixer.io/[timestamp_today]?symbols=CNY?base=EUR') 
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string)
output value recall (echo?)= [currency_rate_today_cnyeur]

# Do the "historical exchangerate" info request for CNY, and store the output data 
# temporarily under the name "[currency_rate_today_cnyeur]"
import urllib2
import json
f = urllib2.urlopen(http://api.fixer.io/[timestamp_today]?symbols=CNY?base=EUR') 
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string)
output value recall (echo?)= [currency_rate_yesterday_cnyeur]

# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "[cnyeur_rate_increase_percent_compared_to_yesterdays_rate]"
[cnyeur_rate_increase_percent_compared_to_yesterdays_rate] = ( [currency_rate_today_cnyeur] - [currency_rate_yesterday_cnyeur] ) / [currency_rate_yesterday_cnyeur]

# Display the info
print "CNYEUR: [currency_rate_today_cnyeur] ([cnyeur_rate_increase_percent_compared_to_yesterdays_rate] %)"
parsed_json ?, parsed_json ?)
f.close()

Do the same requests for:
inreur
usdeur
rubeur
mxneur
jpyeur
