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
    
    public partial class ActivityType
    {
        public ActivityType()
        {
            this.Roosters = new HashSet<Rooster>();
        }
    
        public System.Guid ActivityTypeID { get; set; }
        public string ActivityTypeDesc { get; set; }
    
        public virtual ICollection<Rooster> Roosters { get; set; }
    }
}
