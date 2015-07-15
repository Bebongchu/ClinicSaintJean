<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ClinicSaintJean_Ori.Models.PatientProfile>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    AddPatient
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <link type="text/css" rel="stylesheet" href="../../Styles/DatePicker/bootstrap_datepicker.css" />
     <script type="text/javascript" src="../../Scripts/DatePicker/prettify.js"></script>
    
    <script src="../../Scripts/DatePicker/bootstrap_datepicker.js"></script>

    <script>
        $(function () {
            $('#dob').datepicker();
            $('#startdate').datepicker();
            $('#payday').datepicker();
        });

    </script>

    <div class="NewStaff">
        <div class="textdefault"> Add a New Patient </div>
    <form action="#a" method="get">
        <div >
    <table class="NewStaffTable">
        <tr>
            <td class="NewStaffCol1">Name</td>
            <td class="NewStaffCol2"><%= Html.TextBoxFor(m => m.Name) %></td>
             <td><%= Html.ValidationMessageFor(m => m.Name) %></td>
        </tr>
        <tr>
            <td >Surname</td>
            <td ><%= Html.TextBoxFor(m => m.Surname) %></td>
             <td><%= Html.ValidationMessageFor(m => m.Surname) %></td>
           
        </tr>

        

         <tr>
            <td >Cellphone Number</td>
            <td ><%= Html.TextBoxFor(m => m.CellNumber) %></td>
            <td><%= Html.ValidationMessageFor(m => m.CellNumber) %></td>           
        </tr>

       <tr>
            <td >ID Type</td>
            <td ><%= Html.DropDownListFor(m => m.IDType,(SelectList)ViewData["IDType"]) %></td>
             <td><%= Html.ValidationMessageFor(m => m.IDType) %></td>
           
        </tr>

        <tr>
            <td >ID Number</td>
            <td ><%= Html.TextBoxFor(m => m.IDNumber) %></td>
             <td><%= Html.ValidationMessageFor(m => m.IDNumber) %></td>
           
        </tr>

        <tr>
              <td >Email Address</td>
            <td ><%= Html.TextBoxFor(m => m.EmailAddress) %></td>

        </tr>
  
         <tr>
            <td >Date of Birth</td>
                      
              <td>
			  <div class="input-append date" id="dob" data-date="12-02-2012" data-date-format="dd-mm-yyyy">
				<input class="span2" id="Text1" size="16" type="text" value="12-02-2012" readonly="">
				<span class="add-on"><i class="icon-calendar"></i></span>
			  </div>
         
               
            </td>
        </tr>

         <tr>
            <td >Street Address</td>
            <td ><%= Html.TextBoxFor(m => m.Address_Street) %></td>
            <td><%= Html.ValidationMessageFor(m => m.Address_Street) %></td>          
        </tr>

         <tr>
            <td >Area</td>
            <td ><%= Html.TextBoxFor(m => m.Address_Area) %></td>
            <td><%= Html.ValidationMessageFor(m => m.Address_Area) %></td>          
        </tr>

         <tr>
            <td >Town</td>
            <td ><%= Html.TextBoxFor(m => m.Address_Town) %></td>
            <td><%= Html.ValidationMessageFor(m => m.Address_Town) %></td>          
        </tr>

         <tr>
            <td >Province</td>
            <td ><%= Html.TextBoxFor(m => m.Address_Province) %></td>
            <td><%= Html.ValidationMessageFor(m => m.Address_Street) %></td>          
        </tr>

          <tr>
            <td  >Country</td>
            <td ><%= Html.DropDownListFor(m => m.Address_Country,(SelectList)ViewData["Countries"]) %></td>
                    
        </tr>

        <tr>
            
            <td >Profile Picture</td>
            <td><input type="file" id="ProfilePic" name="ProfilePic"></td>
        </tr>
    </table>
            </div>
        <div class="buttondefault">
        <input id="Create"  type="submit" value="Create"  />
            </div>
</form>

</div>
</asp:Content>
