<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPages/WBLStudentMasterPage.master" AutoEventWireup="true" CodeFile="WBLStudentEvaluations.aspx.cs" Inherits="WebPages_Student_WebPages_WBLStudentEvaluations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>This is the student evaluations page.</p>
    <asp:HyperLink ID="lnkEvaluationsToDo" runat="server" 
             NavigateUrl="~/WebPages/Common_WebPages/WBLToDoEvaluations.aspx" 
             Text="Evaluations To-Do" />
</asp:Content>

