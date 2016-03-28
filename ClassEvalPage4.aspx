<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClassEvalPage4.aspx.cs" Inherits="DJClassEvaluationPage4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr><th>WBL DJ Class Evaluation</th></tr> 
        <tr><td>Academy Instructor Evaluation</td></tr>        
        <tr><td>Rating Scale:</td></tr>
        <tr><td>(5) Exceptional</td></tr>
        <tr><td>(4) Consistently Exceeds Expectations</td></tr>
        <tr><td>(3) Meets Expectations</td></tr>
        <tr><td>(2) Needs Improvements</td></tr>
        <tr><td>(1) Unsatisfactory</td></tr>
        <tr><td>Teacher Name</td></tr>
        <tr><td><asp:TextBox ID="txtTeacher" runat="server" name="txtTeacher"></asp:TextBox></td></tr>
       
        <tr><td>Teacher regularly shows up to class</td>
            <td><asp:RadioButtonList ID="rdoTeacherAttendance" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        </tr>
            <tr><td>Teacher is consistently on time</td>
            <td><asp:RadioButtonList ID="rdoTeacherConsistently" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        </tr>
            <tr><td>Teacher managed students well and maintained the learning environment</td>
            <td><asp:RadioButtonList ID="rdoTeacherManaged" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        </tr>
            <tr><td>Teacher was organized</td>
            <td><asp:RadioButtonList ID="rdoTeacherOrganized" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        </tr>
            <tr><td>Teacher offered me clear feedback on how I could improve</td>
            <td><asp:RadioButtonList ID="rdoTeacherFeedback" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        </tr>
            <tr><td>Teacher fostered a safe and welcoming environment</td>
            <td><asp:RadioButtonList ID="rdoTeacherFostered" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        </tr>
            <tr><td>Teacher challenged me to learn adn develop skills</td>
            <td><asp:RadioButtonList ID="rdoTeacherChallenged" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        </tr>
            <tr><td>Activities were planned</td>
            <td><asp:RadioButtonList ID="rdoActivities" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        </tr>
            <tr><td>Teacher did their job</td>
            <td><asp:RadioButtonList ID="rdoTeacherJob" RepeatLayout="Table"
              RepeatColumns = "5" 
              RepeatDirection="Horizontal" 
              runat="server">

            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
           </asp:RadioButtonList></td>
        </tr>
            <tr><td>Teacher was supportive of my development as a young artist</td>
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
        </tr>
        </table>
        <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Back_Click" /><asp:Button ID="Button1" runat="server" Text="Next" OnClick="Next_Click" />

    </div>
    </form>
</body>
</html>
