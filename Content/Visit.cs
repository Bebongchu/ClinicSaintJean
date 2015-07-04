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
    
    public partial class Visit
    {
        public Visit()
        {
            this.PatientsTests = new HashSet<PatientsTest>();
            this.Prescriptions = new HashSet<Prescription>();
            this.ServiceTreatments = new HashSet<ServiceTreatment>();
        }
    
        public System.Guid VisitID { get; set; }
        public System.Guid PatientID { get; set; }
        public Nullable<System.DateTime> VisitDateTime { get; set; }
        public System.Guid DoctorID { get; set; }
        public Nullable<decimal> PatientWeight { get; set; }
        public Nullable<decimal> PatientTemp { get; set; }
    
        public virtual Employee Employee { get; set; }
        public virtual Patient Patient { get; set; }
        public virtual ICollection<PatientsTest> PatientsTests { get; set; }
        public virtual ICollection<Prescription> Prescriptions { get; set; }
        public virtual ICollection<ServiceTreatment> ServiceTreatments { get; set; }
    }
}