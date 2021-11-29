using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Trabajo_Final.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Autos()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Compra()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}