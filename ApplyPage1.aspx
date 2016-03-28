<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplyPage1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Words, Beats & Life</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr><th><asp:Label ID="Label69" runat="server" Text="Apply"></asp:Label></th></tr>
        <tr>
            <td><asp:Label ID="lblDateLastEnrollment" runat="server" Text="Date of Last WBL Enrollment"></asp:Label></td>
            <td><asp:TextBox ID="txtDateLastEnrollment" runat="server" name="txtDateLastEnrollment"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblFName" runat="server" Text="First Name"></asp:Label></td>
            <td><asp:TextBox ID="txtFName" runat="server" name="txtFName"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblLName" runat="server" Text="Last Name"></asp:Label></td>
            <td><asp:TextBox ID="txtLName" runat="server" name="txtLastName"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblAcademySite" runat="server" Text="lblAcademySite"></asp:Label></td>
            <td><asp:CheckBox ID="chkStStevens" runat="server" Text="St. Steven's Church (1525 Newton St. NW 20010)"/></td>
            <td></td><td><asp:CheckBox ID="chkRiverside" runat="server" Text="Riverside Center (5202 Foote St. NE 20019)"/></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblApprenticeStudent" runat="server" Text="Are you an apprentice student?"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoApprecticeList" runat="server"><asp:ListItem Text="Yes" Value="Yes" Selected="True" name="rdoYes" /><asp:ListItem Text="No" Value="No" Selected="False" name="rdoNo"/></asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblClassEnrollment" runat="server" Text="Class Enrollment"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lbl1" runat="server" Text="Sign up for as many classes you want to take!"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lbl2" runat="server" Text="Everything is FREE!"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lbl3" runat="server" Text="Apprectice students are REQUIRED to take Hip-Hop As Theater, please select ONE date to attend"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lblRequestingClasses" runat="server" Text="Classes Requesting Enrollment (St.Stephen's)"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="lbl4" runat="server" Text="The calsses offered at St. Stephen's. IMPORTANT if you wish to participate in the Murals DC program and get paid for your work you must take the 'Fine Art' class IN ADDITION TO either 'Street Art' or 'Black Book' class"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:CheckBox ID="CheckBox1" runat="server" Text="We should do something way cooler with calendar or query to pick classes"/></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="Classes Requesting Enrollment (Riverside)"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:CheckBox ID="CheckBox2" runat="server" Text="We should do something way cooler with calendar or query to pick classes"/></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Classes Requesting Enrollement (BARS)"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:CheckBox ID="CheckBox3" runat="server" Text="We should do something way cooler with calendar or query to pick classes"/></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Ward of Program"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:CheckBox ID="CheckBox4" runat="server" Text="1 (St. Stephens Church)"/></td>
      
            <td><asp:CheckBox ID="CheckBox5" runat="server" Text="1 (MLK Memorial Library)"/></td>
        
            <td><asp:CheckBox ID="CheckBox6" runat="server" Text="7 (Riverside Center)"/></td>
       
            <td><asp:CheckBox ID="CheckBox7" runat="server" Text="N/A (BARS)"/></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="PSA of Program"></asp:Label></td>
      
            <td><asp:CheckBox ID="CheckBox8" runat="server" Text="302 (St. Stephens Church)"/></td>
       
            <td><asp:CheckBox ID="CheckBox9" runat="server" Text="101 (MLK Library)"/></td>
       
            <td><asp:CheckBox ID="CheckBox10" runat="server" Text="608 (Riverside Center)"/></td>
       
            <td><asp:CheckBox ID="CheckBox11" runat="server" Text="N/A (BARS)"/></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label5" runat="server" Text="2. Volunteer Requirement"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label6" runat="server" Text="WBL Academy Students (not just Apprentices) are required to attend one WBL event as a volunteer and particpate in one 'Our Block' Community Cleanup per session of enrollment. By signing below, you are confimring your acknowledgement of this policy and intent to particpate in classes this section"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label7" runat="server" Text="I acknowledge that as a Words, Beats & Life Academy Student, I am requried to attend at lease one 'Our Block' Community Cleanup and volunteer at WBL event. Failure to do so will jeopardize my ability to take classes, perform with WBL, and reap any other benefits typically offered to WBL students."></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label8" runat="server" Text="Signature"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:TextBox ID="txtSignatureBox" runat="server"></asp:TextBox></td>
        </tr>
    </table>
        <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
