# "Data Analysis with MongoDB" workshop 

Datasets and sample queries used during "Data Analysis with MongoDB" workshop in DataDay Mexico 2018 

## Setup  environment

Download repository with dataset and examples of data analysis with MongoDB

$ git clone https://github.com/alxmancilla/DataDayMX.git

$ cd DataDayMX

## Untar and uncompress sample datasets

$ tar -zxvf dataset_1.tgz 

$ tar -zxvf dataset_2.tgz 


## Create local replica set environment with MongoDB
$ chmod +x *.sh

$ ./0_create_directory.sh 

### Replica Set
$ ./1_start_replica.sh 

### Single Node 
$ ./1_start_standAlone.sh 

## Import datasets (into default test database)

$ curl -O  https://raw.githubusercontent.com/mongodb/docs-assets/primer-dataset/primer-dataset.json

$ mongoimport -d test -c restaurants --drop --file primer-dataset.json

$ mongoimport  -c books --drop --type csv --headerline --file ./dataset_1/books.csv 

$ mongoimport  -c ratings --drop --type csv --headerline --file ./dataset_2/ratings.csv 

## Enter MongoDB shell using test database 

$ mongo test

>  db.books.findOne()

{
	"_id" : ObjectId("5aa890aa7fe2b08c22b6b246"),
	"book_id" : 2,
	"goodreads_book_id" : 3,
	"best_book_id" : 3,
	"work_id" : 4640799,
	"books_count" : 491,
	"isbn" : 439554934,
	"isbn13" : 9780000000000,
	"authors" : "J.K. Rowling, Mary GrandPr̩",
	"original_publication_year" : 1997,
	"original_title" : "Harry Potter and the Philosopher's Stone",
	"title" : "Harry Potter and the Sorcerer's Stone (Harry Potter, #1)",
	"language_code" : "eng",
	"image_url" : "https://images.gr-assets.com/books/1474154022m/3.jpg",
	"small_image_url" : "https://images.gr-assets.com/books/1474154022s/3.jpg"
}

>  db.books.count()
10000

>  db.books.distinct("book_id").length
10000

> db.books.distinct("authors").length
4664


## Simple queries with MongoDB  

Execute queries on basic_queries.txt

## Simple Find and Aggregate  with MongoDB  

## Aggregate data with MongoDB  

## Updating 'books' collections using aggregate queries with MongoDB  


