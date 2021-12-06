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
    public class ClientesController : Controller
    {
        // GET: Estudiante


        ClsRClientes clsclientes = new ClsRClientes();
        [HttpPost]
        public ActionResult Create(Cliente cliente)
        {
            clsclientes.Create(cliente);
            return RedirectToAction("Pago");
        }



        public ActionResult Index1()
        {
            return View();
        }
    }
}