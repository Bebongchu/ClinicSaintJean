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
    
    public partial class Stock
    {
        public System.Guid StockID { get; set; }
        public System.Guid DrugID { get; set; }
        public System.Guid EmployeeID { get; set; }
        public Nullable<System.DateTime> StockDatetime { get; set; }
        public Nullable<int> Quantity { get; set; }
    
        public virtual Drug Drug { get; set; }
        public virtual Employee Employee { get; set; }
    }
}
