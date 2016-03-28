<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplyPage2.aspx.cs" Inherits="ApplyPage2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
            <tr><th>Apply</th></tr>
        <tr>
            <td><asp:Label ID="lblCellPhone" runat="server" Text="Cell Phone #"></asp:Label></td>
            <td><asp:TextBox ID="txtCellPhone" runat="server" name="txtCellPhone"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblHomePhone" runat="server" Text="Home Phone #"></asp:Label></td>
            <td><asp:TextBox ID="txtHomePhone" runat="server" name="txtHomePhone"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label></td>
            <td><asp:TextBox ID="txtAge" runat="server" name="txtAge"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblGender" runat="server" Text="I identify my gender as..."></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoGender" runat="server"><asp:ListItem Text="Male" Value="Male" Selected="True" name="gender" /><asp:ListItem Text="Female" Value="Female" Selected="False" name="rdoFemale"/></asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label9" runat="server" Text="Racial and/or ethnic identity"></asp:Label></td>
       
            <td><asp:CheckBox ID="CheckBox12" runat="server" Text="American Indian or Alaska Native" Value="American Indian or Alaska Native"/></td>
        
            <td><asp:CheckBox ID="CheckBox13" runat="server" Text="Asian or Pacific Islander" Value="Asian or Pacific Islander"/></td>
      
            <td><asp:CheckBox ID="CheckBox14" runat="server" Text="Black or African American" Value="Black or African American"/></td>
      
            <td><asp:CheckBox ID="CheckBox15" runat="server" Text="White" Value="White"/></td>
      
            <td><asp:CheckBox ID="CheckBox16" runat="server" Text="Bi-Racial" Value="Bi-Racial"/></td>
       
            <td><asp:CheckBox ID="CheckBox17" runat="server" Text="Other" Value="Other"/></td>
        </tr>
            <tr><td><asp:Label ID="lblHomeAdress" runat="server" Text="Home Address"></asp:Label></td>
            <td><asp:TextBox ID="txtHomeAddress" runat="server" name="txtHomeAddress"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblApartmentNumber" runat="server" Text="Apartment Number"></asp:Label></td>
            <td><asp:TextBox ID="txtApartmentNumber" runat="server" name="txtApartmentNumber"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblCity" runat="server" Text="City"></asp:Label></td>
            <td><asp:TextBox ID="txtCity" runat="server" name="txtCity"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblState" runat="server" Text="State"></asp:Label></td>
            <td><asp:TextBox ID="txtState" runat="server" name="txtState"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblZip" runat="server" Text="Zip Code"></asp:Label></td>
            <td><asp:TextBox ID="txtZip" runat="server" name="txtZip"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblWardOfResidence" runat="server" Text="Ward of Residence"></asp:Label></td>
            <td><asp:DropDownList ID="ddWardOfResidence" runat="server">
                <asp:ListItem Text="We need the options"></asp:ListItem>
            </asp:DropDownList></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblOneCard" runat="server" Text="DC One Card #"></asp:Label></td>
            <td><asp:Label ID="Label10" runat="server" Text="If you do not have one, write 'none'"></asp:Label></td>
            <td><asp:TextBox ID="TextBox1" runat="server" name="txtZip"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label11" runat="server" Text="Parent/Guardian or Emergency Contact Information"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lbl911FName" runat="server" Text="911 Contact First Name"></asp:Label></td>
            <td><asp:TextBox ID="txt911FName" runat="server" name="txt911FName"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lbl911LName" runat="server" Text="Last Name"></asp:Label></td>
            <td><asp:TextBox ID="txt911LName" runat="server" name="txt911LName"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblRelationshipToStudent" runat="server" Text="Relationship to Student"></asp:Label></td>
            <td><asp:TextBox ID="txtRelationshipToStudent" runat="server" name="txtRelationshipToStudent"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblEmergencyCellPhone" runat="server" Text="Cell Phone #"></asp:Label></td>
            <td><asp:TextBox ID="txtEmergencyCellPhone" runat="server" name="txtEmergencyCellPhone"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblEmergencyEmail" runat="server" Text="E-mail address"></asp:Label></td>
            <td><asp:TextBox ID="txtEmergencyEmail" runat="server" name="txtEmergencyEmail"></asp:TextBox></td>
        </tr>
        
            </table>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
        <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
