<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplyPage5.aspx.cs" Inherits="ApplyPage5" %>

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
            <td><asp:Label ID="Label36" runat="server" Text="Employment History"></asp:Label></td>
            <td><asp:Label ID="Label37" runat="server" Text="Do you currently have a job?"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoEmployed" runat="server"><asp:ListItem Text="Yes" Value="Yes" Selected="True" name="rdoYes" /><asp:ListItem Text="No" Value="No" Selected="False" name="rdoNo"/></asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label38" runat="server" Text="If yes, where do you work? What do you do?"></asp:Label></td>
            <td><asp:TextBox ID="txtEmployedAt" runat="server" name="txtEmployedAt"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label39" runat="server" Text="How much money do you make per hour?"></asp:Label></td>
            <td><asp:TextBox ID="txtHourlyWage" runat="server" name="txtHourlyWage"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label40" runat="server" Text="Do you have a career goal? If yes, what is it?"></asp:Label></td>
            <td><asp:TextBox ID="txtCareerGoal" runat="server" name="txtCareerGoal"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label41" runat="server" Text="How much money do you want to make per hour?"></asp:Label></td>
            <td><asp:TextBox ID="txtDesiredIncome" runat="server" name="txtDesiredIncome"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label43" runat="server" Text="Do you currently have a resume?"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoResume" runat="server"><asp:ListItem Text="Yes" Value="Yes" Selected="True" name="rdoYes" /><asp:ListItem Text="No" Value="No" Selected="False" name="rdoNo"/><asp:ListItem Text="What's a resume?" Value="What's a resume?" Selected="False" name="rdoNo"/></asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label44" runat="server" Text="Do you have an artisitic resume?"></asp:Label></td>
            
            <td><asp:RadioButtonList ID="rdoArtisticResume" runat="server"><asp:ListItem Text="Yes" Value="Yes" Selected="True" name="rdoYes" /><asp:ListItem Text="No" Value="No" Selected="False" name="rdoNo"/><asp:ListItem Text="What's an artisitc resume?" Value="What's an artistic resume?" Selected="False" name="rdoNo"/></asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label42" runat="server" Text="Which of the following workshops would you like to participate in?"></asp:Label></td>
        </tr>
         <tr>
            <td><asp:Label ID="Label46" runat="server" Text="Check ALL that apply. If none, check none"></asp:Label></td>
      
            <td><asp:CheckBox ID="CheckBox18" runat="server" Text="Preparing for College" Value="Preparing for College"/></td>
      
            <td><asp:CheckBox ID="CheckBox19" runat="server" Text="Interviewing Skills" Value="Interviewing Skills"/></td>
        
            <td><asp:CheckBox ID="CheckBox20" runat="server" Text="Resume Development" Value="Resume Development"/></td>
        
            <td><asp:CheckBox ID="CheckBox21" runat="server" Text="Intellectual Property" Value="Intellectual Property"/></td>
       
            <td><asp:CheckBox ID="CheckBox22" runat="server" Text="Portfolio Building" Value="Portfolio Building"/></td>
     
            <td><asp:CheckBox ID="CheckBox23" runat="server" Text="None" Value="None"/></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label56" runat="server" Text="Skill Mastery"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label57" runat="server" Text="Skill Level"></asp:Label></td>
        </tr>
        <tr>
         <td><asp:Label ID="Label58" runat="server" Text="Please Check your experience or interest level in each element"></asp:Label></td>
        </tr>
        <table>
    <tr>
            <td><asp:Label ID="Label59" runat="server" Text="DJ'ing"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoDJing" runat="server">
                        <asp:ListItem Text="No Experience" Value="No Experience" Selected="False" name="rdoNoExperience" />
                        <asp:ListItem Text="Beginner" Value="Beginner" Selected="False" name="rdoBeginner"/>
                        <asp:ListItem Text="Intermediate" Value="Intermediate" Selected="False" name="rdoIntermediate"/>
                        <asp:ListItem Text="Advanced" Value="Advanced" Selected="False" name="rdoAdvanced"/>
                        <asp:ListItem Text="Interested in Learning" Value="Interested in learning" Selected="False" name="rdoInterestedInLearning"/>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label60" runat="server" Text="Graffiti"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoGraffiti" runat="server">
                        <asp:ListItem Text="No Experience" Value="No Experience" Selected="False" name="rdoNoExperience" />
                        <asp:ListItem Text="Beginner" Value="Beginner" Selected="False" name="rdoBeginner"/>
                        <asp:ListItem Text="Intermediate" Value="Intermediate" Selected="False" name="rdoIntermediate"/>
                        <asp:ListItem Text="Advanced" Value="Advanced" Selected="False" name="rdoAdvanced"/>
                        <asp:ListItem Text="Interested in Learning" Value="Interested in learning" Selected="False" name="rdoInterestedInLearning"/>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label61" runat="server" Text="MC'ing/Rapping"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoMCing" runat="server">
                        <asp:ListItem Text="No Experience" Value="No Experience" Selected="False" name="rdoNoExperience" />
                        <asp:ListItem Text="Beginner" Value="Beginner" Selected="False" name="rdoBeginner"/>
                        <asp:ListItem Text="Intermediate" Value="Intermediate" Selected="False" name="rdoIntermediate"/>
                        <asp:ListItem Text="Advanced" Value="Advanced" Selected="False" name="rdoAdvanced"/>
                        <asp:ListItem Text="Interested in Learning" Value="Interested in learning" Selected="False" name="rdoInterestedInLearning"/>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label62" runat="server" Text="Poetry/Spoken Word"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoPoetry" runat="server">
                        <asp:ListItem Text="No Experience" Value="No Experience" Selected="False" name="rdoNoExperience" />
                        <asp:ListItem Text="Beginner" Value="Beginner" Selected="False" name="rdoBeginner"/>
                        <asp:ListItem Text="Intermediate" Value="Intermediate" Selected="False" name="rdoIntermediate"/>
                        <asp:ListItem Text="Advanced" Value="Advanced" Selected="False" name="rdoAdvanced"/>
                        <asp:ListItem Text="Interested in Learning" Value="Interested in learning" Selected="False" name="rdoInterestedInLearning"/>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label63" runat="server" Text="Murals/Public Art"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoMurals" runat="server">
                        <asp:ListItem Text="No Experience" Value="No Experience" Selected="False" name="rdoNoExperience" />
                        <asp:ListItem Text="Beginner" Value="Beginner" Selected="False" name="rdoBeginner"/>
                        <asp:ListItem Text="Intermediate" Value="Intermediate" Selected="False" name="rdoIntermediate"/>
                        <asp:ListItem Text="Advanced" Value="Advanced" Selected="False" name="rdoAdvanced"/>
                        <asp:ListItem Text="Interested in Learning" Value="Interested in learning" Selected="False" name="rdoInterestedInLearning"/>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label64" runat="server" Text="Breakdancing"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoBreakDancing" runat="server">
                        <asp:ListItem Text="No Experience" Value="No Experience" Selected="False" name="rdoNoExperience" />
                        <asp:ListItem Text="Beginner" Value="Beginner" Selected="False" name="rdoBeginner"/>
                        <asp:ListItem Text="Intermediate" Value="Intermediate" Selected="False" name="rdoIntermediate"/>
                        <asp:ListItem Text="Advanced" Value="Advanced" Selected="False" name="rdoAdvanced"/>
                        <asp:ListItem Text="Interested in Learning" Value="Interested in learning" Selected="False" name="rdoInterestedInLearning"/>
                </asp:RadioButtonList></td>
        </tr>    
        <tr>
            <td><asp:Label ID="Label65" runat="server" Text="Music production"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoMusicProduction" runat="server">
                        <asp:ListItem Text="No Experience" Value="No Experience" Selected="False" name="rdoNoExperience" />
                        <asp:ListItem Text="Beginner" Value="Beginner" Selected="False" name="rdoBeginner"/>
                        <asp:ListItem Text="Intermediate" Value="Intermediate" Selected="False" name="rdoIntermediate"/>
                        <asp:ListItem Text="Advanced" Value="Advanced" Selected="False" name="rdoAdvanced"/>
                        <asp:ListItem Text="Interested in Learning" Value="Interested in learning" Selected="False" name="rdoInterestedInLearning"/>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label66" runat="server" Text="Chess"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoChess" runat="server">
                        <asp:ListItem Text="No Experience" Value="No Experience" Selected="False" name="rdoNoExperience" />
                        <asp:ListItem Text="Beginner" Value="Beginner" Selected="False" name="rdoBeginner"/>
                        <asp:ListItem Text="Intermediate" Value="Intermediate" Selected="False" name="rdoIntermediate"/>
                        <asp:ListItem Text="Advanced" Value="Advanced" Selected="False" name="rdoAdvanced"/>
                        <asp:ListItem Text="Interested in Learning" Value="Interested in learning" Selected="False" name="rdoInterestedInLearning"/>
                </asp:RadioButtonList></td>
         </tr>
        <tr>
            <td><asp:Label ID="Label67" runat="server" Text="Photography"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoPhotography" runat="server">
                        <asp:ListItem Text="No Experience" Value="No Experience" Selected="False" name="rdoNoExperience" />
                        <asp:ListItem Text="Beginner" Value="Beginner" Selected="False" name="rdoBeginner"/>
                        <asp:ListItem Text="Intermediate" Value="Intermediate" Selected="False" name="rdoIntermediate"/>
                        <asp:ListItem Text="Advanced" Value="Advanced" Selected="False" name="rdoAdvanced"/>
                        <asp:ListItem Text="Interested in Learning" Value="Interested in learning" Selected="False" name="rdoInterestedInLearning"/>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label68" runat="server" Text="Hip-Hop Dance"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoHipHopDance" runat="server">
                        <asp:ListItem Text="No Experience" Value="No Experience" Selected="False" name="rdoNoExperience" />
                        <asp:ListItem Text="Beginner" Value="Beginner" Selected="False" name="rdoBeginner"/>
                        <asp:ListItem Text="Intermediate" Value="Intermediate" Selected="False" name="rdoIntermediate"/>
                        <asp:ListItem Text="Advanced" Value="Advanced" Selected="False" name="rdoAdvanced"/>
                        <asp:ListItem Text="Interested in Learning" Value="Interested in learning" Selected="False" name="rdoInterestedInLearning"/>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label47" runat="server" Text="Have you taken any classes with Words, Beats & Life in the past?"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoPastClasses" runat="server"><asp:ListItem Text="Yes" Value="Yes" Selected="True" name="rdoYes" /><asp:ListItem Text="No" Value="No" Selected="False" name="rdoNo"/></asp:RadioButtonList></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label48" runat="server" Text="If so, which classes? and when?"></asp:Label></td>
            <td><asp:TextBox ID="txtPastClasses" runat="server" name="txtPastClasses"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label49" runat="server" Text="What is your T-shirt size?"></asp:Label></td>
            <td><asp:RadioButtonList ID="rdoShirtSize" runat="server">
                    <asp:ListItem Text="Small" Value="Small" Selected="True" name="rdoSmall" />
                    <asp:ListItem Text="Medium" Value="Medium" Selected="False" name="rdoMedium"/>
                    <asp:ListItem Text="Large" Value="Large" Selected="False" name="rdoSmall" />
                    <asp:ListItem Text="XL" Value="XL" Selected="False" name="rdoSmall" />
                    <asp:ListItem Text="XXL" Value="XXL" Selected="False" name="rdoSmall" />
                </asp:RadioButtonList></td>
        </tr>
       
    </table>
            <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /><asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" />

    </div>
    </form>
</body>
</html>
