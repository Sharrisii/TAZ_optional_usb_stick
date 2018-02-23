#!/usr/bin/python
#
# Retrieves and displays cryptocurrency rates info from coinapi.io
# Script made by Brian Peregrine, under GPL v3 license.
# Docs for coinapi are at https://docs.coinapi.io/
#
# Program code:
# Retrieve coinapi.io API key and store temporarily under the name "[API_key_coinapi]"
import ~/api_keys/cryptocurrency_rates_api_key.sh
output value recall (echo ?) = [API_key_coinapi]

# Define additional parameters
#timestamp format example: 2018-02-23T15:45:56.0000000Z
[timestamp_today]] = [clock.year]-[clock.month]-[clock.day]T[clock.hour]:[clock.minute]:[clock.second].0000000Z
[timestamp_yesterday] = [clock.year]-[clock.month]-([clock.day]-1)T[clock.hour]:[clock.minute]:[clock.second].0000000Z

# Do the "current exchangerate" info request for Bitcoin (XBT), with the imported API key, and store the output data 
# temporarily under the name "[currency_rate_today_xbteur]"
import urllib2
import json
f = urllib2.urlopen(https://rest.coinapi.io/v1/exchangerate/XBT/EUR?apikey=[API_key_coinapi]?time=[timestamp_today]') 
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string) 

# Do the "historical exchangerate" info request for Bitcoin (XBT), with the imported API key, and store the output data 
# temporarily under the name "[currency_rate_yesterday_xbteur]"
import urllib2
import json
f = urllib2.urlopen(https://rest.coinapi.io/v1/exchangerate/XBT/EUR?apikey=[API_key_coinapi]?time=[timestamp_yesterday]') 
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string) 

# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "[xbteur_rate_increase_percent_compared_to_yesterdays_rate]"
[xbteur_rate_increase_percent_compared_to_yesterdays_rate] = ( [currency_rate_today_xbteur] - [currency_rate_yesterday_xbteur] ) / [currency_rate_yesterday_xbteur]

# Display the info
print "XBTEUR: [currency_rate_today_xbteur] ([xbteur_rate_increase_percent_compared_to_yesterdays_rate] %)"
parsed_json ?, parsed_json ?)
f.close()

Do the same requests for:
Litecoin (LTC), Ripple (XRP), Ethereum (ETH), EOS (EOS), Stratis (STRAT), ...
