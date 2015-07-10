using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

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
                FormsAuthentication.SetAuthCookie("username", false);

                
                List<string> menus = new List<string>();
                menus.Add("Employee");
                menus.Add("Patients");

                List<List<string>> submenus = new List<List<string>>();
                submenus.Add(new List<string>{"Create","Edit"});
                submenus.Add(new List<string> { "Create", "Edit" });

                List<List<string>> Links = new List<List<string>>();
                Links.Add(new List<string> { "/Staff/AddStaff", "/Staff/SearchStaff" }); // Links per menus
                Links.Add(new List<string> { "/Patient/AddPatient", "/Patient/SearchPatient" }); // Links per menus

                Session["Menus"] = menus;
                Session["SubMenus"] = submenus;
                Session["Links"] = Links;
                Session["Username"] = "username";
            }
            return View();
        }

        

    }
}
