using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Trabajo_Final.Repository;
using Trabajo_Final.Models;
using Trabajo_Final.Services;

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

        public ActionResult Pago()
        {
            return View();
        }
        public ActionResult carros()
        {
            var listado = vehiculos.Lista_de_vehiculos();
            return View(listado);
        }

        public ActionResult Delete(int id)
        {
            {

                Vehiculo vehiculo = new Vehiculo();
                vehiculo.IdVehiculo = id;


                vehiculos.Delete(vehiculo);
                return RedirectToAction("cliente");
            }

        }
    }
}
