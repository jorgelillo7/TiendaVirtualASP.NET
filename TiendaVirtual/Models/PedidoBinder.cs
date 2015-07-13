using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TiendaVirtual.Models

{
    public class PedidoBinder : IModelBinder
    {
        private string _key = "carrito";

        public object BindModel(ControllerContext cc, ModelBindingContext mbc)
        {
            Pedidos p = (Pedidos)cc.HttpContext.Session[_key];
            if (p == null)
            {
                p = new Pedidos();
                cc.HttpContext.Session[_key] = p;
            }

            return p;
        }
    }
}