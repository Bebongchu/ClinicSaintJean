<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ClinicSaintJean_Ori.Models.ProductDetails>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    AddProduct
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <div class="NewStaff">
        <div class="textdefault"> Add a New Product</div>
    <form action="#a" method="get">
       
    <table class="NewStaffTable">
        <tr>
            <td class="NewStaffCol1">Product Name</td>
            <td class="NewStaffCol2"><%= Html.TextBoxFor(m=>m.ProductName) %></td>
             <td><%= Html.ValidationMessageFor(m => m.ProductName) %></td>
        </tr>
        <tr>
            <td >Product Description</td>
            <td ><%= Html.TextBoxFor(m => m.ProductDescription) %></td>
             <td><%= Html.ValidationMessageFor(m => m.ProductDescription) %></td>
           
        </tr>

         <tr>
            <td>Quantity</td>
            <td ><%= Html.TextBoxFor(m => m.ProductQuantity) %></td>
             <td><%= Html.ValidationMessageFor(m => m.ProductQuantity) %></td>
           
        </tr>

         <tr>
            <td>Price</td>
            <td ><%= Html.TextBoxFor(m => m.ProductPrice) %></td>
             <td><%= Html.ValidationMessageFor(m => m.ProductPrice) %></td>
           
        </tr>

        </table>
         <div class="buttondefault">
        <input id="Create"  type="submit" value="Add"  />
            </div>
           </form>
     </div>

</asp:Content>
