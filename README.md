PETS TEAM
=

Aplicación  hecha en Ruby (usando su framework Ruby on Rails) para gestionar un equipo de personas y sus mascotas.

Como requisitos, contamos con que: cada persona puede tener un máximo de 5 mascotas, estas pueden ser: *perro*, *gato*, *rata* y *chinchilla*.
Respecto a los miembros, se podrá: *añadir*, *eliminar* y *modificar*. Y respecto a las mascotas se podrá: *añadir* y *modificar*. (Si una mascota fallece, no se eliminará de la lista, si no que se cambiará su estado por *muerta*)

----------

Links
-------------

> - [Aplicación](petsteam.herokuapp.com)

----------

Nuevas características
-------------
>- Permitir subida de imágenes para los perfiles de usuario y mascota.

----------

Mejoras
----------
>- Sistema de registro y acceso. (Con token)
>- Restricción de borrado y modificación de usuarios.

----------

Descargar el proyecto
-
#### **Requisitos previos**

> **Nota:**

> - Es necesario tener instalado Ruby.  ([Guía de instalación](https://www.ruby-lang.org/es/documentation/installation/))
> - Es necesario tener instalado Ruby on rails. ([Guía de instalación](http://rubyonrails.org.es/instala.html))
> - Es necesario tener instalado MySQL. ([Guía de instalación](https://dev.mysql.com/doc/refman/5.7/en/installing.html))

#### **Uso**

>- Descarga el proyecto y cámbiate a su directorio.
>- Ejecuta el comando *bundle install* para instalar las gemas del proyecto (Librerías)
>- Ejecuta el comando *rake db:migrate* para realizar las acciones de la base de datos.
>- Ejecuta el comando *rails s* o el comando *rails server* para arrancar el servidor.
>- Accede a *localhost:3000* para ver la aplicación. (Puerto por defecto, puede que en tu caso sea diferente, lo indicará la consola)

----------

##### Creado por: Andrea Sanz de Juan
