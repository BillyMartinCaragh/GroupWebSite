<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

 
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <title>My Website</title>
    <script type="text/javascript" src="../JavaScript/jquery-1.3.2.min.js"></script>
    <script type="text/javascript">
        function mainmenu() {
            $(" #nav ul ").css({ display: "none" }); // Opera Fix

            $(" #nav li").hover(function () {
                $(this).find('ul:first').css({ visibility: "visible", display: "none" }).show(400);
            }
            , function () {
                $(this).find('ul:first').css({ visibility: "hidden" });
            });
        }

        $(document).ready(function () {
            mainmenu();
        });
    </script>
    <link rel="stylesheet" type="text/css" href="Css/StyleSheet.css" />
</head>
<body>
    
    <div id="wrapper">
        <div id="banner">
        </div>
        <div id="navigation">
            <ul id="nav">
                <li><a id="A1" href="MainPage.aspx" runat="server">Home</a></li>
                <li><a href="BookPage.aspx">Books</a></li>
                <li><a href="AboutUs.aspx">AboutUs</a></li>
                <li>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Go To Basket" />
                </li>
            </ul>
        </div>
        <div id="content_area">
            
            HI

  
            <br />
            <br />
            WE
            <br />
            <br />
            ARE<br />
            <br />
            TEAM<br />
            <br />
            SIX</div>
        
        <div id="footer">
            <p>All Rights reserved. Team 06. CS230. 2014.&copy</p>
        </div>
    
    </div>
    </form>
</body>
</html>
