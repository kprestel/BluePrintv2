<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentEvalPage1.aspx.cs" Inherits="StudentSelf_evaluation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Words, Beats & Life</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <th>WBL DJ Student/Student Skill Evalution</th>
        </tr>
        <tr><td>Academy Student Evaluation</td></tr>
        <tr><td>Rating Scale</td></tr>
        <tr><td>(5) Exceptional</td></tr>
        <tr><td>(4) Consistently Exceeds Expectations</td></tr>
        <tr><td>(3) Meets Expectations</td></tr>
        <tr><td>(2) Needs Improvements</td></tr>
        <tr><td>(1) Unsatisfactory</td></tr>
        <tr><td>Student Name</td></tr>
        <tr><td><asp:TextBox ID="txtStudentName" runat="server" name="txtStudentName"></asp:TextBox></td></tr>
        <tr><td>Student regulary shows up for class</td></tr>
        <td><asp:RadioButtonList ID="rdoTeacherSupport" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        <tr><td>Student is consistently on time</td></tr>
        <td><asp:RadioButtonList ID="RadioButtonList1" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        <tr><td>Student was able to help contribute to the learning environment by assisting others</td></tr>
        <td><asp:RadioButtonList ID="RadioButtonList2" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        <tr><td>Student responded well to constructive criticism</td></tr>
        <td><asp:RadioButtonList ID="RadioButtonList3" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        <tr><td>Student maintained a postivie attitude both in and out of class</td></tr>
        <td><asp:RadioButtonList ID="RadioButtonList4" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        <tr><td>Student was motivated to learn</td></tr>
        <td><asp:RadioButtonList ID="RadioButtonList5" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        <tr><td>Student was able to produce a final project or skill presentation</td></tr>
        <td><asp:RadioButtonList ID="RadioButtonList6" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        <tr><td>Student was engaged in other compononents of Words, Beats & Life</td></tr> 
        <td><asp:RadioButtonList ID="RadioButtonList7" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>   
        </table>
       
        <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Next_Click"/>
    </div>
    </form>
</body>
</html>
