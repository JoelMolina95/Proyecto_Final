using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Trabajo_Final.Repository;

namespace Trabajo_Final.Controllers
{
    public class CarrosController : Controller
    {
        ClsRVehiculos vehiculos = new ClsRVehiculos();
        // GET: Carros
        public ActionResult Autos()
        {
            return View();
        }
        public ActionResult carros()
        {
            var listado=vehiculos.Lista_de_vehiculos();
            return View(listado);
        }



    }
}