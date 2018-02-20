#!/usr/bin/python
#
# Retrieves and displays weather info from Weather Underground into conky for 7 predetermined cities 
#
# Weather Underground requires a (free APi key (Stratus Plan)
# Get your API key via https://www.wunderground.com/weather/api/d/docs?d=index
# Then, place your API key on a USB stick, at /api_keys/weather_underground_api_key.sh
# The program will do the rest.
# If you want info for different cities, edit this script directly; you can get the weather station names
# via a http://api.wunderground.com/api/Your_Key/geolookup/q/countrycode/city_name.json request
#
#  _    _               _    _                                     _                                                    _ 
# | |  | |             | |  | |                                   | |                                                  | |
# | |  | |  ___   __ _ | |_ | |__    ___  _ __   _   _  _ __    __| |  ___  _ __   __ _  _ __   ___   _   _  _ __    __| |
# | |/\| | / _ \ / _` || __|| '_ \  / _ \| '__| | | | || '_ \  / _` | / _ \| '__| / _` || '__| / _ \ | | | || '_ \  / _` |
# \  /\  /|  __/| (_| || |_ | | | ||  __/| |    | |_| || | | || (_| ||  __/| |   | (_| || |   | (_) || |_| || | | || (_| |
#  \/  \/  \___| \__,_| \__||_| |_| \___||_|     \__,_||_| |_| \__,_| \___||_|    \__, ||_|    \___/  \__,_||_| |_| \__,_|
#                                                                                  __/ |                                  
#                                                                                 |___/                                   
#
# Weather Underground is a registered trademark of The Weather Channel, LLC. both in the United States and internationally. 
# The Weather Underground Logo is a trademark of Weather Underground, LLC.
# Official logo's can be found at https://www.wunderground.com/logos/index.asp ;
# The logo above is made using an ASCII Art generator (http://patorjk.com/software/taag/ ; font: Doom)
#
#
# Program code :
# Retrieve weather underground API key
import $/api_keys/weather_underground_api_key.sh ?

# Do the "conditions" info request for Shanghai with the imported API key, and store the data temporarily
import urllib2
import json
f = urllib2.urlopen('http://api.wunderground.com/api/Your_Key/conditions/q/pws:I31CHANG7.json') 
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string) 

# Display the info
print "%s"u'\N{DEGREE SIGN}'"C, %s, %s" % (parsed_json['current_observation']['temp_c'], 
parsed_json['current_observation']['relative_humidity'], parsed_json['current_observation']['weather'])
f.close()
 
# Do the "conditions" info request for New Delhi with the imported API key, and store the data temporarily
import urllib2
import json
f = urllib2.urlopen('http://api.wunderground.com/api/Your_Key/conditions/q/pws:IDELHINE9.json') 
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string) 

# Display the info
print "%s"u'\N{DEGREE SIGN}'"C, %s, %s" % (parsed_json['current_observation']['temp_c'], 
parsed_json['current_observation']['relative_humidity'], parsed_json['current_observation']['weather'])
f.close()

# Do the "conditions" info request for New York with the imported API key, and store the data temporarily
import urllib2
import json
f = urllib2.urlopen('http://api.wunderground.com/api/Your_Key/conditions/q/pws:KNYNEWYO639.json') 
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string) 

# Display the info
print "%s"u'\N{DEGREE SIGN}'"C, %s, %s" % (parsed_json['current_observation']['temp_c'], 
parsed_json['current_observation']['relative_humidity'], parsed_json['current_observation']['weather'])
f.close()

# Do the "conditions" info request for Brussels with the imported API key, and store the data temporarily
import urllib2
import json
f = urllib2.urlopen('http://api.wunderground.com/api/Your_Key/conditions/q/pws:IBRUSSEL37.json') 
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string) 

# Display the info
print "%s"u'\N{DEGREE SIGN}'"C, %s, %s" % (parsed_json['current_observation']['temp_c'], 
parsed_json['current_observation']['relative_humidity'], parsed_json['current_observation']['weather'])
f.close()

# Do the "conditions" info request for Moscow with the imported API key, and store the data temporarily
import urllib2
import json
f = urllib2.urlopen('http://api.wunderground.com/api/Your_Key/conditions/q/pws:IMOSKVA347.json') 
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string) 

# Display the info
print "%s"u'\N{DEGREE SIGN}'"C, %s, %s" % (parsed_json['current_observation']['temp_c'], 
parsed_json['current_observation']['relative_humidity'], parsed_json['current_observation']['weather'])
f.close()

# Do the "conditions" info request for Tokyo with the imported API key, and store the data temporarily
import urllib2
import json
f = urllib2.urlopen('http://api.wunderground.com/api/Your_Key/conditions/q/pws:I13HATCH4.json')
json_string = f.read().replace("'",'"').replace('u"','"')
parsed_json = json.loads(json_string) 

# Display the info
print "%s"u'\N{DEGREE SIGN}'"C, %s, %s" % (parsed_json['current_observation']['temp_c'], 
parsed_json['current_observation']['relative_humidity'], parsed_json['current_observation']['weather'])
f.close()