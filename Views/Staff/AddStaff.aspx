<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>




<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    AddStaff
  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   <link type="text/css" rel="stylesheet" href="../../Styles/DatePicker/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="../../Styles/DatePicker/bootstrap_datepicker.css" />
     <script type="text/javascript" src="../../Scripts/DatePicker/prettify.js"></script>
    
    <script src="../../Scripts/DatePicker/bootstrap_datepicker.js"></script>

    <script>
        $(function () {
            $('#dp3').datepicker();
        });

    </script>

    <form id="form1" runat="server">
    <table class="NewStaff" style="width:68%; margin-left: 129px;">
        <tr>
            <td style="height: 25px; width: 189px">Name</td>
            <td style="height: 25px"></td>
            <td style="height: 25px"></td>
        </tr>
        <tr>
            <td style="width: 189px" class="modal-sm">Surname</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 189px" class="modal-sm">Date of Birth</td>
            
            
              <td>
			  <div class="input-append date" id="dp3" data-date="12-02-2012" data-date-format="dd-mm-yyyy">
				<input class="span2" size="16" type="text" value="12-02-2012" readonly="">
				<span class="add-on"><i class="icon-calendar"></i></span>
			  </div>
         
               
            </td>
        </tr>
    </table>
</form>



</asp:Content>
