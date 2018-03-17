# "Data Analysis with MongoDB" workshop 

Datasets and sample queries used during "Data Analysis with MongoDB" workshop in DataDay Mexico 2018 

## Setup  environment

Download repository with dataset and examples of data analysis with MongoDB

$ git clone https://github.com/alxmancilla/DataDayMX.git

$ cd DataDayMX

## Untar / uncompress sample dataset

$ tar -zxvf dataset.tgz 

## Create local MongoDB environment 
$ chmod +x *.sh

$ ./0_create_directory.sh 

### Start a single node 
$ ./1_start_standAlone.sh 

### (or you can try ) Start a Replica Set
$ ./1_start_replica.sh 


## Import datasets (into default test database)

$ curl -O  https://raw.githubusercontent.com/mongodb/docs-assets/primer-dataset/primer-dataset.json

$ mongoimport -d test -c restaurants --drop --file primer-dataset.json

$ mongoimport  -c books --drop --type csv --headerline --file ./dataset/books.csv 

$ mongoimport  -c ratings --drop --type csv --headerline --file ./dataset/ratings.csv 

## Enter MongoDB shell using test database 

$ mongo test

## Simple queries with MongoDB  

Execute simple queries available on basic_queries.txt file

## Simple Find and Aggregate  with MongoDB  

Execute queries available on find_aggregate_queries.txt file

## Aggregate data with MongoDB  

Execute aggregations available on aggregate_queries.txt file

## Updating 'books' collections using aggregate queries with MongoDB  

Execute updates available on update_books_with_aggregations.txt file

## To exit from MongoDB shell

> exit

## Remove local MongoDB environment 

$ ./2_kill_all_and_clean.sh 


