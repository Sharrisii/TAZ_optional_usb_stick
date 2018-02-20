#!/usr/bin/python
#
# Retrieves and displays cryptocurrency rates info from coinapi.io
# Script made by Brian Peregrine, under GPL v3 license.
#
# Program code:
# Retrieve coinapi.io API key
import ~/api_keys/cryptocurrency_rates_api_key.sh

# Do the "current exchangerate" info request for Bitcoin (XBT), with the imported API key, and store the data temporarily
import urllib2
import json
f = urllib2.urlopen('/v1/exchangerate/{asset1}/{asset2}?time={time} endpoint.') 
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string) 

# Do the "historical exchangerate" info request for Bitcoin (XBT), with the imported API key, and store the data temporarily
clock day - 1 day = yesterday
make yesterday's date into a timestamp
import timestamp into the historical exchangerate request url and do the request
store output value under the name "currency_rate_yesterday"

Calculate the increase of the currency rate compared to yesterday's rate 
currency rate_increase_percent_compared_to_yesterdays_rate = (rate today - rate yesterday ) / rate yesterday = difference in %
compared to yesterday's rate

# Display the info
print "currency_name: currency_rate_today (currency rate_increase_percent_compared_to_yesterdays_rate %)"
parsed_json ?, parsed_json ?)
f.close()

Do the same requests for:
Litecoin (LTC), Ripple (XRP), Ethereum (ETH), EOS (EOS), Stratis (STRAT), ...
