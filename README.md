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
