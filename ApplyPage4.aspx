<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplyPage4.aspx.cs" Inherits="ApplyPage4" %>

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
            <td><asp:Label ID="Label21" runat="server" Text="Education"></asp:Label></td>
            <td><asp:Label ID="Label22" runat="server" Text="StudentStatus"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoStudentStatus" runat="server"><asp:ListItem Text="Not In School" Value="Not In School" Selected="True" name="rdoNotInSchool" /><asp:ListItem Text="Attending School" Value="Attending School" Selected="False" name="rdoAttendingSchool"/></asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label23" runat="server" Text="Current Grade/Year in School"></asp:Label></td>
            <td><asp:TextBox ID="txtCurrentGrade" runat="server" name="txtCurrentGrade"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label24" runat="server" Text="School and/or program name"></asp:Label></td>
            <td><asp:TextBox ID="txtSchool" runat="server" name="txtSchool"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label25" runat="server" Text="Expected Year of Graduation"></asp:Label></td>
            <td><asp:Label ID="Label26" runat="server" Text="8th Grade, High School, or College Graduation"></asp:Label></td>
            <td><asp:TextBox ID="txtGraduation" runat="server" name="txtGraduation"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label27" runat="server" Text="Do you plan on going to college or a trade school?"></asp:Label></td>
            <td><asp:DropDownList ID="ddCollege" runat="server">
                <asp:ListItem Text="Yes"></asp:ListItem>
                <asp:ListItem Text="No"></asp:ListItem>
            </asp:DropDownList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label28" runat="server" Text="What would you like to major in?"></asp:Label></td>
            <td><asp:TextBox ID="txtMajor" runat="server" name="txtMajor"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label29" runat="server" Text="What college/trade school would you want to go to?"></asp:Label></td>
            <td><asp:TextBox ID="txtCollege" runat="server" name="txtCollege"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label30" runat="server" Text="Past Education Information"></asp:Label></td>
            <td><asp:Label ID="Label31" runat="server" Text="Name of last school attended"></asp:Label></td>
            <td><asp:TextBox ID="txtLastSchool" runat="server" name="txtLastSchool"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label32" runat="server" Text="Year of Graduation"></asp:Label></td>
            <td><asp:TextBox ID="txtGraduationYear" runat="server" name="txtGraduationYear"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label33" runat="server" Text="What did you study?"></asp:Label></td>
            <td><asp:TextBox ID="txtWhatDidYouStudy" runat="server" name="txtWhatDidYouStudy"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label34" runat="server" Text="Do you plan on furthering your education?"></asp:Label></td>
            <td><asp:Label ID="Label35" runat="server" Text="I.E. College, Grad School, Trade School, Certificate Program, etc."></asp:Label></td>
            <td><asp:DropDownList ID="ddFurtheringEducation" runat="server">
                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="No"></asp:ListItem>
            </asp:DropDownList></td>
        </tr>
        </table>
        <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /><asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" />

    </div>
    </form>
</body>
</html>
