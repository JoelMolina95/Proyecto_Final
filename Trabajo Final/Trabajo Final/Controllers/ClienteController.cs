using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Trabajo_Final.Models;

namespace Trabajo_Final.Controllers
{
    public class ClienteController : Controller
    {
        // GET: Compra
        public ActionResult DatosUsuario()
        {
            return View();
        }
        // GET:  Pagar 
        public ActionResult Pagar()
        {
            List<Persona> lst;
            using (SPEED_RACEREntities db = new SPEED_RACEREntities())       
            {
                 lst = (from d in db.Cliente
                           select new Persona
                           {
                               Nombre = d.nombres,
                               Apellido = d.apellidos,
                               Telefono = d.telefono,
                               email = d.email,
                               Tarjeta = d.num_tarjeta,
                               CVV = d.CVV,
                               vencimiento = d.fecha_vencimiento,
                           }).ToList(); 

            }

            return View(lst);
        }
    }
}