#!/bin/bash

aapt dump badging "$1" |grep "package: \|application-label:\|application-label-zh\|application-label-en\|sdkVersion:\|targetSdkVersion:\|native-code:\|launchable-activity:\|application: "
