<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageReports.aspx.cs" Inherits="ManageReports" %>

<!DOCTYPE html>
<style>
      #form1 {
          
           background-color: #000;
           font-family: Courier;
	       color: white;
	       font-size:20px;
            
        }
         </style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ManageReports</title>
</head>
   
<body>
     <a href ="AdminHome.aspx" style="color: blue">Back to Admin Dashboard </a>
    <form id="form1" runat="server">
    <div>
    <table>
            <tr>
                <td><h3><asp:Label ID="Label1" runat="server" Text= "Enter Search Criteria:"></asp:Label></h3></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Report ID:"></asp:Label> </td>
                
                <td>
                    <asp:TextBox ID="txtReportID" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
