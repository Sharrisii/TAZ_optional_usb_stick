#!/usr/bin/python
#
# Retrieves and displays cryptocurrency rates info from coinapi.io
# Script made by Brian Peregrine, under GPL v3 license.
# Docs for coinapi are at https://docs.coinapi.io/

# Get your API key via https://www.coinapi.io/pricing?apikey
# Then, place your API key in this script. The program will do the rest.
# If you want info for currencies, edit this script directly

# Program code:
# Retrieve coinapi.io API key and store temporarily under the name "API_key_coinapi"
API_key_coinapi = "insert_API_key_here"

# Define additional parameters
#timestamp format example: 2018-02-23T15:45:56.0000000Z
from datetime import datetime, timedelta
clock = datetime.utcnow()
timestamp_today =     str(str(clock.year) + ('-' if len(str(clock.month)) > 1 else '-0') + str(clock.month) + ('-' if len(str(clock.day)) > 1 else '-0') + str(clock.day)) + 'T' + ('0' if len(str(clock.hour)) < 2 else '') + str(clock.hour) + ':' + ('0' if len(str(clock.minute)) < 2 else '') + str(clock.minute) + ':' + ('0' if len(str(clock.second)) < 2 else '') + str(clock.second) + 'Z'
clock = datetime.utcnow() - timedelta(days=1)
timestamp_yesterday = str(str(clock.year) + ('-' if len(str(clock.month)) > 1 else '-0') + str(clock.month) + ('-' if len(str(clock.day)) > 1 else '-0') + str(clock.day)) + 'T' + ('0' if len(str(clock.hour)) < 2 else '') + str(clock.hour) + ':' + ('0' if len(str(clock.minute)) < 2 else '') + str(clock.minute) + ':' + ('0' if len(str(clock.second)) < 2 else '') + str(clock.second) + 'Z'

#------------------------------------------ BTCEUR ------------------------------------------
# Do the "current exchangerate" info request for Bitcoin (BTC), with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_btceur"
f = urllib2.urlopen('https://rest.coinapi.io/v1/exchangerate/BTC/EUR?apikey=' + API_key_coinapi + '&time=' + timestamp_today)
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_today_btceur = parsed_json['rate']

# Do the "historical exchangerate" info request for Bitcoin (BTC), with the imported API key, and store the output data 
# temporarily under the name "currency_rate_yesterday_btceur"
f = urllib2.urlopen('https://rest.coinapi.io/v1/exchangerate/BTC/EUR?apikey=' + API_key_coinapi + '&time=' + timestamp_yesterday)
parsed_json = json.loads(json_string)
currency_rate_yesterday_btceur = parsed_json['rate']
                    
# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "[btceur_rate_increase_percent_compared_to_yesterdays_rate]"
btceur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_btceur - currency_rate_yesterday_btceur ) / currency_rate_yesterday_btceur

# Display the info
print "BTCEUR: " + str(currency_rate_today_btceur) + "(" + str(btceur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()

#------------------------------------------ Litecoin ------------------------------------------
# Do the "current exchangerate" info request for Litecoin (LTC), with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_ltceur"
f = urllib2.urlopen('https://rest.coinapi.io/v1/exchangerate/LTC/EUR?apikey=' + API_key_coinapi + '&time=' + timestamp_today)
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_today_ltceur = parsed_json['rate']

# Do the "historical exchangerate" info request for Litecoin (LTC), with the imported API key, and store the output data 
# temporarily under the name "currency_rate_yesterday_ltceur"
f = urllib2.urlopen('https://rest.coinapi.io/v1/exchangerate/LTC/EUR?apikey=' + API_key_coinapi + '&time=' + timestamp_yesterday)
parsed_json = json.loads(json_string)
currency_rate_yesterday_ltceur = parsed_json['rate']
                    
# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "[ltceur_rate_increase_percent_compared_to_yesterdays_rate]"
ltceur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_ltceur - currency_rate_yesterday_ltceur ) / currency_rate_yesterday_ltceur

# Display the info
print "LTCEUR: " + str(currency_rate_today_ltceur) + "(" + str(ltceur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()

#------------------------------------------ Ethereum ------------------------------------------
# Do the "current exchangerate" info request for Bitcoin (BTC), with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_btceur"
f = urllib2.urlopen('https://rest.coinapi.io/v1/exchangerate/BTC/EUR?apikey=' + API_key_coinapi + '&time=' + timestamp_today)
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_today_btceur = parsed_json['rate']

# Do the "historical exchangerate" info request for Bitcoin (BTC), with the imported API key, and store the output data 
# temporarily under the name "currency_rate_yesterday_btceur"
f = urllib2.urlopen('https://rest.coinapi.io/v1/exchangerate/BTC/EUR?apikey=' + API_key_coinapi + '&time=' + timestamp_yesterday)
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string)
currency_rate_yesterday_btceur = parsed_json['rate']
                    
# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "[btceur_rate_increase_percent_compared_to_yesterdays_rate]"
btceur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_btceur - currency_rate_yesterday_btceur ) / currency_rate_yesterday_btceur

# Display the info
print "BTCEUR: " + str(currency_rate_today_btceur) + "(" + str(btceur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()

#------------------------------------------ Ripple ------------------------------------------
# Do the "current exchangerate" info request for Bitcoin (BTC), with the imported API key, and store the output data 
# temporarily under the name "currency_rate_today_btceur"
f = urllib2.urlopen('https://rest.coinapi.io/v1/exchangerate/BTC/EUR?apikey=' + API_key_coinapi + '&time=' + timestamp_today)
json_string = f.read()
parsed_json = json.loads(json_string)
currency_rate_today_btceur = parsed_json['rate']

# Do the "historical exchangerate" info request for Bitcoin (BTC), with the imported API key, and store the output data 
# temporarily under the name "currency_rate_yesterday_btceur"
f = urllib2.urlopen('https://rest.coinapi.io/v1/exchangerate/BTC/EUR?apikey=' + API_key_coinapi + '&time=' + timestamp_yesterday)
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string)
currency_rate_yesterday_btceur = parsed_json['rate']
                    
# Calculate the increase of the currency rate of today compared to yesterday's rate and store the output data temporarily 
# under the name "[btceur_rate_increase_percent_compared_to_yesterdays_rate]"
btceur_rate_increase_percent_compared_to_yesterdays_rate = ( currency_rate_today_btceur - currency_rate_yesterday_btceur ) / currency_rate_yesterday_btceur

# Display the info
print "BTCEUR: " + str(currency_rate_today_btceur) + "(" + str(btceur_rate_increase_percent_compared_to_yesterdays_rate) + "%)"
f.close()
