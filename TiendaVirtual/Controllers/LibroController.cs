using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TiendaVirtual;
using TiendaVirtual.Models;
namespace TiendaVirtual.Controllers
{ 
    public class LibroController : Controller
    {

        private ModelContainer db = new ModelContainer();

        //
        // GET: /Libro/
        [Authorize]
        public ViewResult Index()
        {
            return View(db.Libros.ToList());
        }

        //
        // GET: /Libro/Details/5
        [Authorize]
        public ViewResult Details(int id)
        {
            Libros libros = db.Libros.Find(id);
            return View(libros);
        }

        //
        // GET: /Libro/Create
        [Authorize]
        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Libro/Create
        [Authorize]
        [HttpPost]
        public ActionResult Create(Libros libros)
        {
            if (ModelState.IsValid)
            {
                db.Libros.Add(libros);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(libros);
        }
        
        //
        // GET: /Libro/Edit/5
        [Authorize]
        public ActionResult Edit(int id)
        {
            Libros libros = db.Libros.Find(id);
            return View(libros);
        }

        //
        // POST: /Libro/Edit/5
        [Authorize]
        [HttpPost]
        public ActionResult Edit(Libros libros)
        {
            if (ModelState.IsValid)
            {
                db.Entry(libros).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(libros);
        }


        
        [Authorize]
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}