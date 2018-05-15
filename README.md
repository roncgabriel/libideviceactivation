# libideviceactivation-win32

[![Build status](https://ci.appveyor.com/api/projects/status/13nqwb2mi5ea36a6/branch/master?svg=true)](https://ci.appveyor.com/project/qmfrederik/idevicerestore/branch/master)
[![Build Status](https://travis-ci.org/libimobiledevice-win32/libimobiledevice.svg?branch=msvc-master)](https://travis-ci.org/libimobiledevice-win32/libimobiledevice)

Provides a native Windows build (using the Visual C++ compiler) of [libimobiledevice](http://libimobiledevice.org)'s libideviceactivation,
as well as continuous integration (CI) builds of libimobiledevice for Windows, Linux and macOS.

## What's up with the branches

* *msvc-master*: Mirrors the upstream libideviceactivation master branch, with fixes which enable compilation with Visual C++
* *fixes/*: Various fixes, used for pull requests back into the main libimobiledevice repository

## Where to report issues

For general questions about libideviceactivation, see http://github.com/libimobiledevice/libideviceactivation.
For questions specific to Visual C++, feel free to use the GitHub issue tracker

## How to get the latest binaries
The binaries for libimobiledevice are available as:
* [NuGet CoApp packages](https://www.nuget.org/packages/libideviceactivation/) for Windows,
* [apt-get packages](https://launchpad.net/~quamotion/+archive/ubuntu/ppa) for Ubuntu,

For Ubuntu Linux, run the following commands as root:

```
sudo add-apt-repository ppa:quamotion/ppa
sudo apt-get update
apt-get install libideviceactivation
```

## .NET Bindings
.NET binding are available as the [imobiledevice-net](https://www.nuget.org/packages/imobiledevice-net/) NuGet package.

## Consulting, Training and Support
This repository is maintained by [Quamotion](http://quamotion.mobi). Quamotion develops test software for iOS and 
Android applications, based on the WebDriver protocol.

Quamotion offers various technologies related to automating iOS devices using 
computers running Windows or Linux. 
This includes: 
* The ability to remotely control iOS devices 
* Extensions to libimobiledevice with support for the Instruments protocol 
* Running Xcode UI Tests and Facebook WebDriverAgent tests 

In certain  cases, Quamotion also offers professional services - such as consulting, training and support - related 
to imobiledivice-net and libimobiledevice.

Contact us at [info@quamotion.mobi](mailto:info@quamotion.mobi) for more information.
