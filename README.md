# novus_app

aplicación móvil hecha con Flutter, desarrollada con el fin de validar mis conocimientos en el lenguaje de programación, y mi metodologia.

**main.dart**

    Representa la clase principal que ejecuta el programa y que contiene todos los routes(enlaces y redirecciones a las diferentes vistas de la app), por defecto siempre inicia en la vista `welcome_screen`


Esta aplicacion consiste en 4 vistas que se pueden encontrar en el modulo **screens** y de esta forma:

**1.** **welcome_screen**

    Esta vista muestra dos botones que redireccionan a las vistas `LogIn` y `Register`. Diseñada como menu para acceder a la aplicacion

 ![Img Welcome Screen](https://ibb.co/H4Vp3k7) https://ibb.co/H4Vp3k7

**2.** **login_screen**

    Esta vista muestra un form para el ingreso a la aplicacion consiste en el acceso mediante email y pwd otorgada por el usuario

![Img Login Screen](https://ibb.co/nQ1SqDL) https://ibb.co/nQ1SqDL
    

**3.** **register_screen**

    Esta vista muestra un form para el registro a la aplicacion consiste en ka digitacion de email y pwd para otorgar permisos de acceso mediante Firebase


![Img Register Screen](https://ibb.co/VQpG9Cp) https://ibb.co/VQpG9Cp
    

**4.** **home_screen**

    Esta vista muestra una tabla creada dinamicamente con algunos de los valores obtenidos de una peticion HTTP.get a una URL especifica
    URL = 'https://apiprueba.gopass.com.co/establishment/getAllEstablishment'
    Cabe recalcar que los datos obtenidos tienen formato JSON(Javascript Object Notation)


![Img Home Screen](https://ibb.co/DwFVd3J) https://ibb.co/DwFVd3J
    

# Services

El modulo *services* esta diseñado para operaciones que requieren el uso de metodos HTTP como GET, POST, DELETE, PUT el cual contiene una clase `networking` que tiene un metodo asincronico para obtener datos de una URL en particular, basandose en un metodo **Future** para la obtencion de los mismos

# Constants

un archivo dart para generar todos los arquetipos visuales estaticos que se puedan requerir y reutilizar en toda la aplicación Flutter

# Components

El modulo components esta diseñado para albergar componentes customizados que puedan ser requeridos y reutilizados en toda la aplicacion y el diseño Flutter.


# Base de datos

La Base de datos esta en linea, se utilizó el servicio de google Firebase para la autenticación y el registro, posteriormente se implementa el guardado de datos tales como nombre, apellido, etc, al servicio Firestore, el cual cuenta con un gestor base de datos no relacional.

![Img FireStore](https://imgur.com/PjqzwUa) https://imgur.com/PjqzwUa

![Img Firebase](https://ibb.co/pWkGQND) https://ibb.co/pWkGQND


# Cosas por arreglar

1. Overflow vertical vista register_screen
2. Mensajes de error cuando ya esta registrado o no se encuentra vinculado al servicio de autenticación de Firebase

# Desarrollado Por

# `Miguel Angel Parada Cañon`

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
