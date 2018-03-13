#!/usr/bin/python
#
# Retrieves and displays comodity rates info from quandl.com
# Script made by Brian Peregrine, under GPL v3 license.
# Docs for quandl are at https://docs.quandl.com/docs/
# For a list of what comodity rates are available see https://blog.quandl.com/api-for-commodity-data

# Get your API key via https://www.quandl.com/?modal=register
# Then, place your API key in this script. The program will do the rest.
# If you want info for currencies, edit this script directly

# Program code:
# Retrieve coinapi.io API key and store temporarily under the name "API_key_coinapi"
API_key_quandl = "insert_API_key_here"

# Define additional parameters
#timestamp format example: 2018-02-23T15:45:56.0000000Z
from datetime import datetime, timedelta
clock = datetime.utcnow()
timestamp_today =     str(str(clock.year) + ('-' if len(str(clock.month)) > 1 else '-0') + str(clock.month) + ('-' if len(str(clock.day)) > 1 else '-0') + str(clock.day)) + 'T' + ('0' if len(str(clock.hour)) < 2 else '') + str(clock.hour) + ':' + ('0' if len(str(clock.minute)) < 2 else '') + str(clock.minute) + ':' + ('0' if len(str(clock.second)) < 2 else '') + str(clock.second) + 'Z'
clock = datetime.utcnow() - timedelta(days=1)
timestamp_yesterday = str(str(clock.year) + ('-' if len(str(clock.month)) > 1 else '-0') + str(clock.month) + ('-' if len(str(clock.day)) > 1 else '-0') + str(clock.day)) + 'T' + ('0' if len(str(clock.hour)) < 2 else '') + str(clock.hour) + ':' + ('0' if len(str(clock.minute)) < 2 else '') + str(clock.minute) + ':' + ('0' if len(str(clock.second)) < 2 else '') + str(clock.second) + 'Z'

#------------------------------------------ Gold ------------------------------------------
# Do the "current exchangerate" info request for gold (WORLDBANK/WLD_GOLD), with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_xaueur"
f = urllib2.urlopen('https://rest.coinapi.io/v1/exchangerate/BTC/EUR?apikey=' + API_key_coinapi + '&time=' + timestamp_today)
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_today_xaueur = parsed_json['rate']

# Do the "historical exchangerate" info request for gold (WORLDBANK/WLD_GOLD), with the imported API key, and store the output data 
# temporarily under the name "currency_rate_yesterday_xaueur"
f = urllib2.urlopen('https://rest.coinapi.io/v1/exchangerate/BTC/EUR?apikey=' + API_key_coinapi + '&time=' + timestamp_yesterday)
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_yesterday_xaueur = parsed_json['rate']
                    
# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "[xaueur_rate_increase_percent_compared_to_yesterdays_rate]"
xaueur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_xaueur - currency_rate_yesterday_xaueur ) / currency_rate_yesterday_xaueur

# Display the info
print "XAUEUR: " + str(currency_rate_today_xaueur) + "(" + str(xaueur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()

#------------------------------------------ Silver ------------------------------------------
# Do the "current exchangerate" info request for silver (WORLDBANK/WLD_SILVER), with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_xageur"
f = urllib2.urlopen('https://rest.coinapi.io/v1/exchangerate/LTC/EUR?apikey=' + API_key_coinapi + '&time=' + timestamp_today)
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_today_xageur = parsed_json['rate']

# Do the "historical exchangerate" info request for silver (WORLDBANK/WLD_SILVER), with the imported API key, and store the output data 
# temporarily under the name "currency_rate_yesterday_xageur"
f = urllib2.urlopen('https://rest.coinapi.io/v1/exchangerate/LTC/EUR?apikey=' + API_key_coinapi + '&time=' + timestamp_yesterday)
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_yesterday_xageur = parsed_json['rate']
                    
# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "[xageur_rate_increase_percent_compared_to_yesterdays_rate]"
xageur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_xageur - currency_rate_yesterday_xageur ) / currency_rate_yesterday_xageur

# Display the info
print "XAGEUR: " + str(currency_rate_today_xageur) + "(" + str(xageur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()
