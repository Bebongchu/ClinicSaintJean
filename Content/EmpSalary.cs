//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ClinicSaintJean_Ori.Content
{
    using System;
    using System.Collections.Generic;
    
    public partial class EmpSalary
    {
        public System.Guid EmployeeID { get; set; }
        public System.DateTime EmpLastSalaryAdjust { get; set; }
        public Nullable<decimal> EmpSalary1 { get; set; }
    
        public virtual Employee Employee { get; set; }
    }
}
