using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TiendaVirtual.Models;

namespace TiendaVirtual.Controllers
{ 
    public class PedidoController : Controller
    {

        private ModelContainer db = new ModelContainer();

        //
        // GET: /Pedido/
        [Authorize]
        public ViewResult Index()
        {
            return View(db.Pedidos.ToList());
        }

        //
        // GET: /Pedido/Details/5
        [Authorize]
        public ViewResult Details(int id)
        {
            Pedidos pedidos = db.Pedidos.Find(id);
            return View(pedidos);
        }

        //
        // GET: /Pedido/Create
       [Authorize]
        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Pedido/Create
        [Authorize]
        [HttpPost]
        public ActionResult Create(Pedidos pedidos)
        {
            if (ModelState.IsValid)
            {
                db.Pedidos.Add(pedidos);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(pedidos);
        }
        //
        // GET: /Pedido/Delete/5
        [Authorize] 
        public ActionResult Delete(int id)
        {
            Pedidos pedidos = db.Pedidos.Find(id);
            return View(pedidos);
        }

        //
        // POST: /Pedido/Delete/5
        [Authorize]
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Pedidos pedidos = db.Pedidos.Find(id);

            var query = from e in db.LineasPedido
                        where e.PedidoLineaPedido_LineaPedido_Id==id
                        select e;
            IList<LineasPedido> result = query.ToList<LineasPedido>();

            foreach (LineasPedido linea in result) {
                db.LineasPedido.Remove(linea);
            }
            db.Pedidos.Remove(pedidos);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        [Authorize]
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}