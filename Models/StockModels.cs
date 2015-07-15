using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;


namespace ClinicSaintJean_Ori.Models
{
    public class ProductDetails
    {

        [Required]
        public string ProductName { get; set; }

        [Required]
        public string ProductDescription { get; set; }

        [Required]
        public string ProductQuantity { get; set; }

        [Required]
        public string ProductPrice { get; set; }
     

    }

    public class ProductSearch
    {
        [Required]
        public string SearchOption { get; set; }

        [Required]
        public string SearchString { get; set; }
    }
}
