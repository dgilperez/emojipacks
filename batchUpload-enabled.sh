#!/bin/bash

subdomain=$2
email=$3
packspath=$1

if [ $# -ne 3 ]; then
  echo "$0: usage: ./batchUpload-enabled.sh packs-enabled <slack-subdomain> <email>"
  exit 1
fi

for f in "$packspath/"*.yaml
do
  echo $f
  bin/emojipacks -s $subdomain -e $email -y $f;
done
