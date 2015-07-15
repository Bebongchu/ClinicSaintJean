using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ClinicSaintJean_Ori.Models;
using System.Web.Security;

namespace ClinicSaintJean_Ori.Controllers
{
    [Authorize]
    [SessionExpire]
    public class StaffController : Controller
    {
        //
        // GET: /Staff/

        public ActionResult AddStaff()
        {

            // Getting ID Types
            List<SelectListItem> items = new List<SelectListItem>();
            items.Add(new SelectListItem{Selected = true, Text = "hello", Value = "-1"});
            items.Add(new SelectListItem { Text = "hello2", Value = "0" });
            SelectList test = new SelectList(items,"Value","Text");        
            ViewData["IDType"] = test;


            // Getting Employee Categories
            ViewData["EmpCategory"] = test;


            // Getting Employee Acess Levels
            ViewData["AccessLevel"] = test;

            // Getting Countries
            ViewData["Countries"] = test;


         
            return View();
        }

        [HttpPost]
        public ActionResult AddStaff(EmployeeProfile profile)
        {

            return View();
        }

        public ActionResult SearchStaff()
        {


            return View();
        }

        [HttpPost]
        public ActionResult SearchStaff(PersonSearch model)
        {

            // Search for the names and profile pics


            if (true) // if search is succesfull
            {
                // Add names, profile pics and personids to the viewdata
                List<string> profilepics = new List<string>();
                profilepics.Add("Logo.png");
                profilepics.Add("Logo.png");
                profilepics.Add("Logo.png");
                profilepics.Add("Logo.png");

                List<string> NameSurname = new List<string>();
                NameSurname.Add("Name Surname");
                NameSurname.Add("Name Surname2");
                NameSurname.Add("Name Surname2");
                NameSurname.Add("Name Surname2");

                List<string> PersonIds = new List<string>();
                PersonIds.Add("id1");
                PersonIds.Add("id2");
                PersonIds.Add("id2");
                PersonIds.Add("id2");

                // Titles
                List<string> Titles = new List<string>();
                Titles.Add("Title 1");
                Titles.Add("Title 2");
                Titles.Add("Title 2");
                Titles.Add("Title 2");

                ViewData["Profilepics"] = profilepics;
                ViewData["Names"] = NameSurname;
                ViewData["PersonIDs"] = PersonIds;
                ViewData["Titles"] = Titles;
            }
            else
            {
                ViewData["Error"] = "No Results could be found! Please try a different option";
            }
            return View();
        }

        [HttpGet]
        public ActionResult EditStaff(string PersonID, string ProfilePic)
        {
            EmployeeProfile profile = new EmployeeProfile();

            // retrieve employee details

            profile.CellNumber = "+25454545454";
            profile.DOB = DateTime.Today;
    
         
            profile.IDNumber = "IDnumber";
        
            profile.Name = "name";
            profile.PayDay = DateTime.Today;

           

            profile.Salary = "2000";
            profile.StartDate = DateTime.Today.AddDays(2);
            profile.Surname = "surname";
            profile.Username = "username";

            // Getting ID Types
            List<SelectListItem> items = new List<SelectListItem>();
            items.Add(new SelectListItem { Selected = true, Text = "hello", Value = "-1" });
            items.Add(new SelectListItem { Text = "hello2", Value = "0" });
            SelectList test = new SelectList(items, "Value", "Text");
            ViewData["IDType"] = test;


            // Getting Employee Categories
            ViewData["EmpCategory"] = test;


            // Getting Employee Acess Levels
            ViewData["AccessLevel"] = test;

            // Profile Pic
            ViewData["PicturePic"] = ProfilePic;

            // Getting Countries
            ViewData["Countries"] = test;

            return View(profile);
        }
    }
}
