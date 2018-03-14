#!/bin/bash
# This file copies some settings, extensions and searchplugins to the palemoon folder (/opt/palemoon ) at bootup.
# It also makes a /downloads/ folder under / and puts a Postinstallation.html in it.

mkdir /downloads/
cp ../palemoon_secimp_settings/downloads/Postinstallation.html /downloads/Postinstallation.html
cp ../palemoon_secimp_settings/opt/palemoon/browser/extensions
