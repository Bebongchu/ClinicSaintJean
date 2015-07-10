using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace ClinicSaintJean_Ori.Models
{
    public class PatientProfile
    {
        // Personal details
        [Required]
        public string Name { get; set; }

        [Required]
        public string Surname { get; set; }

        

        [Required]
        public Guid IDType { get; set; }

        [Required]
        public string IDNumber { get; set; }

        [Required]
        public string CellNumber { get; set; }

        

        [EmailAddress]
        public string EmailAddress { get; set; }

        [Required]
        public DateTime DOB { get; set; }



        public HttpPostedFile ProfilePic { get; set; }

        // Address

        public string Address_Street { get; set; }

        public string Address_Area { get; set; }

        public string Address_Town { get; set; }

        public string Address_Province { get; set; }

        public string Address_Country { get; set; }

        public string Address_PostalCode { get; set; }
    }

    public class PatientSearch
    {
        [Required]
        public string SearchOption { get; set; }

        [Required]
        public string SearchString { get; set; }
    }
}