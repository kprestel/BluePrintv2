<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClassEvalPage3.aspx.cs" Inherits="WBLDJClassEvalPage3" %>

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
        <tr><td>By participating  in class....</td></tr>
        <tr><td></td><td>1 Completey Agree</td><td>2 Disagree</td><td>3 Neither agree or disagree</td><td>4 Agree</td><td>5 Completely Agree</td></tr>
        <tr><td>I feel comfortable being creative around my peers</td>
            <td><asp:RadioButtonList ID="rdoCreative" RepeatLayout="Table"
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
        <tr><td>I can talk about careers I'm interested in</td>
           <td><asp:RadioButtonList ID="rdoCareers" RepeatLayout="Table"
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
        <tr><td>I know the steps needed to reach my career goals</td>
          <td><asp:RadioButtonList ID="rdoCareerGoals" RepeatLayout="Table"
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
        <tr><td>I better understand the importance of helping others in my community</td>
           <td><asp:RadioButtonList ID="rdoCommunity" RepeatLayout="Table"
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
        <tr><td>I am sure that I will...</td></tr>
        <tr><td></td><td>1 Completey Agree</td><td>2 Disagree</td><td>3 Neither agree or disagree</td><td>4 Agree</td><td>5 Completely Agree</td></tr>
        <tr><td>Continue growing as an artists</td>
           <td><asp:RadioButtonList ID="rdoGrowing" RepeatLayout="Table"
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
        <tr><td>Finish school (High-School/College)</td>
            <td><asp:RadioButtonList ID="rdoFinishSchool" RepeatLayout="Table"
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
        <tr><td>Be able to find and do well in a job that I enjoy</td>
            <td><asp:RadioButtonList ID="rdoFindAJob" RepeatLayout="Table"
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
