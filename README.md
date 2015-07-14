# TiendaVirtualASP.NET
Ejemplo de tienda virtual de libros con asp.net.

Visual Studio 2013:

** Credenciales base para poder entrar sin datos: admin/admin **
* Funcionalidades:
	- Gestión de libros: añadir, editar, ver detalles.
	- Gestión de pedidos: ver detalles de pedido, eliminar pedidos.
	- Gestión de usuarios: (añadir,editar,detalles y borrar)
		* Los usuarios registrados serán administradores -> podrán gestionar libros,pedidos y usuarios.
		* Los clientes no se registrarán -> añadirán libros al carrito y podrán procesar el pedido.
	- Carrito de compra: guarda en sesión los libros añadidos, hasta que no se confirma no se guardará en base de datos.

Iniciando la aplicación nos encontramos con la siguiente pantalla:
![alt tag](https://github.com/jorgelillo7/TiendaVirtualASP.NET/blob/master//docs/1-%20index.PNG)

Un usuario puede añadir los libros que quiera al carrito de compra:
![alt tag](https://github.com/jorgelillo7/TiendaVirtualASP.NET/blob/master/docs/6-%20carrito.PNG)

Y confirmar su pedido, introduciendo nombre y dirección: (no necesario registro)

![alt tag](https://github.com/jorgelillo7/TiendaVirtualASP.NET/blob/master/docs/7-%20confirmar_pedido.PNG)



Pedido completado:
![alt tag](https://github.com/jorgelillo7/TiendaVirtualASP.NET/blob/master/docs/8-%20pedido_%C3%A9xito.PNG)

Los administradores serán los usuarios registrados, se tiene el usuario por defecto admin/admin:
![alt tag](https://github.com/jorgelillo7/TiendaVirtualASP.NET/blob/master/docs/2-%20administraci%C3%B3n.PNG)

Los admin se encargan de los diferentes crud:

- Libros:
  ![alt tag](https://github.com/jorgelillo7/TiendaVirtualASP.NET/blob/master/docs/3-%20admin_libros.PNG)


- Pedidos:
  ![alt tag](https://github.com/jorgelillo7/TiendaVirtualASP.NET/blob/master/docs/4-%20admin_pedidos.PNG)


- Usuarios:
  ![alt tag](https://github.com/jorgelillo7/TiendaVirtualASP.NET/blob/master/docs/5-%20admin_usuarios.PNG)





