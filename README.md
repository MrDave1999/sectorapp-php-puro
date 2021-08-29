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
**3.** Copie el contenido de `.env.example` en `.env`:
```
cp .env.example .env
```
**Nota:** Si en Windows no funciona el comando `cp`, use `xcopy`.

**4.** Construya la imagen e inicie los servicios:
```
docker-compose up --build -d
```
**5.** Acceda a la aplicación con esta URL:
```
http://localhost:8080/
```
