<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageBucks.aspx.cs" Inherits="ManageBucks" %>

<!DOCTYPE html>

<html>
    <head id="Head1" runat="server">
    <title>Manage Bucks</title>
</head>
    <body>
         <a href ="AdminHome.aspx">Back to Admin Dashboard</a>
      <form id="Form1" name="UpdateRecords" runat="server">  
       
         
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataKeyNames="ItemID" DataSourceID="sqlQuery" AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ItemID" HeaderText="ItemID" InsertVisible="false" ReadOnly="True" SortExpression="ItemID" />
                    <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                    <asp:BoundField DataField="ItemPrice" HeaderText="ItemPrice" SortExpression="ItemPrice" />
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
            <asp:SqlDataSource ID="sqlQuery" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" DeleteCommand="DELETE FROM [BuckStore] WHERE [ItemID] = @original_ItemID AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND (([ItemPrice] = @original_ItemPrice) OR ([ItemPrice] IS NULL AND @original_ItemPrice IS NULL))" InsertCommand="INSERT INTO [BuckStore] ([ItemName], [ItemPrice]) VALUES (@ItemName, @ItemPrice)" SelectCommand="SELECT [ItemID], [ItemName], [ItemPrice] FROM [BuckStore]" UpdateCommand="UPDATE [BuckStore] SET [ItemName] = @ItemName, [ItemPrice] = @ItemPrice WHERE [ItemID] = @original_ItemID AND (([ItemName] = @original_ItemName) OR ([ItemName] IS NULL AND @original_ItemName IS NULL)) AND (([ItemPrice] = @original_ItemPrice) OR ([ItemPrice] IS NULL AND @original_ItemPrice IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_ItemID" Type="Int32" />
                    <asp:Parameter Name="original_ItemName" Type="String" />
                    <asp:Parameter Name="original_ItemPrice" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="ItemPrice" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="ItemPrice" Type="Decimal" />
                    <asp:Parameter Name="original_ItemID" Type="Int32" />
                    <asp:Parameter Name="original_ItemName" Type="String" />
                    <asp:Parameter Name="original_ItemPrice" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
          <p>
              
              <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" DataSourceID="SqlDataSource1">
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
          </p>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [TransactionID], [ItemID], [AccountNumber], [PurchaseDate], [PurchaseQty], [TransactionAmt] FROM [BuckTansaction]"></asp:SqlDataSource>
          <p>
              &nbsp;</p>
          <p>
              &nbsp;</p>
          <p>
              &nbsp;</p>
          <p>
            <asp:Button ID="ExportToExcel" runat="server" Text="ExportToExcel" OnClick="ExportToExcel_Click" />
            
          </p>
      </form>
    </body>
</html>