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



