# DigitalYou-CarRentalApp

#Car rental app
---------------

Desarollo de una API de alquiler de coches. En esta aplicación podremos =>

  <strong>1.Crear coches</strong><br>
     Eliminar coches<br>
     Ver todos los coches<br>
     Editar coches<br>
  <strong>2.Crear usuarios</strong><br>
     Eliminar usuarios<br>
     Ver todos los usuarios<br>
     Editar usuarios<br>
  <strong>3.Crear reserveras, crear una reserva activa por usuario</strong><br>
     Eliminar reserva <br>

La página principal del proyecto es /bookings. Allí encontraremos una vista de todas las reservas que hay en la base de datos. En el header de la página tenemos un menú donde podremos crear y ver usuarios,coches y reservas. Si quisieramos editar o eliminar un coche o usuario simplemente tenemos que entrar en la pestaña de all cars o users. Para ver un coche o usuario específico 


#Requisitos
-----------

Ruby 2.5 o superior

Gemas utilizadas =>
   sqlite3
   bootstrap,
   database_cleaner
   factory_bot_rails
   shoulda-matchers
   rspec-rails
   faker


#Arquitectura
------------

La arquitectura que he seguido para realizar este proyecto esta basada en la orientación a objetos. También he utilizado el patrón 
Modelo-Vista-Controlador que separa los datos y la lógica de mi negocio.

#Test
-----

He utilizado las gemas de factory bot y faker para poder crear ejemplos de usuarios,coches y reservas. En total hay 42 test.

Para ejecutar los test simplemente hay que descomentar las lineas de JSON de json_response(@booking), json_response(@users), json_response(@cars) estas líneas las encontramos en los controladores (booking_controller.rb, cars_controller.rb, users_controller.rb) de cada uno de las clases nombradas. Luego abrimos la consola y ejecutamos RSPEC.

#Modelos
--------

![rental cars](https://user-images.githubusercontent.com/25666425/84652631-36147480-af0c-11ea-8c5d-9bbbfbf59947.PNG)

