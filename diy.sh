#!/bin/bash
sed -i '/^EXPOSE 8000/'d containers/backend/Dockerfile

sed -i 's/EXPOSE 80/EXPOSE 45629/g' packages/lesspass-site/Dockerfile
sed -i 's/listen       80;/listen       45629;/g' packages/lesspass-site/nginx.conf 
