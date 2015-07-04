using System;
using System.Collections.Generic;
using System.Linq;

using System.Web;
using System.Web.Mvc;
using System.Web.Security;

using System.ComponentModel.DataAnnotations;

namespace ClinicSaintJean_Ori.Models
{
    public class EmployeeProfile
    {
        // Personal details
        [Required]       
        public string Name { get; set; }

        [Required]
        public string Surname { get; set; }

        [Required]
        public string Username { get; set; }

        [Required]
        public Guid IDType  { get; set; }

        [Required]
        public string IDNumber { get; set; }

        [Required]
        public string CellNumber { get; set; }

        [Required]
        public string Salary { get; set; }


        [Required]
        public DateTime DOB { get; set; }


        // Employee details

        [Required]
        public Guid EmpCategory { get; set; }

        [Required]
        public Guid EmpAccessLevel { get; set; }

        [Required]
        public DateTime StartDate { get; set; }

        [Required]
        public DateTime PayDay { get; set; }



    }

    public class EmployeeSearch
    {
        [Required]
        public string SearchOption { get; set; }

        [Required]
        public string SearchString { get; set; }
    }
}