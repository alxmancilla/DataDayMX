#!/bin/bash
echo -e "\n *** Starting a single node ! ***\n"
mongod --dbpath rs_pss/m0 \
       --logpath rs_pss/m0/mongod.log \
       --port 27017 \
       --bind_ip 127.0.0.1 \
       --fork

