#!/usr/bin/python
#
# Retrieves and displays cryptocurrency rates info from coinapi.io
# Script made by Brian Peregrine, under GPL v3 license.
# Docs for coinapi are at https://docs.coinapi.io/

# Get your API key via https://www.coinapi.io/pricing?apikey
# Then, place your API key in this script. The program will do the rest.
# If you want info for currencies, edit this script directly

# Program code:
# Retrieve coinapi.io API key and store temporarily under the name "[API_key_coinapi]"
API_key_coinapi = "insert_API_key_here"

# Define additional parameters
#timestamp format example: 2018-02-23T15:45:56.0000000Z
[timestamp_today]] = [clock.year]-[clock.month]-[clock.day]T[clock.hour]:[clock.minute]:[clock.second].0000000Z
[timestamp_yesterday] = [clock.year]-[clock.month]-([clock.day]-1)T[clock.hour]:[clock.minute]:[clock.second].0000000Z

# Do the "current exchangerate" info request for Bitcoin (XBT), with the imported API key, and store the output data 
# temporarily under the name "[currency_rate_today_xbteur]"
import urllib2
import json
f = urllib2.urlopen(https://rest.coinapi.io/v1/exchangerate/XBT/EUR?apikey=[API_key_coinapi]?time=[timestamp_today]') 
parsed_json = json.loads(json_string) 
output value recall (echo?)= [currency_rate_today_xbteur]

# Do the "historical exchangerate" info request for Bitcoin (XBT), with the imported API key, and store the output data 
# temporarily under the name "[currency_rate_yesterday_xbteur]"
import urllib2
import json
f = urllib2.urlopen(https://rest.coinapi.io/v1/exchangerate/XBT/EUR?apikey=[API_key_coinapi]?time=[timestamp_yesterday]') 
parsed_json = json.loads(json_string) 
output value recall (echo?)= [currency_rate_yesterday_xbteur]
                    
# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "[xbteur_rate_increase_percent_compared_to_yesterdays_rate]"
[xbteur_rate_increase_percent_compared_to_yesterdays_rate] = ( [currency_rate_today_xbteur] - [currency_rate_yesterday_xbteur] ) / [currency_rate_yesterday_xbteur]

# Display the info
print "XBTEUR: [currency_rate_today_xbteur] ([xbteur_rate_increase_percent_compared_to_yesterdays_rate] %)"
parsed_json ?, parsed_json ?)
f.close()

Do the same requests for:
Litecoin (LTC), Ripple (XRP), Ethereum (ETH), EOS (EOS), Stratis (STRAT), ...
