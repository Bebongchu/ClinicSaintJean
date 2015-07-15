using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using ClinicSaintJean_Ori.Models;

namespace ClinicSaintJean_Ori.Controllers
{
    [SessionExpire]
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
            ViewData["SearchController"] = "/Patient/SearchPatient";
            ViewData["EditController"] = "/Patient/EditPatient";
            ViewData["SearchOption1"] = "ID Number";
            ViewData["SearchOption2"] = "Name or Surname";
            return View();
        }

        [HttpPost]
        public ActionResult SearchPatient(PersonSearch model)
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
            ViewData["SearchController"] = "/Patient/SearchPatient";
            ViewData["EditController"] = "/Patient/EditPatient";
            ViewData["SearchOption1"] = "ID Number";
            ViewData["SearchOption2"] = "Name or Surname";
            return View();
        }

        [HttpGet]
        public ActionResult EditPatient(string PersonID, string ProfilePic)
        {
            PatientProfile profile = new PatientProfile();

            // retrieve patient details

            profile.CellNumber = "+25454545454";
            profile.DOB = DateTime.Today;


            profile.IDNumber = "IDnumber";

            profile.Name = "name";
   
            profile.Surname = "surname";

            profile.EmailAddress = "email address";

            // Getting ID Types
            List<SelectListItem> items = new List<SelectListItem>();
            items.Add(new SelectListItem { Selected = true, Text = "hello", Value = "-1" });
            items.Add(new SelectListItem { Text = "hello2", Value = "0" });
            SelectList test = new SelectList(items, "Value", "Text");
            ViewData["IDType"] = test;


            // Profile Pic
            ViewData["PicturePic"] = ProfilePic;

            // Getting Countries
            ViewData["Countries"] = test;

            
            // Address
            profile.Address_Street = "address street";
            profile.Address_Province = "province";
            profile.Address_PostalCode = "postal code";
            profile.Address_Area = "Area";
            profile.Address_Town = "Town";


            return View(profile);
        }

    }
}
