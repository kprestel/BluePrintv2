<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClassEvalPage2.aspx.cs" Inherits="Default3" %>

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
        <tr><td>In class I get to...</td></tr>
        <tr><td></td><td>1 Completey Agree</td><td>2 Disagree</td><td>3 Neither agree or disagree</td><td>4 Agree</td><td>5 Completely Agree</td></tr>
        <tr><td>Try new things</td>
        <td><asp:RadioButtonList ID="rdoNewThings" RepeatLayout="Table"
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
        
        <tr><td>Learn what it takes to be an artist</td>
            <td><asp:RadioButtonList ID="rdoLearn" RepeatLayout="Table"
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
        <tr><td>Use different art mediums</td>
      <td><asp:RadioButtonList ID="rdoMediums" RepeatLayout="Table"
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
        <tr><td>Make friends</td>
            <td><asp:RadioButtonList ID="rdoMakeFriends" RepeatLayout="Table"
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
        <tr><td>This class has helped me to...</td></tr>
        <tr><td></td><td>1 Completey Agree</td><td>2 Disagree</td><td>3 Neither agree or disagree</td><td>4 Agree</td><td>5 Completely Agree</td></tr>
        <tr><td>Be motivated to learn new things</td>
           <td><asp:RadioButtonList ID="rdoMotivated" RepeatLayout="Table"
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
        <tr><td>Feel happy with myself</td>
            <td><asp:RadioButtonList ID="rdoHappy" RepeatLayout="Table"
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
        <tr><td>Feel Positive about my future</td>
         <td><asp:RadioButtonList ID="rdoFuture" RepeatLayout="Table"
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
        <tr><td>Work with other young artists like me</td>
        <td><asp:RadioButtonList ID="rdoWorkWithArtists" RepeatLayout="Table"
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
         <tr><td>Use my art to deal with stress</td>
         <td><asp:RadioButtonList ID="rdoStress" RepeatLayout="Table"
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
        <tr><td>Respect people who are different than me</td>
            <td><asp:RadioButtonList ID="rdoRespect" RepeatLayout="Table"
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
        <tr><td>Resist negativity or negative peer influences</td>
           <td><asp:RadioButtonList ID="rdoNegativity" RepeatLayout="Table"
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
    <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Back_Click"/><asp:Button ID="Button1" runat="server" Text="Next" OnClick="Next_Click" />
    </div>
    </form>
</body>
</html>
