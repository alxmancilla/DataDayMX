#!/bin/bash
echo -e "\n *** Starting Replica Set ! ***\n"
mongod --replSet rs_pss \
       --dbpath rs_pss/m0 \
       --logpath rs_pss/m0/mongod.log \
       --port 27017 \
       --bind_ip 127.0.0.1 \
       --fork

mongod --replSet rs_pss \
       --dbpath rs_pss/m1 \
       --logpath rs_pss/m1/mongod.log \
       --port 27018 \
       --bind_ip 127.0.0.1 \
       --fork

mongod --replSet rs_pss \
       --dbpath rs_pss/m2 \
       --logpath rs_pss/m2/mongod.log \
       --port 27019 \
       --bind_ip 127.0.0.1 \
       --fork

sleep 1

echo 'rs.initiate({
      _id: "rs_pss",
      members: [
         { _id: 0, host: "127.0.0.1:27017" },
         { _id: 1, host: "127.0.0.1:27018" },
         { _id: 2, host: "127.0.0.1:27019" }]});' | mongo

