using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ClinicSaintJean_Ori.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Main()
        {
            if (true)
            {
                List<string> menus = new List<string>();
                menus.Add("Employee");
                menus.Add("Patients");

                List<List<string>> submenus = new List<List<string>>();
                submenus.Add(new List<string>{"Register","Edit"});
                submenus.Add(null);

                List<List<string>> Links = new List<List<string>>();
                Links.Add(new List<string> { "/Staff/AddStaff", "" });

                Session["Menus"] = menus;
                Session["SubMenus"] = submenus;
                Session["Links"] = Links;

            }
            return View();
        }

        

    }
}
