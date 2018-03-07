#!/usr/bin/python
#
# Retrieves and displays weather info from Weather Underground into conky for 7 predetermined cities 
# Weather Underground is a registered trademark of The Weather Channel, LLC. both in the United States and internationally. 
# This script made by Brian Peregrine, under GPL v3 license.
#
# Weather Underground requires a (free API key (Stratus Plan)
# Get your API key via https://www.wunderground.com/weather/api/d/docs?d=index
# Then, place your API key in this script. The program will do the rest.
# If you want info for different cities, edit this script directly; you can get the weather station names
# via a http://api.wunderground.com/api/Your_Key/geolookup/q/countrycode/city_name.json request
#
# Program code :
# Retrieve weather underground API key and store temporarily under the name "API_key_weatherunderground"
API_key_weatherunderground = "insert_API_key_here"

# Do the "conditions" info request for Shanghai with the imported API key, and store the data temporarily
import urllib2
import json
f = urllib2.urlopen('http://api.wunderground.com/api/' + API_key_weatherunderground + '/conditions/q/pws:I31CHANG7.json') 
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string) 

# Display the info
print "%s"u'\N{DEGREE SIGN}'"C, %s, %s" % (parsed_json['current_observation']['temp_c'], 
parsed_json['current_observation']['relative_humidity'], parsed_json['current_observation']['weather'])
f.close()
 
# Do the "conditions" info request for New Delhi with the imported API key, and store the data temporarily
import urllib2
import json
f = urllib2.urlopen('http://api.wunderground.com/api/' + API_key_weatherunderground + '/conditions/q/pws:IDELHINE9.json') 
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string) 

# Display the info
print "%s"u'\N{DEGREE SIGN}'"C, %s, %s" % (parsed_json['current_observation']['temp_c'], 
parsed_json['current_observation']['relative_humidity'], parsed_json['current_observation']['weather'])
f.close()

# Do the "conditions" info request for New York with the imported API key, and store the data temporarily
import urllib2
import json
f = urllib2.urlopen('http://api.wunderground.com/api/' + API_key_weatherunderground + '/conditions/q/pws:KNYNEWYO639.json') 
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string) 

# Display the info
print "%s"u'\N{DEGREE SIGN}'"C, %s, %s" % (parsed_json['current_observation']['temp_c'], 
parsed_json['current_observation']['relative_humidity'], parsed_json['current_observation']['weather'])
f.close()

# Do the "conditions" info request for Brussels with the imported API key, and store the data temporarily
import urllib2
import json
f = urllib2.urlopen('http://api.wunderground.com/api/' + API_key_weatherunderground + '/conditions/q/pws:IBRUSSEL37.json') 
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string) 

# Display the info
print "%s"u'\N{DEGREE SIGN}'"C, %s, %s" % (parsed_json['current_observation']['temp_c'], 
parsed_json['current_observation']['relative_humidity'], parsed_json['current_observation']['weather'])
f.close()

# Do the "conditions" info request for Moscow with the imported API key, and store the data temporarily
import urllib2
import json
f = urllib2.urlopen('http://api.wunderground.com/api/' + API_key_weatherunderground + '/conditions/q/pws:IMOSKVA347.json') 
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string) 

# Display the info
print "%s"u'\N{DEGREE SIGN}'"C, %s, %s" % (parsed_json['current_observation']['temp_c'], 
parsed_json['current_observation']['relative_humidity'], parsed_json['current_observation']['weather'])
f.close()

# Do the "conditions" info request for Tokyo with the imported API key, and store the data temporarily
import urllib2
import json
f = urllib2.urlopen('http://api.wunderground.com/api/' + API_key_weatherunderground + '/conditions/q/pws:I13HATCH4.json')
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string) 

# Display the info
print "%s"u'\N{DEGREE SIGN}'"C, %s, %s" % (parsed_json['current_observation']['temp_c'], 
parsed_json['current_observation']['relative_humidity'], parsed_json['current_observation']['weather'])
f.close()
