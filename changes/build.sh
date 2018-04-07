#!/bin/bash

#install zip
apt-get -qq update
apt-get -qq -y install zip

cd src/
dotnet restore

#create deployment package
dotnet lambda package --configuration release --framework netcoreapp1.0 --output-package bin/release/netcoreapp2.0/deploy-package.zip
cd -
