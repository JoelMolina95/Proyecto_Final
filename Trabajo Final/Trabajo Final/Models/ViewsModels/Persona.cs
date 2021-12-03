using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trabajo_Final.Models
{
    public class Persona
    {
        public String Nombre { get; set; }

        public String Apellido { get; set; }

        public int Telefono { get; set; }

        public String email { get; set; }

        public decimal Tarjeta { get; set; }

        public String vencimiento{ get; set; }

        public int CVV { get; set; }


    }
}