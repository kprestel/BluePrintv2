<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageEvaluations.aspx.cs" Inherits="ManageEvaluations" %>

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
                <td><asp:Label ID="Label2" runat="server" Text="Evaluation ID:"></asp:Label> </td>
                
                <td>
                    <asp:TextBox ID="txtEvaluationID" runat="server"></asp:TextBox>
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
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="EvaluationID" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="EvaluationID" HeaderText="EvaluationID" InsertVisible="False" ReadOnly="True" SortExpression="EvaluationID" />
                <asp:BoundField DataField="TypeOfEvaluation" HeaderText="TypeOfEvaluation" SortExpression="TypeOfEvaluation" />
                <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
                <asp:BoundField DataField="StaffID" HeaderText="StaffID" SortExpression="StaffID" />
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                <asp:BoundField DataField="Attendance" HeaderText="Attendance" SortExpression="Attendance" />
                <asp:BoundField DataField="Puctuality" HeaderText="Puctuality" SortExpression="Puctuality" />
                <asp:BoundField DataField="Contribution" HeaderText="Contribution" SortExpression="Contribution" />
                <asp:BoundField DataField="AcceptCriticism" HeaderText="AcceptCriticism" SortExpression="AcceptCriticism" />
                <asp:BoundField DataField="Attitude" HeaderText="Attitude" SortExpression="Attitude" />
                <asp:BoundField DataField="Motivation" HeaderText="Motivation" SortExpression="Motivation" />
                <asp:BoundField DataField="ProduceProject" HeaderText="ProduceProject" SortExpression="ProduceProject" />
                <asp:BoundField DataField="WBLActivities" HeaderText="WBLActivities" SortExpression="WBLActivities" />
                <asp:BoundField DataField="Strength" HeaderText="Strength" SortExpression="Strength" />
                <asp:BoundField DataField="AreaNeedImrprovement" HeaderText="AreaNeedImrprovement" SortExpression="AreaNeedImrprovement" />
                <asp:BoundField DataField="GradeComment" HeaderText="GradeComment" SortExpression="GradeComment" />
                <asp:BoundField DataField="Recognition" HeaderText="Recognition" SortExpression="Recognition" />
                <asp:BoundField DataField="Technology" HeaderText="Technology" SortExpression="Technology" />
                <asp:BoundField DataField="Mixing" HeaderText="Mixing" SortExpression="Mixing" />
                <asp:BoundField DataField="Scratching" HeaderText="Scratching" SortExpression="Scratching" />
                <asp:BoundField DataField="Professionalism" HeaderText="Professionalism" SortExpression="Professionalism" />
                <asp:BoundField DataField="Presentation" HeaderText="Presentation" SortExpression="Presentation" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cs %>" DeleteCommand="DELETE FROM [CourseEvaluation] WHERE [EvaluationID] = @original_EvaluationID AND (([TypeOfEvaluation] = @original_TypeOfEvaluation) OR ([TypeOfEvaluation] IS NULL AND @original_TypeOfEvaluation IS NULL)) AND (([CourseID] = @original_CourseID) OR ([CourseID] IS NULL AND @original_CourseID IS NULL)) AND (([StaffID] = @original_StaffID) OR ([StaffID] IS NULL AND @original_StaffID IS NULL)) AND (([StudentID] = @original_StudentID) OR ([StudentID] IS NULL AND @original_StudentID IS NULL)) AND (([Attendance] = @original_Attendance) OR ([Attendance] IS NULL AND @original_Attendance IS NULL)) AND (([Puctuality] = @original_Puctuality) OR ([Puctuality] IS NULL AND @original_Puctuality IS NULL)) AND (([Contribution] = @original_Contribution) OR ([Contribution] IS NULL AND @original_Contribution IS NULL)) AND (([AcceptCriticism] = @original_AcceptCriticism) OR ([AcceptCriticism] IS NULL AND @original_AcceptCriticism IS NULL)) AND (([Attitude] = @original_Attitude) OR ([Attitude] IS NULL AND @original_Attitude IS NULL)) AND (([Motivation] = @original_Motivation) OR ([Motivation] IS NULL AND @original_Motivation IS NULL)) AND (([ProduceProject] = @original_ProduceProject) OR ([ProduceProject] IS NULL AND @original_ProduceProject IS NULL)) AND (([WBLActivities] = @original_WBLActivities) OR ([WBLActivities] IS NULL AND @original_WBLActivities IS NULL)) AND (([Strength] = @original_Strength) OR ([Strength] IS NULL AND @original_Strength IS NULL)) AND (([AreaNeedImrprovement] = @original_AreaNeedImrprovement) OR ([AreaNeedImrprovement] IS NULL AND @original_AreaNeedImrprovement IS NULL)) AND (([GradeComment] = @original_GradeComment) OR ([GradeComment] IS NULL AND @original_GradeComment IS NULL)) AND (([Recognition] = @original_Recognition) OR ([Recognition] IS NULL AND @original_Recognition IS NULL)) AND (([Technology] = @original_Technology) OR ([Technology] IS NULL AND @original_Technology IS NULL)) AND (([Mixing] = @original_Mixing) OR ([Mixing] IS NULL AND @original_Mixing IS NULL)) AND (([Scratching] = @original_Scratching) OR ([Scratching] IS NULL AND @original_Scratching IS NULL)) AND (([Professionalism] = @original_Professionalism) OR ([Professionalism] IS NULL AND @original_Professionalism IS NULL)) AND (([Presentation] = @original_Presentation) OR ([Presentation] IS NULL AND @original_Presentation IS NULL))" InsertCommand="INSERT INTO [CourseEvaluation] ([TypeOfEvaluation], [CourseID], [StaffID], [StudentID], [Attendance], [Puctuality], [Contribution], [AcceptCriticism], [Attitude], [Motivation], [ProduceProject], [WBLActivities], [Strength], [AreaNeedImrprovement], [GradeComment], [Recognition], [Technology], [Mixing], [Scratching], [Professionalism], [Presentation]) VALUES (@TypeOfEvaluation, @CourseID, @StaffID, @StudentID, @Attendance, @Puctuality, @Contribution, @AcceptCriticism, @Attitude, @Motivation, @ProduceProject, @WBLActivities, @Strength, @AreaNeedImrprovement, @GradeComment, @Recognition, @Technology, @Mixing, @Scratching, @Professionalism, @Presentation)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CourseEvaluation]" UpdateCommand="UPDATE [CourseEvaluation] SET [TypeOfEvaluation] = @TypeOfEvaluation, [CourseID] = @CourseID, [StaffID] = @StaffID, [StudentID] = @StudentID, [Attendance] = @Attendance, [Puctuality] = @Puctuality, [Contribution] = @Contribution, [AcceptCriticism] = @AcceptCriticism, [Attitude] = @Attitude, [Motivation] = @Motivation, [ProduceProject] = @ProduceProject, [WBLActivities] = @WBLActivities, [Strength] = @Strength, [AreaNeedImrprovement] = @AreaNeedImrprovement, [GradeComment] = @GradeComment, [Recognition] = @Recognition, [Technology] = @Technology, [Mixing] = @Mixing, [Scratching] = @Scratching, [Professionalism] = @Professionalism, [Presentation] = @Presentation WHERE [EvaluationID] = @original_EvaluationID AND (([TypeOfEvaluation] = @original_TypeOfEvaluation) OR ([TypeOfEvaluation] IS NULL AND @original_TypeOfEvaluation IS NULL)) AND (([CourseID] = @original_CourseID) OR ([CourseID] IS NULL AND @original_CourseID IS NULL)) AND (([StaffID] = @original_StaffID) OR ([StaffID] IS NULL AND @original_StaffID IS NULL)) AND (([StudentID] = @original_StudentID) OR ([StudentID] IS NULL AND @original_StudentID IS NULL)) AND (([Attendance] = @original_Attendance) OR ([Attendance] IS NULL AND @original_Attendance IS NULL)) AND (([Puctuality] = @original_Puctuality) OR ([Puctuality] IS NULL AND @original_Puctuality IS NULL)) AND (([Contribution] = @original_Contribution) OR ([Contribution] IS NULL AND @original_Contribution IS NULL)) AND (([AcceptCriticism] = @original_AcceptCriticism) OR ([AcceptCriticism] IS NULL AND @original_AcceptCriticism IS NULL)) AND (([Attitude] = @original_Attitude) OR ([Attitude] IS NULL AND @original_Attitude IS NULL)) AND (([Motivation] = @original_Motivation) OR ([Motivation] IS NULL AND @original_Motivation IS NULL)) AND (([ProduceProject] = @original_ProduceProject) OR ([ProduceProject] IS NULL AND @original_ProduceProject IS NULL)) AND (([WBLActivities] = @original_WBLActivities) OR ([WBLActivities] IS NULL AND @original_WBLActivities IS NULL)) AND (([Strength] = @original_Strength) OR ([Strength] IS NULL AND @original_Strength IS NULL)) AND (([AreaNeedImrprovement] = @original_AreaNeedImrprovement) OR ([AreaNeedImrprovement] IS NULL AND @original_AreaNeedImrprovement IS NULL)) AND (([GradeComment] = @original_GradeComment) OR ([GradeComment] IS NULL AND @original_GradeComment IS NULL)) AND (([Recognition] = @original_Recognition) OR ([Recognition] IS NULL AND @original_Recognition IS NULL)) AND (([Technology] = @original_Technology) OR ([Technology] IS NULL AND @original_Technology IS NULL)) AND (([Mixing] = @original_Mixing) OR ([Mixing] IS NULL AND @original_Mixing IS NULL)) AND (([Scratching] = @original_Scratching) OR ([Scratching] IS NULL AND @original_Scratching IS NULL)) AND (([Professionalism] = @original_Professionalism) OR ([Professionalism] IS NULL AND @original_Professionalism IS NULL)) AND (([Presentation] = @original_Presentation) OR ([Presentation] IS NULL AND @original_Presentation IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_EvaluationID" Type="Int32" />
                <asp:Parameter Name="original_TypeOfEvaluation" Type="String" />
                <asp:Parameter Name="original_CourseID" Type="Int32" />
                <asp:Parameter Name="original_StaffID" Type="Int32" />
                <asp:Parameter Name="original_StudentID" Type="Int32" />
                <asp:Parameter Name="original_Attendance" Type="Int32" />
                <asp:Parameter Name="original_Puctuality" Type="Int32" />
                <asp:Parameter Name="original_Contribution" Type="Int32" />
                <asp:Parameter Name="original_AcceptCriticism" Type="Int32" />
                <asp:Parameter Name="original_Attitude" Type="Int32" />
                <asp:Parameter Name="original_Motivation" Type="Int32" />
                <asp:Parameter Name="original_ProduceProject" Type="Int32" />
                <asp:Parameter Name="original_WBLActivities" Type="Int32" />
                <asp:Parameter Name="original_Strength" Type="String" />
                <asp:Parameter Name="original_AreaNeedImrprovement" Type="String" />
                <asp:Parameter Name="original_GradeComment" Type="String" />
                <asp:Parameter Name="original_Recognition" Type="Int32" />
                <asp:Parameter Name="original_Technology" Type="Int32" />
                <asp:Parameter Name="original_Mixing" Type="Int32" />
                <asp:Parameter Name="original_Scratching" Type="Int32" />
                <asp:Parameter Name="original_Professionalism" Type="Int32" />
                <asp:Parameter Name="original_Presentation" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TypeOfEvaluation" Type="String" />
                <asp:Parameter Name="CourseID" Type="Int32" />
                <asp:Parameter Name="StaffID" Type="Int32" />
                <asp:Parameter Name="StudentID" Type="Int32" />
                <asp:Parameter Name="Attendance" Type="Int32" />
                <asp:Parameter Name="Puctuality" Type="Int32" />
                <asp:Parameter Name="Contribution" Type="Int32" />
                <asp:Parameter Name="AcceptCriticism" Type="Int32" />
                <asp:Parameter Name="Attitude" Type="Int32" />
                <asp:Parameter Name="Motivation" Type="Int32" />
                <asp:Parameter Name="ProduceProject" Type="Int32" />
                <asp:Parameter Name="WBLActivities" Type="Int32" />
                <asp:Parameter Name="Strength" Type="String" />
                <asp:Parameter Name="AreaNeedImrprovement" Type="String" />
                <asp:Parameter Name="GradeComment" Type="String" />
                <asp:Parameter Name="Recognition" Type="Int32" />
                <asp:Parameter Name="Technology" Type="Int32" />
                <asp:Parameter Name="Mixing" Type="Int32" />
                <asp:Parameter Name="Scratching" Type="Int32" />
                <asp:Parameter Name="Professionalism" Type="Int32" />
                <asp:Parameter Name="Presentation" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TypeOfEvaluation" Type="String" />
                <asp:Parameter Name="CourseID" Type="Int32" />
                <asp:Parameter Name="StaffID" Type="Int32" />
                <asp:Parameter Name="StudentID" Type="Int32" />
                <asp:Parameter Name="Attendance" Type="Int32" />
                <asp:Parameter Name="Puctuality" Type="Int32" />
                <asp:Parameter Name="Contribution" Type="Int32" />
                <asp:Parameter Name="AcceptCriticism" Type="Int32" />
                <asp:Parameter Name="Attitude" Type="Int32" />
                <asp:Parameter Name="Motivation" Type="Int32" />
                <asp:Parameter Name="ProduceProject" Type="Int32" />
                <asp:Parameter Name="WBLActivities" Type="Int32" />
                <asp:Parameter Name="Strength" Type="String" />
                <asp:Parameter Name="AreaNeedImrprovement" Type="String" />
                <asp:Parameter Name="GradeComment" Type="String" />
                <asp:Parameter Name="Recognition" Type="Int32" />
                <asp:Parameter Name="Technology" Type="Int32" />
                <asp:Parameter Name="Mixing" Type="Int32" />
                <asp:Parameter Name="Scratching" Type="Int32" />
                <asp:Parameter Name="Professionalism" Type="Int32" />
                <asp:Parameter Name="Presentation" Type="Int32" />
                <asp:Parameter Name="original_EvaluationID" Type="Int32" />
                <asp:Parameter Name="original_TypeOfEvaluation" Type="String" />
                <asp:Parameter Name="original_CourseID" Type="Int32" />
                <asp:Parameter Name="original_StaffID" Type="Int32" />
                <asp:Parameter Name="original_StudentID" Type="Int32" />
                <asp:Parameter Name="original_Attendance" Type="Int32" />
                <asp:Parameter Name="original_Puctuality" Type="Int32" />
                <asp:Parameter Name="original_Contribution" Type="Int32" />
                <asp:Parameter Name="original_AcceptCriticism" Type="Int32" />
                <asp:Parameter Name="original_Attitude" Type="Int32" />
                <asp:Parameter Name="original_Motivation" Type="Int32" />
                <asp:Parameter Name="original_ProduceProject" Type="Int32" />
                <asp:Parameter Name="original_WBLActivities" Type="Int32" />
                <asp:Parameter Name="original_Strength" Type="String" />
                <asp:Parameter Name="original_AreaNeedImrprovement" Type="String" />
                <asp:Parameter Name="original_GradeComment" Type="String" />
                <asp:Parameter Name="original_Recognition" Type="Int32" />
                <asp:Parameter Name="original_Technology" Type="Int32" />
                <asp:Parameter Name="original_Mixing" Type="Int32" />
                <asp:Parameter Name="original_Scratching" Type="Int32" />
                <asp:Parameter Name="original_Professionalism" Type="Int32" />
                <asp:Parameter Name="original_Presentation" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="EvaluationID" DataSourceID="SqlDataSource2" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="EvaluationID" HeaderText="EvaluationID" InsertVisible="False" ReadOnly="True" SortExpression="EvaluationID" />
                <asp:BoundField DataField="TypeOfEvaluation" HeaderText="TypeOfEvaluation" SortExpression="TypeOfEvaluation" />
                <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
                <asp:BoundField DataField="StaffID" HeaderText="StaffID" SortExpression="StaffID" />
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                <asp:BoundField DataField="Attendance" HeaderText="Attendance" SortExpression="Attendance" />
                <asp:BoundField DataField="Puctuality" HeaderText="Puctuality" SortExpression="Puctuality" />
                <asp:BoundField DataField="Contribution" HeaderText="Contribution" SortExpression="Contribution" />
                <asp:BoundField DataField="AcceptCriticism" HeaderText="AcceptCriticism" SortExpression="AcceptCriticism" />
                <asp:BoundField DataField="Attitude" HeaderText="Attitude" SortExpression="Attitude" />
                <asp:BoundField DataField="Motivation" HeaderText="Motivation" SortExpression="Motivation" />
                <asp:BoundField DataField="ProduceProject" HeaderText="ProduceProject" SortExpression="ProduceProject" />
                <asp:BoundField DataField="WBLActivities" HeaderText="WBLActivities" SortExpression="WBLActivities" />
                <asp:BoundField DataField="Strength" HeaderText="Strength" SortExpression="Strength" />
                <asp:BoundField DataField="AreaNeedImrprovement" HeaderText="AreaNeedImrprovement" SortExpression="AreaNeedImrprovement" />
                <asp:BoundField DataField="GradeComment" HeaderText="GradeComment" SortExpression="GradeComment" />
                <asp:BoundField DataField="Recognition" HeaderText="Recognition" SortExpression="Recognition" />
                <asp:BoundField DataField="Technology" HeaderText="Technology" SortExpression="Technology" />
                <asp:BoundField DataField="Mixing" HeaderText="Mixing" SortExpression="Mixing" />
                <asp:BoundField DataField="Scratching" HeaderText="Scratching" SortExpression="Scratching" />
                <asp:BoundField DataField="Professionalism" HeaderText="Professionalism" SortExpression="Professionalism" />
                <asp:BoundField DataField="Presentation" HeaderText="Presentation" SortExpression="Presentation" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [CourseEvaluation]"></asp:SqlDataSource>
        <asp:Button ID="ExportToExcel" runat="server" Text="ExportToExcel" OnClick="ExportToExcel_Click" />
    </form>
</body>
</html>
