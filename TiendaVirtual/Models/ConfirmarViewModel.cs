using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TiendaVirtual.Models
{
    public class ConfirmarViewModel
    {
        [Required]
        public string Nombre { get; set; }

        [Required]
        public string Direccion { get; set; }
    }
}