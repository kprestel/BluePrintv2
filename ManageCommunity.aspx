<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageCommunity.aspx.cs" Inherits="ManageCommunity" %>

<!DOCTYPE html>
 <style type="text/css">
        html {background: url(https://s-media-cache-ak0.pinimg.com/736x/51/cb/a9/51cba92ff221e6a8bfc2a0ebe6323f40.jpg);}
        #form1 {
          
           background-color: #000;
           font-family: Courier;
	       color: white;
	       font-size:20px;
            
        }
         </style>
<html xmlns="http://www.w3.org/1999/xhtml">
   

<head runat="server">
    <title>Manage Community</title>
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
                <td><asp:Label ID="Label2" runat="server" Text="Member ID:"></asp:Label> </td>
                
                <td>
                    <asp:TextBox ID="txtMemberID" runat="server"></asp:TextBox>
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
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="PostID" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                <asp:BoundField DataField="PostContent" HeaderText="PostContent" SortExpression="PostContent" />
                <asp:BoundField DataField="BlogPostDate" HeaderText="BlogPostDate" SortExpression="BlogPostDate" />
                <asp:BoundField DataField="MemberID" HeaderText="MemberID" SortExpression="MemberID" />
                <asp:BoundField DataField="PostID" HeaderText="PostID" InsertVisible="False" ReadOnly="True" SortExpression="PostID" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cs %>" DeleteCommand="DELETE FROM [BlogPost] WHERE [PostID] = @original_PostID AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND (([PostContent] = @original_PostContent) OR ([PostContent] IS NULL AND @original_PostContent IS NULL)) AND (([BlogPostDate] = @original_BlogPostDate) OR ([BlogPostDate] IS NULL AND @original_BlogPostDate IS NULL)) AND (([MemberID] = @original_MemberID) OR ([MemberID] IS NULL AND @original_MemberID IS NULL))" InsertCommand="INSERT INTO [BlogPost] ([Subject], [PostContent], [BlogPostDate], [MemberID]) VALUES (@Subject, @PostContent, @BlogPostDate, @MemberID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Subject], [PostContent], [BlogPostDate], [MemberID], [PostID] FROM [BlogPost]" UpdateCommand="UPDATE [BlogPost] SET [Subject] = @Subject, [PostContent] = @PostContent, [BlogPostDate] = @BlogPostDate, [MemberID] = @MemberID WHERE [PostID] = @original_PostID AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL)) AND (([PostContent] = @original_PostContent) OR ([PostContent] IS NULL AND @original_PostContent IS NULL)) AND (([BlogPostDate] = @original_BlogPostDate) OR ([BlogPostDate] IS NULL AND @original_BlogPostDate IS NULL)) AND (([MemberID] = @original_MemberID) OR ([MemberID] IS NULL AND @original_MemberID IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_PostID" Type="Int32" />
                <asp:Parameter Name="original_Subject" Type="String" />
                <asp:Parameter Name="original_PostContent" Type="String" />
                <asp:Parameter Name="original_BlogPostDate" Type="DateTime" />
                <asp:Parameter Name="original_MemberID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Subject" Type="String" />
                <asp:Parameter Name="PostContent" Type="String" />
                <asp:Parameter Name="BlogPostDate" Type="DateTime" />
                <asp:Parameter Name="MemberID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Subject" Type="String" />
                <asp:Parameter Name="PostContent" Type="String" />
                <asp:Parameter Name="BlogPostDate" Type="DateTime" />
                <asp:Parameter Name="MemberID" Type="Int32" />
                <asp:Parameter Name="original_PostID" Type="Int32" />
                <asp:Parameter Name="original_Subject" Type="String" />
                <asp:Parameter Name="original_PostContent" Type="String" />
                <asp:Parameter Name="original_BlogPostDate" Type="DateTime" />
                <asp:Parameter Name="original_MemberID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="CommentID" DataSourceID="SqlDataSource2" ForeColor="Black">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="PostComment" HeaderText="PostComment" SortExpression="PostComment" />
                <asp:BoundField DataField="CommentDate" HeaderText="CommentDate" SortExpression="CommentDate" />
                <asp:BoundField DataField="MemberID" HeaderText="MemberID" SortExpression="MemberID" />
                <asp:BoundField DataField="CommentID" HeaderText="CommentID" InsertVisible="False" ReadOnly="True" SortExpression="CommentID" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cs %>" DeleteCommand="DELETE FROM [BlogPostComment] WHERE [CommentID] = @original_CommentID AND (([PostComment] = @original_PostComment) OR ([PostComment] IS NULL AND @original_PostComment IS NULL)) AND (([CommentDate] = @original_CommentDate) OR ([CommentDate] IS NULL AND @original_CommentDate IS NULL)) AND (([MemberID] = @original_MemberID) OR ([MemberID] IS NULL AND @original_MemberID IS NULL))" InsertCommand="INSERT INTO [BlogPostComment] ([PostComment], [CommentDate], [MemberID]) VALUES (@PostComment, @CommentDate, @MemberID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [PostComment], [CommentDate], [MemberID], [CommentID] FROM [BlogPostComment]" UpdateCommand="UPDATE [BlogPostComment] SET [PostComment] = @PostComment, [CommentDate] = @CommentDate, [MemberID] = @MemberID WHERE [CommentID] = @original_CommentID AND (([PostComment] = @original_PostComment) OR ([PostComment] IS NULL AND @original_PostComment IS NULL)) AND (([CommentDate] = @original_CommentDate) OR ([CommentDate] IS NULL AND @original_CommentDate IS NULL)) AND (([MemberID] = @original_MemberID) OR ([MemberID] IS NULL AND @original_MemberID IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_CommentID" Type="Int32" />
                <asp:Parameter Name="original_PostComment" Type="String" />
                <asp:Parameter Name="original_CommentDate" Type="DateTime" />
                <asp:Parameter Name="original_MemberID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PostComment" Type="String" />
                <asp:Parameter Name="CommentDate" Type="DateTime" />
                <asp:Parameter Name="MemberID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PostComment" Type="String" />
                <asp:Parameter Name="CommentDate" Type="DateTime" />
                <asp:Parameter Name="MemberID" Type="Int32" />
                <asp:Parameter Name="original_CommentID" Type="Int32" />
                <asp:Parameter Name="original_PostComment" Type="String" />
                <asp:Parameter Name="original_CommentDate" Type="DateTime" />
                <asp:Parameter Name="original_MemberID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="PostID" DataSourceID="SqlDataSource3" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="PostID" HeaderText="PostID" InsertVisible="False" ReadOnly="True" SortExpression="PostID" />
                <asp:BoundField DataField="MemberID" HeaderText="MemberID" SortExpression="MemberID" />
                <asp:BoundField DataField="BlogPostDate" HeaderText="BlogPostDate" SortExpression="BlogPostDate" />
                <asp:BoundField DataField="PostContent" HeaderText="PostContent" SortExpression="PostContent" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [BlogPost]"></asp:SqlDataSource>
    </form>
</body>
</html>
