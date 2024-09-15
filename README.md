# apkinfo
A shell script showing .apk file's:
    - Basic info using aapt (Android Asset Packaging Tool)
    - Signing info using java keytool

example:
```
$ apkinfo.sh firefox_58.0.1.apk
Signer #1:
Certificate #1:
Owner: CN=Release Engineering, OU=Release Engineering, O=Mozilla Corporation, L=Mountain View, ST=California, C=US
Issuer: CN=Release Engineering, OU=Release Engineering, O=Mozilla Corporation, L=Mountain View, ST=California, C=US
Serial number: 4c72fd88
Valid from: Tue Aug 24 07:00:24 CST 2010 until: Sat Jan 09 07:00:24 CST 2038
Certificate fingerprints:
         SHA1: 92:0F:48:76:A6:A5:7B:4A:6A:2F:4C:CA:F6:5F:7D:29:CE:26:FF:2C
         SHA256: A7:8B:62:A5:16:5B:44:94:B2:FE:AD:9E:76:A2:80:D2:2D:93:7F:EE:62:51:AE:CE:59:94:46:B2:EA:31:9B:04
Signature algorithm name: SHA1withRSA (disabled)
Subject Public Key Algorithm: 2048-bit RSA key
Version: 3

Warning:
The certificate uses the SHA1withRSA signature algorithm which is considered a security risk and is disabled.
====================================================
package: name='org.mozilla.firefox' versionCode='2015538137' versionName='58.0.1' platformBuildVersionName='6.0-2704002'
sdkVersion:'16'
targetSdkVersion:'23'
application-label:'Firefox'
application-label-en-ZA:'Firefox'
application-label-en-GB:'Firefox'
application-label-zh-CN:'Firefox'
application-label-zh-TW:'Firefox'
application-label-zh-HK:'Firefox'
application-label-en-IN:'Firefox'
application-label-en-AU:'Firefox'
application: label='Firefox' icon='res/drawable-hdpi-v4/icon.png'
native-code: 'armeabi-v7a'

```


```
$ apkinfo.sh 云视听小电视_1.2.9.1.apk
Signer #1:
Certificate #1:
Owner: CN=Bbcallen, OU=danmaku.tv, O=danmaku.tv, L=Zhuhai, ST=Guangdong, C=CN
Issuer: CN=Bbcallen, OU=danmaku.tv, O=danmaku.tv, L=Zhuhai, ST=Guangdong, C=CN
Serial number: 4f3bb0ec
Valid from: Wed Feb 15 21:19:40 CST 2012 until: Thu Nov 18 21:19:40 CST 2066
Certificate fingerprints:
         SHA1: 96:DC:60:5B:95:19:BA:B9:4E:DD:BE:AA:A0:59:A6:69:FB:A2:C2:11
         SHA256: 93:BA:27:0F:55:21:13:9E:CA:FE:4B:B6:38:AC:5B:11:98:BC:54:8F:62:D9:FD:8F:85:80:A0:79:FA:F5:91:0E
Signature algorithm name: SHA1withRSA (disabled)
Subject Public Key Algorithm: 1024-bit RSA key (disabled)
Version: 3

Warning:
The certificate uses the SHA1withRSA signature algorithm which is considered a security risk and is disabled.
The certificate uses a 1024-bit RSA key which is considered a security risk and is disabled.
====================================================
package: name='com.xiaodianshi.tv.yst' versionCode='102901' versionName='1.2.9.1' platformBuildVersionName='1.2.9.1'
sdkVersion:'16'
targetSdkVersion:'26'
application-label:'云视听小电视'
application-label-zh-CN:'云视听小电视'
application: label='云视听小电视' icon='res/drawable-xhdpi-v4/ic_launcher.png' banner='res/drawable-xhdpi-v4/ic_banner.png'
launchable-activity: name='com.xiaodianshi.tv.yst.ui.splash.SplashActivity'  label='云视听小电视' icon=''
leanback-launchable-activity: name='com.xiaodianshi.tv.yst.ui.splash.SplashActivity'  label='云视听小电视' icon='' banner=''
native-code: 'armeabi-v7a' 'x86'

```

