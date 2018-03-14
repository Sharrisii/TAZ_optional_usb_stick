#!/bin/bash
# This file copies some settings, extensions and searchplugins to the palemoon folder (/opt/palemoon ) at bootup.
# It will also delete the non-SSL searchplugins and make a /downloads/ folder under / and puts a Postinstallation.html in it.
# See http://kb.mozillazine.org/Search_Bar
# See http://kb.mozillazine.org/Installing_extensions
# See https://mike.kaply.com/2012/03/15/customizing-firefox-default-preference-files/

mkdir /downloads/
cp ../palemoon_secimp_settings/downloads/Postinstallation.html /downloads/Postinstallation.html

cd ../palemoon_secimp_settings/opt/
cp Updated_about_config_settings.cfg /opt/palemoon

cd ../palemoon_secimp_settings/opt/palemoon/defaults/pref/
cp autoconfig.js /opt/palemoon/defaults/pref/

cd ../palemoon_secimp_settings/opt/palemoon/browser/extensions/
cp  * /opt/palemoon/browser/extensions/

cd /opt/palemoon/browser/searchplugins/
rm *

cd ../palemoon_secimp_settings/opt/palemoon/browser/searchplugins/
cp * /opt/palemoon/browser/searchplugins/
