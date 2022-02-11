#!/bin/sh

export SDKROOT\=/Library//Developer/CommandLineTools/SDKs/MacOSX10.15.sdk
export MACOSX_DEPLOYMENT_TARGET\=10.15
export MACOSX_DEPLOYMENT_TARGET=10.15

echo "About to dump the environment"
# set
echo "****************8ENV DUMP COMPLETE *******************"
echo ""

make V=1 -j 8

if [ $? -eq 0 ]; then
    make install
else
    exit -1
fi
