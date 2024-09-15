#!/bin/bash

apkfile="$1"


GREP_STR="package: \|application-label:\|application-label-zh\|application-label-en\|sdkVersion:\|targetSdkVersion:\|native-code:\|launchable-activity:\|application: "

function use_apktool()
{
    tmpdir1="$(mktemp -d /tmp/apkinfo_XXXXXX)"
    tmpdir2="$(mktemp -d /tmp/apkinfo_XXXXXX)"
    tmpdir3="$(mktemp -d /tmp/apkinfo_XXXXXX)"
#     echo $tmpdir1
#     echo $tmpdir2
#     echo $tmpdir3

    unzip -q "$1" -d "$tmpdir1" AndroidManifest.xml  || return
    (
        cd "$tmpdir1" || return
        zip -q "$tmpdir2/temp.apk" "AndroidManifest.xml"  || return
    )
    apktool d -f -s "$tmpdir2/temp.apk"  -o "$tmpdir3/"  >/dev/null 2>&1  # don't use apktool '-r'
    cat "$tmpdir3/AndroidManifest.xml" | grep -E "^<manifest\b"

}
function get_manifest()
{
    if which aapt >/dev/null 2>&1 ; then
        aapt dump badging "$1" | grep "$GREP_STR"
    else
        echo "WARN: you don't have aapt. Not showing enough apk info"
        echo "------------------------------------"
        if which apktool >/dev/null 2>&1 ; then
            use_apktool "$1"
        fi
    fi
}


keytool  -printcert -jarfile "$apkfile" | grep "\S"

echo "===================================================="

get_manifest "$apkfile"


