//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TiendaVirtual.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Libros
    {
        public Libros()
        {
            this.LineasPedido = new HashSet<LineasPedido>();
        }
    
        public int Isbn { get; set; }
        public string Titulo { get; set; }
        public string Autor { get; set; }
        public string Resumen { get; set; }
        public decimal Precio { get; set; }
    
        public virtual ICollection<LineasPedido> LineasPedido { get; set; }
    }
}
