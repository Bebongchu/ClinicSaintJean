<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ClinicSaintJean_Ori.Models.ProductSearch>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Search Product
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <fieldset class="Paramfield">
     <legend class="textdefault"> Choose the search method </legend>
    <form action="/Stock/SearchProduct" method="post">
       
          <table class="radio">

         <tr>
                <td>
                    <input type="radio" name="SearchOption" id="Name" value="Name" /><label for="Name3">Name or Description</label>

                </td>

           </tr>
           <tr>
                <td style="height: 26px">

                    <input type="radio" name="SearchOption" id="ID" value="ID" /><label for="ID">Product ID</label>
                </td>
           </tr>
           

          </table>
   
               <div class="div-default">
      
                      <%= Html.TextBox("SearchString") %>
         
                </div>
            <div class="buttondefault">  <input  id="Create"  type="submit" value="Search"  /> </div>
            
      
     
    </form>

    </fieldset>

 <% if (ViewData["ProductNames"] != null)
    {%>
    <fieldset class="Paramfield">
     <legend class="textdefault"> Results</legend>
          
          <%int count = 0; foreach (string pdtname in (List<string>)ViewData["ProductNames"])
            { %>
        <div style="margin-bottom: 45px">
           

            <div id="NameSurname" style="width: 287px; height: 20px; margin-left: 89px; margin-top: -55px">
            <label><a href="<%= ViewData["EditController"] %>?ProductID=<%=((List<string>)ViewData["ProductIDs"]).ElementAt(count) %>"><%=ViewData["ProductNames"] %></a></label>
            <label>
                <br />
                <%=((List<string>)ViewData["ProductDesc"]).ElementAt(count) %></label>
                <label>
                <br />
                <%=((List<string>)ViewData["ProductPrice"]).ElementAt(count) %></label>
         </div>
            </div>
        <%count++;
            } %>
         </fieldset>

    <%}else{ %>

    <label> <%= ViewData["Error"] %> </label>
    <%} %>

</asp:Content>
