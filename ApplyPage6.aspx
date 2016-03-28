<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplyPage6.aspx.cs" Inherits="ApplyPage6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
     <tr>
            <th>Student Bio</th>
        </tr>
            <tr><td><asp:Label ID="Label51" runat="server" Text="Please respond to the following questions in your bio:"></asp:Label></td></tr>
           <tr> <td><asp:Label ID="Label52" runat="server" Text="1. First Name, Last Initial 2. Elements of Hip-Hop (Classes) you practice or will practice 3. How do you hope the WBL Acadmey will help you pursue your dreams 4. Hobbies and interests"></asp:Label></td></tr>
            <tr><td><asp:Label ID="Label53" runat="server" Text="Please wirte a short paragragh about yourself (5 sentences)"></asp:Label></td></tr>
            <tr><td><asp:Label ID="Label54" runat="server" Text="Pplease write in the 3rd person (EX: 'Jamie went to...' 'In their spare time, Jesse likes to..'"></asp:Label></td></tr>
            <tr><td><asp:TextBox ID="txtBioParagraph" runat="server" name="txtBioParagraph"></asp:TextBox></td>
        </tr>  
        <tr>
            <td><asp:Label ID="Label55" runat="server" Text="Are you 18 years of age or older?"></asp:Label></td>
            <td><asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Text="Yes" Value="Yes" Selected="True" name="rdoYes" />
                    <asp:ListItem Text="No" Value="No" Selected="False" name="rdoNo"/>
                </asp:RadioButtonList></td>
        </tr>  
            </table>
        <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /><asp:Button ID="Button1" runat="server" Text="Submit" /></div>
    </form>
</body>
</html>
