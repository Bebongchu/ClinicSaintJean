﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class ClinicSaintJeanEntities : DbContext
    {
        public ClinicSaintJeanEntities()
            : base("name=ClinicSaintJeanEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<AccessLevel> AccessLevels { get; set; }
        public DbSet<ActivityType> ActivityTypes { get; set; }
        public DbSet<Compagny> Compagnies { get; set; }
        public DbSet<Drug> Drugs { get; set; }
        public DbSet<DrugsPriceHistoty> DrugsPriceHistoties { get; set; }
        public DbSet<EmployeeCategory> EmployeeCategories { get; set; }
        public DbSet<Employee> Employees { get; set; }
        public DbSet<EmpSalary> EmpSalaries { get; set; }
        public DbSet<Entity> Entities { get; set; }
        public DbSet<IndentifcationType> IndentifcationTypes { get; set; }
        public DbSet<LabTest> LabTests { get; set; }
        public DbSet<labTestsMaterial> labTestsMaterials { get; set; }
        public DbSet<LogOnHistory> LogOnHistories { get; set; }
        public DbSet<PatientReferer> PatientReferers { get; set; }
        public DbSet<Patient> Patients { get; set; }
        public DbSet<PatientsTest> PatientsTests { get; set; }
        public DbSet<PaymentMode> PaymentModes { get; set; }
        public DbSet<Payment> Payments { get; set; }
        public DbSet<Person> Persons { get; set; }
        public DbSet<Prescription> Prescriptions { get; set; }
        public DbSet<Rooster> Roosters { get; set; }
        public DbSet<ServiceTreatmentDrug> ServiceTreatmentDrugs { get; set; }
        public DbSet<ServiceTreatmentFeeHist> ServiceTreatmentFeeHists { get; set; }
        public DbSet<ServiceTreatment> ServiceTreatments { get; set; }
        public DbSet<ServiceTreatmentType> ServiceTreatmentTypes { get; set; }
        public DbSet<Stock> Stocks { get; set; }
        public DbSet<Visit> Visits { get; set; }
    
        public virtual int ClStJeanCreateTables()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ClStJeanCreateTables");
        }
    }
}