#!/bin/bash
set -e

readonly todays_dir=$(date +'%m%d%Y')

grab_todays_image()
{
 mkdir ${todays_dir} #Create dir with todays date
 var=$(curl -s https://xkcd.com/info.0.json | jq -r '.img') #Get link
 curl -s $var > ${todays_dir}//${todays_dir}.png #Get Image
 curl -s https://xkcd.com/info.0.json | jq -r '.alt' > ${todays_dir}//${todays_dir}.txt  #Get alttext
 echo "[INFO] Grab for ${todays_dir} - Complete"
}

check_dependencies()
{
  if jq --version | grep jq  > /dev/null
  then
    #if the app is installed
    echo "[INFO] Dependency jq is installed"
  else
    echo "[WARNING] Dependency jq is not installed or in PATH - Bye"
    exit 1
  fi
}

main()
{
check_dependencies
grab_todays_image
}

main
