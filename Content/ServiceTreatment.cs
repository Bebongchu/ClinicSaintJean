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
    
    public partial class ServiceTreatment
    {
        public ServiceTreatment()
        {
            this.Employees = new HashSet<Employee>();
        }
    
        public System.Guid ServiceTreatmentID { get; set; }
        public System.Guid ServiceTreatmentTypeID { get; set; }
        public System.Guid PatientRefererID { get; set; }
        public System.Guid VisitID { get; set; }
        public Nullable<System.DateTime> ServiceDate { get; set; }
    
        public virtual PatientReferer PatientReferer { get; set; }
        public virtual ServiceTreatmentType ServiceTreatmentType { get; set; }
        public virtual Visit Visit { get; set; }
        public virtual ICollection<Employee> Employees { get; set; }
    }
}