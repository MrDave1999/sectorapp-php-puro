# sectorapp-php-puro
*sectorapp* es una aplicación web que permite el ingreso y eliminación de información de personas y también tiene una opción para poder consultar los sueldos por sector y zona.

Esta aplicación esta hecha para fines de aprendizaje, así que de seguro tiene vulnerabilidades y malas prácticas de programación.

## Instalación

**1.** Clone el repositorio:
```
git clone https://github.com/MrDave1999/sectorapp-php-puro.git
```
**2.** Cambie de directorio:
```
cd sectorapp-php-puro
```
**3.** Instale las dependencias del proyecto:

En Linux:
```
docker run --rm -it -v $PWD:/app composer install
```
En Windows:
```
docker run --rm -it -v %cd%:/app composer install
```

**4.** Copie el contenido de `.env.example` en `.env`:

En Linux:
```
cp .env.example .env
```
En Windows:
```
xcopy .env.example .env
```

**5.** Construya la imagen e inicie los servicios:
```
docker-compose up --build -d
```
**6.** Acceda a la aplicación de esta forma:
```
http://localhost:8080/
```