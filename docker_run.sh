#!/bin/bash

script_dir=$(cd $(dirname $0); pwd)
data_dir='data'
repository='your-repository'
tag='your-tag'
time_zone='Asia/Tokyo'
wait_sec=5

docker build -t ${repository}:${tag} .
docker run --rm -it --device=/dev/video0:/dev/video0 -v ${script_dir}/${data_dir}:/${data_dir} -e "TZ=${time_zone}" ${repository}:${tag} python /${data_dir}/burst_capt.py ${data_dir} ${wait_sec}