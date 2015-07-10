<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Home</title>
    <style type="text/css">
        #Text1 {
            height: 21px;
        }
        #Submit1 {
            text-align: center;
        }
        #Login {
            width: 103px;
            margin-left: 37px;
        }
        #Password {
            width: 181px;
            margin-left: 39px;
        }
        #Languages {
            height: 22px;
        }
        .auto-style1 {
           
            text-align: left;
            width: 20%;
        }
        .auto-style2 {
           
            text-align: center;
            width: 60%;
        }
        .auto-style3 {
            text-align: center;
            width: 20%;
        }
       
        </style>
    <link href="../../Styles/ImageSlider/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/ImageSlider/js-image-slider.js" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href="../../Styles/Tooltip/tooltip.css" />
    <script type="text/javascript" src="../../Scripts/Tooltip/tooltip.js"></script>

    <link href="../../Styles/Shared/StyleSheet1.css" rel="stylesheet" type="text/css" />

</head>
<body >
  
    <form action="/Home/Main" method="get">
    <table class="master-table">
        <tr>
            <td class="menu-logo">
                <img alt="" class="img-icon" src="../../Pictures/Logo.png" /></td>
            <td class="auto-style2">
                <input id="Username" type="text" value="Username" /><span class="header"> </span>
                <input id="Password"  type="text" value="Password" /><input id="Login"  type="submit" value="LogIn"  /> </td>
            <td class="header">
                <div id="Languages">
                    <a onmouseover="tooltip.pop(this, '#sub1', {offsetY:-10, smartPosition:false})" href="#" class="auto-style3">English</a>
                  </div>
                &nbsp;</td>
      

         </tr>
    </table>
      </form>
  
        <div style="display: none;">
   
              
    <div class="mcTooltipInner" style="left: 20px; top: 20px; width: 277px; height: 101px; position: absolute; opacity: 1;">
        <div id="sub1">
            <div class="column">            
                <a href="#">French</a><br>
                        
            </div>
          
        </div></div>
        </div>
  
    <div id="sliderFrame">
        <div id="slider">
         
            <img alt=""  src="../../Pictures/HomePicture2.jpg" />
           <img alt=""  src="../../Pictures/HomePicture3.jpg" />
           <img alt=""  src="../../Pictures/HomePicture1.jpg" />
        </div>
    </div>
        
   
        
</body>
</html>
