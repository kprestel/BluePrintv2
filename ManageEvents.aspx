<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageEvents.aspx.cs" Inherits="ManageEvents" %>

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
<head id="Head1" runat="server">
    <title>Manage Evaluations</title>
</head>
<body>
    <a href ="AdminHome.aspx" style="color: black">Back to Admin Dashboard </a>
    <form id="form1" runat="server">
    <div>
    <table>
            <tr>
                <td><h3><asp:Label ID="Label1" runat="server" Text= "Enter Search Criteria:"></asp:Label></h3></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Event ID:"></asp:Label> </td>
                
                <td>
                    <asp:TextBox ID="txtEventID" runat="server"></asp:TextBox>
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
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="EventID" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="EventID" HeaderText="EventID" InsertVisible="False" ReadOnly="True" SortExpression="EventID" />
                <asp:BoundField DataField="EventName" HeaderText="EventName" SortExpression="EventName" />
                <asp:BoundField DataField="EventDate" HeaderText="EventDate" SortExpression="EventDate" />
                <asp:BoundField DataField="EventTopic" HeaderText="EventTopic" SortExpression="EventTopic" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cs %>" DeleteCommand="DELETE FROM [Event] WHERE [EventID] = @original_EventID AND (([EventName] = @original_EventName) OR ([EventName] IS NULL AND @original_EventName IS NULL)) AND (([EventDate] = @original_EventDate) OR ([EventDate] IS NULL AND @original_EventDate IS NULL)) AND (([EventTopic] = @original_EventTopic) OR ([EventTopic] IS NULL AND @original_EventTopic IS NULL))" InsertCommand="INSERT INTO [Event] ([EventName], [EventDate], [EventTopic]) VALUES (@EventName, @EventDate, @EventTopic)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Event]" UpdateCommand="UPDATE [Event] SET [EventName] = @EventName, [EventDate] = @EventDate, [EventTopic] = @EventTopic WHERE [EventID] = @original_EventID AND (([EventName] = @original_EventName) OR ([EventName] IS NULL AND @original_EventName IS NULL)) AND (([EventDate] = @original_EventDate) OR ([EventDate] IS NULL AND @original_EventDate IS NULL)) AND (([EventTopic] = @original_EventTopic) OR ([EventTopic] IS NULL AND @original_EventTopic IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_EventID" Type="Int32" />
                <asp:Parameter Name="original_EventName" Type="String" />
                <asp:Parameter Name="original_EventDate" Type="DateTime" />
                <asp:Parameter Name="original_EventTopic" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EventName" Type="String" />
                <asp:Parameter Name="EventDate" Type="DateTime" />
                <asp:Parameter Name="EventTopic" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EventName" Type="String" />
                <asp:Parameter Name="EventDate" Type="DateTime" />
                <asp:Parameter Name="EventTopic" Type="String" />
                <asp:Parameter Name="original_EventID" Type="Int32" />
                <asp:Parameter Name="original_EventName" Type="String" />
                <asp:Parameter Name="original_EventDate" Type="DateTime" />
                <asp:Parameter Name="original_EventTopic" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="EventID,MemberID" DataSourceID="SqlDataSource2" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="EventID" HeaderText="EventID" ReadOnly="True" SortExpression="EventID" />
                <asp:BoundField DataField="MemberID" HeaderText="MemberID" ReadOnly="True" SortExpression="MemberID" />
                <asp:BoundField DataField="ActuallyAttended" HeaderText="ActuallyAttended" SortExpression="ActuallyAttended" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [EventAttendance]"></asp:SqlDataSource>
    </form>
</body>
</html>
