<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>
<style type="text/css">
    html {background-color: black}
        #form1 {
          
           background-color: #000;
           font-family: Courier;
	       color: white;
	       font-size:20px;
            
        }
        .auto-style1 {
            background-color: #000;
        }

        .auto-style2 {
            width: 200px;
        }
         </style>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Words Beats & Life Inc. | Teaching Convening Presenting Hip-Hop Since 2002</title>
</head>
<body>
    <div
        class="container">
        <header>
          <img src="http://www.wblinc.org/wp-content/uploads/2015/05/logo-transparent-04-30-15.png" alt="Words Beats & Life Inc. | Teaching Convening Presenting Hip-Hop Since 2002" />
            
        </header>
        </div> 

    <form id="form1" runat="server">
    <div>
        

        Words Beats & Life Inc. | Teaching Convening Presenting Hip-Hop Since 2002</div>
        <asp:Login
        id="Login"
        OnAuthenticate="Login_Authenticate"  
        DestinationPageUrl="Fuck You.aspx"    
        Runat="server"  />
        <br />
        <asp:Label ID="Label5" runat="server" Text="If you don't have a Words, Beats & Life account please apply"></asp:Label>
        <asp:Button ID="Button2" runat="server" Text="Apply" OnClick="Button2_Click" />
      
    </form>
   
</body>
</html>
