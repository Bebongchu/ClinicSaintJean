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
    
    public partial class PaymentMode
    {
        public PaymentMode()
        {
            this.Payments = new HashSet<Payment>();
        }
    
        public System.Guid PaymentModeID { get; set; }
        public string PaymentModeDesc { get; set; }
    
        public virtual ICollection<Payment> Payments { get; set; }
    }
}
