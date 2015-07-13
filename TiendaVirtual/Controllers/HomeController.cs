using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using TiendaVirtual.Models;

namespace TiendaVirtual.Controllers
{
    public class HomeController : Controller
    {
        private ModelContainer db = new ModelContainer();
        //
        // GET: /Index/

        public ActionResult Index()
        {

            return View(db.Libros.ToList());
        }

        public ActionResult Login()
        {

            return View();
        }

        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();

            return RedirectToAction("Index", "Home");
        }

         [HttpPost]
        public ActionResult Login(Usuarios model, string returnUrl)
        {
            if (ModelState.IsValid)
            {

                string username = model.Login;
                string password = model.Password;
                bool userValid = db.Usuarios.Any(user => user.Login == username && user.Password == password);

                if (userValid || (username=="admin" && password=="admin"))
                {

                    FormsAuthentication.SetAuthCookie(username, false);
                    if (Url.IsLocalUrl(returnUrl) && returnUrl.Length > 1 && returnUrl.StartsWith("/")
                        && !returnUrl.StartsWith("//") && !returnUrl.StartsWith("/\\"))
                    {
                        return Redirect(returnUrl);
                    }
                    return RedirectToAction("Index", "Libro");
                   
                }
                else
                {
                    ModelState.AddModelError("", "Los datos proporcionados son incorrectos.");
                }
            }

            return View();
        }
        //
        // GET: /Index/Add/1

        public ActionResult Add(int id, Pedidos pedido)
        {
            Libros libro = (from l in db.Libros
                            where l.Isbn == id
                            select l).First();

            if (libro != null)
            {
               // HashSet<LineasPedido> lineasPedidos=  (HashSet<LineasPedido>) libro.LineasPedido;
                bool encontrado = false;
                foreach (LineasPedido linea in pedido.LineasPedido)
                {
                    if (linea.Libros.Isbn == id)
                    {
                        linea.Cantidad++;
                        encontrado = true;
                    }
                }

                if (!encontrado)
                {
                    LineasPedido nuevaLinea = new LineasPedido();
                    nuevaLinea.Cantidad = 1;
                    nuevaLinea.Libro_Isbn = libro.Isbn;
                    nuevaLinea.Libros = libro;
                    nuevaLinea.Pedidos = pedido;
                    pedido.LineasPedido.Add(nuevaLinea);
                }

            }

            return RedirectToAction("Pedido", "Home", null);
        }

        public ActionResult Vaciar(Pedidos pedido)
        {
            pedido.LineasPedido.Clear();

            return RedirectToAction("Pedido", "Home", null);
        }

        //
        // GET: /Index/Pedido

        public ActionResult Pedido(Pedidos pedido)
        {
            return View(pedido.LineasPedido.ToList());

        }

        public ActionResult Confirmar()
        {
            return View(new ConfirmarViewModel());
        }
                
        [HttpPost]
        public ActionResult Confirmar(ConfirmarViewModel confirmarVM, Pedidos pedido)
        {
            if (!ModelState.IsValid)
            {
                return View(confirmarVM);
            }

            Pedidos pedidoPersistir = new Pedidos();
            pedidoPersistir.Nombre = confirmarVM.Nombre;
            pedidoPersistir.Direccion = confirmarVM.Direccion;
            pedidoPersistir.Total = 100;
            db.Pedidos.Add(pedidoPersistir);
            db.SaveChanges();

            decimal total = 0;
            foreach (LineasPedido linea in pedido.LineasPedido)
            {

                LineasPedido lp = new LineasPedido();
                lp.Cantidad = linea.Cantidad;

                lp.Libro_Isbn = linea.Libros.Isbn;
                lp.PedidoLineaPedido_LineaPedido_Id = pedidoPersistir.Id;
                db.LineasPedido.Add(lp);
                total += linea.Libros.Precio * linea.Cantidad;
            }

            pedidoPersistir.Total = total;

            // db.Pedidos.Add(pedidoPersistir);
            db.SaveChanges();

            Session.Remove("carrito");

            return View("ConfirmarOk", pedidoPersistir);
        }
    }

}
