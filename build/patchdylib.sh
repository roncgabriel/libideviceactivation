#!/bin/sh

# Patch the dylib dependencies for all executables in the out directory and libraries
# in the lib directory.
# Redirect from libimobiledevice.6.dylib in the out folder to libimobiledevice.dylib
# in the folder where the executable is located (this will be the setup in our target
# environment)
for f in $INSTALLDIR/{bin/*,lib/*.dylib}; do
   chmod +w $f

   # Skip the first line of the otool output, this is just the header
   dylibs=`otool -L $f | tail -n +2 | grep "libimobiledevice" | awk -F' ' '{ print $1 }'`

   for dylib in $dylibs; do
     echo Patching $dylib in $f

     # https://www.mikeash.com/pyblog/friday-qa-2009-11-06-linking-and-install-names.html
     install_name_tool -change $dylib @loader_path/libimobiledevice.dylib $f
   done;

   # Skip the first line of the otool output, this is just the header
   dylibs=`otool -L $f | tail -n +2 | grep "libideviceactivation" | awk -F' ' '{ print $1 }'`

   for dylib in $dylibs; do
     echo Patching $dylib in $f

     # https://www.mikeash.com/pyblog/friday-qa-2009-11-06-linking-and-install-names.html
     install_name_tool -change $dylib @loader_path/libideviceactivation.dylib $f
   done;

   install_name_tool -change /usr/local/opt/openssl/lib/libssl.1.0.0.dylib @loader_path/libssl.1.0.0.dylib $f
   install_name_tool -change /usr/local/opt/openssl/lib/libcrypto.1.0.0.dylib @loader_path/libcrypto.1.0.0.dylib $f

   otool -L $f
done
