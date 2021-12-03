using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Trabajo_Final.Controllers
{
    public class CarrosController : Controller
    {
        // GET: Carros
        public ActionResult Autos()
        {
            return View();
        }
    }
}