<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ClinicSaintJean_Ori.Models.EmployeeProfile>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    EditStaff
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <link type="text/css" rel="stylesheet" href="../../Styles/DatePicker/bootstrap.css" />
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
    <div class="textdefault"> Edit a Profile </div>
     <div class="textdefault"> <a href="#a"><img alt="" src="../../Pictures/Profile/<%=ViewData["PicturePic"] %>" id="profilePic" class="profile-img" style="margin-left: 0px;" /></a> </div>
     
    <form action="#a" method="post">
   
    <table class="NewStaffTable" >
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
            <td ><%= Html.LabelFor(m=>m.Username) %></td>
            <td ><%= Html.TextBoxFor(m => m.Username) %></td>
             <td><%= Html.ValidationMessageFor(m => m.Username) %></td>
           
        </tr>

        <tr>
            <td  ><%= Html.LabelFor(m=>m.Salary) %></td>
            <td> <%= Html.TextBoxFor(m => m.Salary) %></td>
             <td><%= Html.ValidationMessageFor(m => m.Salary) %></td>
           
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
            <td >Employee Title</td>
            <td ><%= Html.DropDownListFor(m => m.EmpCategory,(SelectList)ViewData["EmpCategory"]) %></td>
             <td><%= Html.ValidationMessageFor(m => m.EmpCategory) %></td>
           
        </tr>

          <tr>
            <td >Access Level</td>
            <td ><%= Html.DropDownListFor(m => m.EmpAccessLevel,(SelectList)ViewData["AccessLevel"]) %></td>
             <td><%= Html.ValidationMessageFor(m => m.EmpAccessLevel) %></td>
           
        </tr>


         <tr>
            <td >Bank Name</td>
            <td ><%= Html.TextBoxFor(m => m.BankName) %></td>
            <td><%= Html.ValidationMessageFor(m => m.BankName) %></td>          
        </tr>

        <tr>
            <td >Account Number</td>
            <td><%= Html.TextBoxFor(m => m.AccountNumber) %></td>
            <td><%= Html.ValidationMessageFor(m => m.AccountNumber) %></td>          
        </tr>

         <tr>
            <td >Branch Name</td>
            <td><%= Html.TextBoxFor(m => m.BranchName) %></td>
            <td><%= Html.ValidationMessageFor(m => m.BranchName) %></td>          
        </tr>

         <tr>
            <td  >Branch Code</td>
            <td> <%= Html.TextBoxFor(m => m.Branchcode) %></td>
            <td><%= Html.ValidationMessageFor(m => m.Branchcode) %></td>          
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
            <td >Start Date</td>
                      
              <td>
			  <div class="input-append date" id="startdate" data-date="12-02-2012" data-date-format="dd-mm-yyyy">
				<input class="span2" id="Text2" size="16" type="text" value="12-02-2012" readonly="">
				<span class="add-on"><i class="icon-calendar"></i></span>
			  </div>
         
               
            </td>
        </tr>

         <tr>
            <td  >Pay Day</td>
                      
              <td>
			  <div class="input-append date" id="payday" data-date="12-02-2012" data-date-format="dd-mm-yyyy">
				<input class="span2" id="Text3" size="16" type="text" value="12-02-2012" readonly="">
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
            <td >Country</td>
            <td ><%= Html.DropDownListFor(m => m.Address_Country,(SelectList)ViewData["Countries"]) %></td>
                    
        </tr>

        <tr>
            
            <td >Profile Picture</td>
            <td><input type="file" id="File1" name="ProfilePic"></td>
        </tr>
     
    </table>
       
        <div class="buttondefault">
         <input id="Update"  type="submit" value="Update"  />
         </div>
</form>
</div>


</asp:Content>
