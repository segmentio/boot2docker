#!/bin/sh
# from https://circleci.com/docs/installing-custom-software
#

set -x
set -e
set -u

PACKER_VERSION="${1}"

if [ ! -x "./packer-${PACKER_VERSION}/packer" ]; then
	mkdir -p "./packer-${PACKER_VERSION}/"
  	curl -L -o packer.zip "https://dl.bintray.com/mitchellh/packer/packer_${PACKER_VERSION}_linux_amd64.zip"
  	unzip -o packer.zip -d "./packer-${PACKER_VERSION}/"
  	rm -f packer.zip
fi
