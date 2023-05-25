#!/bin/bash

docker run --name dtp \
-p 8080:8080 \
-p 8082:8082 \
-p 8443:8443 \
-p 8314:8314 \
--user root:root \
--network=demo-net \
-v /var/run/docker.sock:/var/run/docker.sock \
-v parasoft-volume:/mnt/parasoft \
-v "$PWD/dtp_data:/usr/local/parasoft/data" \
-d parasoft/dtp-extension-designer