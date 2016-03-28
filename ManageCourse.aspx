<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageCourse.aspx.cs" Inherits="ManageCourse" %>

<!DOCTYPE html>

<html>
    
    <body>
        <a href ="AdminHome.aspx">Back to Admin Dashboard</a>
      <form id="Form1" name="UpdateRecords" method="post" runat="server">  
        <table>
            <tr>
                <td><h3>Enter Search Criteria:</h3></td>
            </tr>
            <tr>
                <td>Course Name: </td>
                <td>
                    <asp:TextBox ID="txtCourseName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />

                </td>
            </tr>
        </table>
        <hr />
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="sqlQuery" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="CourseID" HeaderText="CourseID" InsertVisible="False" ReadOnly="True" SortExpression="CourseID" />
                    <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
                    <asp:BoundField DataField="MeetingDays" HeaderText="MeetingDays" SortExpression="MeetingDays" />
                    <asp:BoundField DataField="StaffID" HeaderText="StaffID" SortExpression="StaffID" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="sqlQuery" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" InsertCommand="Insert c.CourseID, c.CourseName, cs.MeetingDays, s.StaffID
FROM course c
join staff s
on c.teacherid = s.staffid
Join classschedule cs
on c.courseID = cs.courseID
" SelectCommand="SELECT c.CourseID, c.CourseName, cs.MeetingDays, s.StaffID
FROM course c
join staff s
on c.teacherid = s.staffid
Join classschedule cs
on c.courseID = cs.courseID
">
            </asp:SqlDataSource>
            
        </div>
          <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="CourseID" DataSourceID="SqlDataSource1" ForeColor="Black">
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  <asp:BoundField DataField="CourseID" HeaderText="CourseID" InsertVisible="False" ReadOnly="True" SortExpression="CourseID" />
                  <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cs %>" DeleteCommand="DELETE FROM [Course] WHERE [CourseID] = @original_CourseID AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL))" InsertCommand="INSERT INTO [Course] ([CourseName]) VALUES (@CourseName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [CourseID], [CourseName] FROM [Course]" UpdateCommand="UPDATE [Course] SET [CourseName] = @CourseName WHERE [CourseID] = @original_CourseID AND (([CourseName] = @original_CourseName) OR ([CourseName] IS NULL AND @original_CourseName IS NULL))">
              <DeleteParameters>
                  <asp:Parameter Name="original_CourseID" Type="Int32" />
                  <asp:Parameter Name="original_CourseName" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="CourseName" Type="String" />
              </InsertParameters>
               <SelectParameters>
                    <asp:ControlParameter ControlID="txtCourseName" Name="FirstName" PropertyName="Text" Type="String" />
                </SelectParameters>
              <UpdateParameters>
                  <asp:Parameter Name="CourseName" Type="String" />
                  <asp:Parameter Name="original_CourseID" Type="Int32" />
                  <asp:Parameter Name="original_CourseName" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
          <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black">
              <Columns>
                  <asp:CommandField />
                  <asp:CommandField ShowEditButton="True" />
                  <asp:CommandField ShowDeleteButton="True" />
                  <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
                  <asp:BoundField DataField="MeetingDays" HeaderText="MeetingDays" SortExpression="MeetingDays" />
                  <asp:BoundField DataField="MeetingTime" HeaderText="MeetingTime" SortExpression="MeetingTime" />
                  <asp:BoundField DataField="RoomNumber" HeaderText="RoomNumber" SortExpression="RoomNumber" />
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
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [CourseID], [MeetingDays], [MeetingTime], [RoomNumber] FROM [ClassSchedule]"></asp:SqlDataSource>
          <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="StaffID" DataSourceID="SqlDataSource3" ForeColor="Black">
              <Columns>
                  <asp:BoundField DataField="StaffID" HeaderText="StaffID" ReadOnly="True" SortExpression="StaffID" />
                  <asp:BoundField DataField="SubjectID" HeaderText="SubjectID" SortExpression="SubjectID" />
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
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [StaffID], [SubjectID] FROM [Staff]"></asp:SqlDataSource>
      </form>
    </body>
</html>

