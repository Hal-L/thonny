#!/bin/bash

set -e

thonny_version=$(<../../thonny/VERSION)
thonny_version="3.2.6"

~/private/notarize-app.sh "dist/thonny-${thonny_version}-macos-installer.pkg"
~/private/notarize-app.sh "dist/thonny-xxl-${thonny_version}-macos-installer.pkg"


# Notarizing #####################################################################
# https://successfulsoftware.net/2018/11/16/how-to-notarize-your-software-on-macos/
# xcrun altool -t osx --primary-bundle-id org.thonny.Thonny --notarize-app --username <apple id email> --password <generated app specific pw> --file <dmg>
# xcrun altool --notarization-info $1 --username aivar.annamaa@gmail.com --password <notarize ID>
# xcrun stapler staple <dmg>

