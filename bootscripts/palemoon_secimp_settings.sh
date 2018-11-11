#!/bin/bash
# This file copies some settings, extensions and searchplugins to the palemoon folder (/usr/lib/palemoon ) at bootup.
# It will also delete the non-SSL searchplugins and make a /downloads/ folder under / and put a Postinstallation.html in it.
# See http://kb.mozillazine.org/Search_Bar
# See http://kb.mozillazine.org/Installing_extensions
# See https://mike.kaply.com/2012/03/15/customizing-firefox-default-preference-files/

cd /home/taz/
mkdir downloads
cp -f /mnt/*/palemoon_secimp_settings/downloads/Postinstallation.html /home/taz/downloads/Postinstallation.html

cd /mnt/*/palemoon_secimp_settings/opt/
cp -f Updated_about_config_settings.cfg /usr/lib/palemoon

cd /mnt/*/palemoon_secimp_settings/opt/palemoon/defaults/pref/
cp -f autoconfig.js /usr/lib/palemoon/defaults/pref/

cd /mnt/*/palemoon_secimp_settings/opt/palemoon/browser/extensions/
cp -f * /usr/lib/palemoon/browser/extensions/

cd /usr/lib/palemoon/browser/searchplugins/
rm *
cd ../palemoon_secimp_settings/opt/palemoon/browser/searchplugins/
cp -f * /usr/lib/palemoon/browser/searchplugins/
