<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplyPage3.aspx.cs" Inherits="ApplyPage3" %>

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
            <td><asp:Label ID="lblHealthInformation" runat="server" Text="Health Information"></asp:Label></td>
            <td><asp:Label ID="lblPhysician" runat="server" Text="Primary Physician and/or Medical Treatment Facility"></asp:Label></td>
            <td><asp:Label ID="Label12" runat="server" Text="If none just write 'none'"></asp:Label></td>
            <td><asp:TextBox ID="txtPhysician" runat="server" name="txtPhysician"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label15" runat="server" Text="Insurance Company"></asp:Label></td>
            <td><asp:TextBox ID="txtInsuranceCo" runat="server" name="txtInsuranceCo"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label13" runat="server" Text="Insurance Group Number"></asp:Label></td>
            <td><asp:Label ID="Label14" runat="server" Text="(If any)"></asp:Label></td>
            <td><asp:TextBox ID="txtInsuranceGroupNumber" runat="server" name="txtInsuranceGroupNumber"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label16" runat="server" Text="Insurance Policy Number"></asp:Label></td>
            <td><asp:Label ID="Label17" runat="server" Text="(If any)"></asp:Label></td>
            <td><asp:TextBox ID="txtInsrancePolicyNumber" runat="server" name="txtInsurancePolicyNumber"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label18" runat="server" Text="Dietary Information Rescritions"></asp:Label></td>
            <td><asp:TextBox ID="txtDietaryRestrictions" runat="server" name="txtDietaryRescritions"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label19" runat="server" Text="Allergies"></asp:Label></td>
            <td><asp:Label ID="Label20" runat="server" Text="If none, please write 'none'"></asp:Label></td>
            <td><asp:TextBox ID="txtAllergies" runat="server" name="txtAllergies"></asp:TextBox></td>
        </tr>
        </table>
        <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /><asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" />

    </div>
    </form>
</body>
</html>
