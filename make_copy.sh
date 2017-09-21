#!/bin/bash

echo "Compiling..."
make
echo "Code: $?"
if [ $? == 0 ];  then
    echo "Copying to 'final_binaries'"
    cp -a ./build/esp32-ota-https.bin ./final_binaries/esp32-ota-https.bin
    echo "Done !!"
fi