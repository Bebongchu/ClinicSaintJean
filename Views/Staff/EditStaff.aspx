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

    <form action="#a" method="post">
    <table class="NewStaff" style="width:68%; margin-left: 129px;">
        <tr>
            <td style="height: 25px; width: 189px">Name</td>
            <td style="height: 25px"><%= Html.TextBoxFor(m => m.Name) %></td>
             <td><%= Html.ValidationMessageFor(m => m.Name) %></td>
        </tr>
        <tr>
            <td style="width: 189px" class="modal-sm">Surname</td>
            <td style="height: 25px"><%= Html.TextBoxFor(m => m.Surname) %></td>
             <td><%= Html.ValidationMessageFor(m => m.Surname) %></td>
           
        </tr>

         <tr>
            <td style="width: 189px" class="modal-sm"><%= Html.LabelFor(m=>m.Username) %></td>
            <td style="height: 25px"><%= Html.TextBoxFor(m => m.Username) %></td>
             <td><%= Html.ValidationMessageFor(m => m.Username) %></td>
           
        </tr>

        <tr>
            <td style="width: 189px" class="modal-sm"><%= Html.LabelFor(m=>m.Salary) %></td>
            <td style="height: 25px"><%= Html.TextBoxFor(m => m.Salary) %></td>
             <td><%= Html.ValidationMessageFor(m => m.Salary) %></td>
           
        </tr>

         <tr>
            <td style="width: 189px" class="modal-sm">Cellphone Number</td>
            <td style="height: 25px"><%= Html.TextBoxFor(m => m.CellNumber) %></td>
            <td><%= Html.ValidationMessageFor(m => m.CellNumber) %></td>           
        </tr>

       <tr>
            <td style="width: 189px" class="modal-sm">ID Type</td>
            <td style="height: 25px"><%= Html.DropDownListFor(m => m.IDType,(SelectList)ViewData["IDType"]) %></td>
             <td><%= Html.ValidationMessageFor(m => m.IDType) %></td>
           
        </tr>

        <tr>
            <td style="width: 189px" class="modal-sm">ID Number</td>
            <td style="height: 25px"><%= Html.TextBoxFor(m => m.IDNumber) %></td>
             <td><%= Html.ValidationMessageFor(m => m.IDNumber) %></td>
           
        </tr>

       

       <tr>
            <td style="width: 189px" class="modal-sm">Employee Title</td>
            <td style="height: 25px"><%= Html.DropDownListFor(m => m.EmpCategory,(SelectList)ViewData["EmpCategory"]) %></td>
             <td><%= Html.ValidationMessageFor(m => m.EmpCategory) %></td>
           
        </tr>

          <tr>
            <td style="width: 189px" class="modal-sm">Access Level</td>
            <td style="height: 25px"><%= Html.DropDownListFor(m => m.EmpAccessLevel,(SelectList)ViewData["AccessLevel"]) %></td>
             <td><%= Html.ValidationMessageFor(m => m.EmpAccessLevel) %></td>
           
        </tr>

         <tr>
            <td style="width: 189px" class="modal-sm">Date of Birth</td>
                      
              <td>
			  <div class="input-append date" id="dob" data-date="<%= Model.DOB.ToShortDateString() %>" data-date-format="dd-mm-yyyy">
				<input class="span2" id="Text1" size="16" type="text" value="<%= ((Model.DOB.Day<10)?"0"+Model.DOB.Day.ToString():Model.DOB.Day.ToString()) +"-"+ ((Model.DOB.Day<10)?"0"+Model.DOB.Month.ToString():Model.DOB.Day.ToString()) +"-"+ Model.DOB.Year.ToString() %>" readonly="">
				<span class="add-on"><i class="icon-calendar"></i></span>
			  </div>
         
               
            </td>
        </tr>

        <tr>
            <td style="width: 189px" class="modal-sm">Start Date</td>
                      
              <td>
			  <div class="input-append date" id="startdate" data-date="<%= Model.StartDate.ToShortDateString() %>" data-date-format="dd-mm-yyyy">
				<input class="span2" id="Text2" size="16" type="text" value="<%= ((Model.StartDate.Day<10)?"0"+Model.StartDate.Day.ToString():Model.StartDate.Day.ToString()) +"-"+ ((Model.StartDate.Day<10)?"0"+Model.StartDate.Month.ToString():Model.StartDate.Day.ToString()) +"-"+Model.StartDate.Year.ToString() %>" readonly="">
				<span class="add-on"><i class="icon-calendar"></i></span>
			  </div>
         
               
            </td>
        </tr>

         <tr>
            <td style="width: 189px" class="modal-sm">Pay Day</td>
                      
              <td>
			  <div class="input-append date" id="payday" data-date="<%= Model.PayDay.ToShortDateString() %>" data-date-format="dd-mm-yyyy">
				<input class="span2" id="Text3" size="16" type="text" value="<%= ((Model.PayDay.Day<10)?"0"+Model.PayDay.Day.ToString():Model.PayDay.Day.ToString()) +"-"+ ((Model.PayDay.Day<10)?"0"+Model.PayDay.Month.ToString():Model.PayDay.Day.ToString()) +"-"+Model.PayDay.Year.ToString() %>" readonly="">
				<span class="add-on"><i class="icon-calendar"></i></span>
			  </div>
         
               
            </td>
        </tr>

        <tr> <td>
            <input id="Update"  type="submit" value="Update"  />
            </td></tr>
    </table>
</form>



</asp:Content>
