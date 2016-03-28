<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="registration" runat="server">
         <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new: </h4>
        <hr />
        <asp:RadioButtonList ID="userTypeList" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table">
            <asp:ListItem Text="Student" Value="student"></asp:ListItem>
            <asp:ListItem Text="Cipher" Value="cipher"></asp:ListItem>
            <asp:ListItem Text="Other" Value="other"></asp:ListItem>
        </asp:RadioButtonList> 
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtEmail">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtEmail"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                     ErrorMessage="The email field is required." />
            </div>
        </div>
        <div>
            <asp:Label runat="server" AssociatedControlID="txtPassword">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
                     ErrorMessage="The password field is required." />
            </div>
        </div>
        <div>
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                     Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="txtPassword" ControlToValidate="ConfirmPassword"
                     Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div>
            <div>
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register"/>
            </div>
        </div>
    </div>
    
    </form>
</body>
</html>
