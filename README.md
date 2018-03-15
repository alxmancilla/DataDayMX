# DataDayMX


Descargar repositorio con dataset y ejemplos de análisis de datos con MongoDB

$ git clone https://github.com/alxmancilla/DataDayMX.git

$ cd DataDayMX

## Descomprimir datasets

$ tar -jxvf datasets1.tar.bz2 

$ tar -jxvf datasets2.tar.bz2 


## Crear ambiente de MongoDB
$ chmod +x *.sh

$ ./0_create_directory.sh 

$ ./1_start_replica.sh 


## Importar datasets

$ mongoimport -d test -c restaurants --drop --file ./datasets1/restaurants.json

$ mongoimport  -c books --drop --type csv --headerline --file ./datasets2/books.csv 

$ mongoimport  -c book_tags --drop --type csv --headerline ./datasets1/book_tags.csv 

$ mongoimport  -c ratings --drop --type csv --headerline --file ./datasets2/ratings.csv 

$ mongoimport  -c tags --drop --type csv --headerline --file ./datasets2/tags.csv 


## Ingresar al shell de MongoDB

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






