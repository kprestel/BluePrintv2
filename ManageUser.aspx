<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" Inherits="ManageUser" %>

<!DOCTYPE html>
<style type="text/css">
        html {background: url(https://s-media-cache-ak0.pinimg.com/736x/06/d1/97/06d1978f59048949ff143f2a73613efb.jpg);}
        #Form1 {
          
           background-color: #000;
           font-family: Courier;
	       color: white;
	       font-size:20px;
            
        }
         </style>

<html>
     <head id="Head1" runat="server">
    <title>Manage Users</title>
</head>
    <body>
         <a href ="AdminHome.aspx" style="color: yellow">Back to Admin Dashboard </a>
      <form id="Form1" name="UpdateRecords" method="post" runat="server">  
        <table>
            <tr>
                <td><h3><asp:Label ID="Label1" runat="server" Text= "Enter Search Criteria:"></asp:Label></h3></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label> </td>
                
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label> </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

                </td>
            </tr>
        </table>
        <hr />
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="True" DataKeyNames="MemberID" DataSourceID="sqlQuery" AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    <asp:BoundField DataField="MemberID" HeaderText="MemberID" InsertVisible="True" ReadOnly="True" SortExpression="MemberID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="CellNo" HeaderText="CellNo" SortExpression="CellNo" />
                    <asp:BoundField DataField="HomePhoneNo" HeaderText="HomePhoneNo" SortExpression="HomePhoneNo" />
                    <asp:BoundField DataField="MemberType" HeaderText="MemberType" SortExpression="MemberType" />
                    <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" SortExpression="AddressLine1" />
                    <asp:BoundField DataField="AddressLine2" HeaderText="AddressLine2" SortExpression="AddressLine2" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="sqlQuery" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" DeleteCommand="DELETE FROM [Member] WHERE [MemberID] = @MemberID" InsertCommand="INSERT INTO [Member] ([FirstName], [LastName], [Email], [CellNo], [HomePhoneNo], [MemberType], [AddressLine1], [AddressLine2], [City], [State], [Zip]) VALUES (@FirstName, @LastName, @Email, @CellNo, @HomePhoneNo, @MemberType, @AddressLine1, @AddressLine2, @City, @State, @Zip)" SelectCommand="SELECT * FROM [Member] WHERE (([FirstName] = @FirstName) AND ([LastName] = @LastName))" UpdateCommand="UPDATE [Member] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [CellNo] = @CellNo, [HomePhoneNo] = @HomePhoneNo, [MemberType] = @MemberType, [AddressLine1] = @AddressLine1, [AddressLine2] = @AddressLine2, [City] = @City, [State] = @State, [Zip] = @Zip WHERE [MemberID] = @MemberID">
                <DeleteParameters>
                    <asp:Parameter Name="MemberID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="CellNo" Type="String" />
                    <asp:Parameter Name="HomePhoneNo" Type="String" />
                    <asp:Parameter Name="MemberType" Type="String" />
                    <asp:Parameter Name="AddressLine1" Type="String" />
                    <asp:Parameter Name="AddressLine2" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="Zip" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtFirstName" Name="FirstName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtLastName" Name="LastName" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="CellNo" Type="String" />
                    <asp:Parameter Name="HomePhoneNo" Type="String" />
                    <asp:Parameter Name="MemberType" Type="String" />
                    <asp:Parameter Name="AddressLine1" Type="String" />
                    <asp:Parameter Name="AddressLine2" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="Zip" Type="String" />
                    <asp:Parameter Name="MemberID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
              <Columns>
                  <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                  <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                  <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                  <asp:BoundField DataField="CellNo" HeaderText="CellNo" SortExpression="CellNo" />
                  <asp:BoundField DataField="MemberType" HeaderText="MemberType" SortExpression="MemberType" />
                  <asp:BoundField DataField="HomePhoneNo" HeaderText="HomePhoneNo" SortExpression="HomePhoneNo" />
                  <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" SortExpression="AddressLine1" />
                  <asp:BoundField DataField="AddressLine2" HeaderText="AddressLine2" SortExpression="AddressLine2" />
                  <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                  <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                  <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
              </Columns>
              <FooterStyle BackColor="#CCCCCC" />
              <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
              <RowStyle BackColor="White" />
              <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F1F1F1" />
              <SortedAscendingHeaderStyle BackColor="#808080" />
              <SortedDescendingCellStyle BackColor="#CAC9C9" />
              <SortedDescendingHeaderStyle BackColor="#383838" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [FirstName], [LastName], [Email], [CellNo], [MemberType], [HomePhoneNo], [AddressLine1], [AddressLine2], [City], [State], [Zip] FROM [Member]"></asp:SqlDataSource>
      </form>
    </body>
</html>