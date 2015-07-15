using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;
namespace ClinicSaintJean_Ori.Models
{
    public class PersonSearch
    {
        [Required]
        public string SearchOption { get; set; }

        [Required]
        public string SearchString { get; set; }
    }
}
