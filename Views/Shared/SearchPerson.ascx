<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ClinicSaintJean_Ori.Models.PersonSearch>" %>

 <fieldset class="Paramfield">
     <legend class="textdefault"> Choose the search method</legend>
    <form action="<%=ViewData["SearchController"] %>" method="post">
       
          <table class="radio">
           <tr>
                <td style="height: 26px">

                    <input type="radio" name="SearchOption" id="ID" value="ID" /><label for="ID"><%=ViewData["SearchOption1"] %></label>
                </td>
           </tr>
            <tr>
                <td>
                    <input type="radio" name="SearchOption" id="Name" value="Name" /><label for="Name3"><%=ViewData["SearchOption2"]  %></label>

                </td>

           </tr>

          </table>
   
               <div class="div-default">
      
                      <%= Html.TextBox("SearchString") %>
         
                </div>
            <div class="buttondefault">  <input  id="Create"  type="submit" value="Search"  /> </div>
            
      
     
    </form>

    </fieldset>

 <% if( ViewData["Profilepics"]!=null ){%>
    <fieldset class="Paramfield">
     <legend class="textdefault"> Results</legend>
          
          <%int count = 0; foreach (string picture in (List<string>)ViewData["Profilepics"])
            { %>
        <div style="margin-bottom: 45px">
            <div style="width: 83px"> <img alt="" src="../../Pictures/Profile/<%=picture %>" id="profilePic" class="profile-img" /> </div>

            <div id="NameSurname" style="width: 287px; height: 20px; margin-left: 89px; margin-top: -55px">
            <label><a href="<%=ViewData["EditController"] %>?PersonID=<%=((List<string>)ViewData["PersonIDs"]).ElementAt(count) %>&ProfilePic=<%=picture %>"><%=((List<string>)ViewData["Names"]).ElementAt(count) %></a></label>
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