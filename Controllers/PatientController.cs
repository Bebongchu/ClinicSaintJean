using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ClinicSaintJean_Ori.Controllers
{
    public class PatientController : Controller
    {
        //
        // GET: /Patient/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult AddPatient()
        {
            // Getting ID Types
            List<SelectListItem> items = new List<SelectListItem>();
            items.Add(new SelectListItem { Selected = true, Text = "hello", Value = "-1" });
            items.Add(new SelectListItem { Text = "hello2", Value = "0" });
            SelectList test = new SelectList(items, "Value", "Text");
            ViewData["IDType"] = test;


            // Getting Countries
            ViewData["Countries"] = test;
            return View();
        }

        public ActionResult SearchPatient()
        {

            return View();
        }

    }
}
