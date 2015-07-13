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
    public class UsuariosController : Controller
    {
        private ModelContainer db = new ModelContainer();

        //
        // GET: /Usuarios/

        public ViewResult Index()
        {
            return View(db.Usuarios.ToList());
        }

        //
        // GET: /Usuarios/Details/5

        public ViewResult Details(int id)
        {
            Usuarios usuarios = db.Usuarios.Find(id);
            return View(usuarios);
        }

        //
        // GET: /Usuarios/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Usuarios/Create

        [HttpPost]
        public ActionResult Create(Usuarios usuarios)
        {
            if (ModelState.IsValid)
            {
                db.Usuarios.Add(usuarios);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(usuarios);
        }
        
        //
        // GET: /Usuarios/Edit/5
 
        public ActionResult Edit(int id)
        {
            Usuarios usuarios = db.Usuarios.Find(id);
            return View(usuarios);
        }

        //
        // POST: /Usuarios/Edit/5

        [HttpPost]
        public ActionResult Edit(Usuarios usuarios)
        {
            if (ModelState.IsValid)
            {
                db.Entry(usuarios).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(usuarios);
        }

        //
        // GET: /Usuarios/Delete/5
 
        public ActionResult Delete(int id)
        {
            Usuarios usuarios = db.Usuarios.Find(id);
            return View(usuarios);
        }

        //
        // POST: /Usuarios/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Usuarios usuarios = db.Usuarios.Find(id);
            db.Usuarios.Remove(usuarios);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}