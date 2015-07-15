using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ClinicSaintJean_Ori.Controllers
{
    public class ServiceTreamentController : Controller
    {
        //
        // GET: /ServiceTreament/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult AddServiceTreatment()
        {
            return View();
        }

    }
}
