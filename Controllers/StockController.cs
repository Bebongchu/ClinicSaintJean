using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using ClinicSaintJean_Ori.Models;

namespace ClinicSaintJean_Ori.Controllers
{
    public class StockController : Controller
    {
        //
        // GET: /Stock/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult AddProduct()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AddProduct(ProductDetails product)
        {
            return View();
        }

        public ActionResult SearchProduct()
        {
            return View();
        }

        [HttpPost]
        public ActionResult SearchProduct(ProductSearch SearchParam)
        {
            // Generating possible results
            List<string> ProductIDs = new List<string>();
            ProductIDs.Add("Id1");
            ProductIDs.Add("Id2");


            List<string> ProductNames = new List<string>();
            ProductNames.Add("Product1");
            ProductNames.Add("Product2");

            List<string> ProductDesc = new List<string>();
            ProductDesc.Add("Description1");
            ProductDesc.Add("Description2");

            List<string> ProductPrice = new List<string>();
            ProductPrice.Add("R 200");
            ProductPrice.Add("R 250");

            ViewData["ProductIDs"] = ProductIDs;
            ViewData["ProductNames"] =ProductNames;
            ViewData["ProductDesc"] =ProductDesc;
            ViewData["ProductPrice"] = ProductPrice;

            ViewData["EditController"] = "/Stock/EditProduct";
            return View();
        }

        public ActionResult EditProduct()
        {
            return View();
        }
    }
}
