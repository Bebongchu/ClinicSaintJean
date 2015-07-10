<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClinicSaintJean_Ori.Models.EmployeeSearch>" %>

 <fieldset class="Paramfield">
     <legend> Choose the search method</legend>
    <form action="/Staff/SearchStaff" method="post">
       
          <table class="radio">
           <tr>
                <td style="height: 26px">

                    <input type="radio" name="SearchOption" id="ID" value="ID" /><label for="ID">ID Number</label>
                </td>

           </tr>

            <tr>
                <td>
                    <input type="radio" name="SearchOption" id="Name" value="Name" /><label for="Name3">Name or Surname</label>

                </td>

           </tr>

          </table>
                
       
      
               <div class="div-default">
      
                      <%= Html.TextBox("SearchString") %>
                 
                </div>
      
     
             <input class="buttondefault" id="Create"  type="submit" value="Search"  />
      
     
    </form>

    </fieldset>

 <% if( ViewData["Profilepics"]!=null ){%>
    <fieldset class="Paramfield">
     <legend> Results</legend>
          
          <%int count = 0; foreach (string picture in (List<string>)ViewData["Profilepics"])
            { %>
        <div style="margin-bottom: 45px">
            <div style="width: 83px"> <img alt="" src="../../Pictures/Profile/<%=picture %>" id="profilePic" class="profile-img" /> </div>

            <div id="NameSurname" style="width: 287px; height: 20px; margin-left: 89px; margin-top: -55px">
            <label><a href="/Staff/EditStaff?PersonID=<%=((List<string>)ViewData["PersonIDs"]).ElementAt(count) %>&ProfilePic=<%=picture %>"><%=((List<string>)ViewData["Names"]).ElementAt(count) %></a></label>
            <label>
                <br />
                <%=((List<string>)ViewData["Titles"]).ElementAt(count) %></label>
         </div>
            </div>
        <%count++;
            } %>
         </fieldset>

    <%}else{ %>

    <label> <%= ViewData["Error"] %> </label>
    <%} %>