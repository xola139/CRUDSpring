CRUDSpring
==========

Proyecto que contiene el simple CRUD con spring.

https://raw.githubusercontent.com/xola139/CRUDSpring/master/MyCrudSpring/WebContent/img/screen.png


![Settings Window](https://raw.githubusercontent.com/xola139/CRUDSpring/master/MyCrudSpring/WebContent/img/screen.png
)
Lo pudes descargar ,importar y deplegar  en tu IDE favorito.Los desplieges de prueba fueron realizados con jetty 8.1 y Tomcat 7.

Antes de hacer el despliegue poner atención a la configuración de la conexión a la base de datos esta en Spring-Datasource.xml
	
Coloco el script de la tabla para generarla en el gestor de base de datos oracle.
CREATE TABLE LOSUSUARIOS
(
   USR_ID number,
   USR_NOMBRE varchar2(200),
   USR_PASSWORD varchar2(200),
   USR_NOMBRECOMPLETO varchar2(500),
   USR_NIVEL number
);

La url de acceso es esta (8080 puede ser opcional esto depende de la configuracion de tu servidor local)
http://localhost:8080/MyCrudSpring/lista.html
