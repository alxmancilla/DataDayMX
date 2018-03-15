# DataDayMX
Repositorio con dataset y ejemplos de análisis de datos con MongoDB

$ git clone https://github.com/alxmancilla/DataDayMX.git

Descomprimir datasets

$ tar -jxvf datasets1.tar.bz2 

$ tar -jxvf datasets2.tar.bz2 

$ ls -la datasets*

datasets1:
-rwxr-xr-x@  1 mancilla  staff  87458816 Mar 14 21:44 book_tags.csv
-rw-r--r--@  1 mancilla  staff  11874761 Mar 12 22:52 restaurants.json

datasets2:
total 147624
-rwxr-xr-x@  1 mancilla  staff   2726679 Mar 13 20:58 books.csv
-rwxr-xr-x@  1 mancilla  staff  72126826 Sep 13  2017 ratings.csv
-rwxr-xr-x@  1 mancilla  staff    722480 Sep 13  2017 tags.csv


Crear ambiente de MongoDB

$ cd rs_pss/
$ ./0_create_directory.sh 
$ ./1_start_replica.sh 
$ cd ..

Importar datasets

$ mongoimport -d test -c restaurants --drop --file ./datasets1/restaurants.json
$ mongoimport  -c books --drop --type csv --headerline --file ./datasets2/books.csv 
$ mongoimport  -c book_tags --drop --type csv --headerline ./datasets1/book_tags.csv 
$ mongoimport  -c ratings --drop --type csv --headerline --file ./datasets2/ratings.csv 
$ mongoimport  -c tags --drop --type csv --headerline --file ./datasets2/tags.csv 

Ingresar al shell de MongoDB

$ mongo test



