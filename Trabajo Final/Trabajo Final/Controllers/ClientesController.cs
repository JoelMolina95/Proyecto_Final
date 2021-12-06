using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Trabajo_Final.Models;

namespace Trabajo_Final.Controllers
{
    public class ClientesController : Controller
    {
        private SPEED_RACEREntities db = new SPEED_RACEREntities();

        // GET: Clientes
        public ActionResult Index()
        {
            return View(db.Cliente.ToList());
        }

       
    }
}
