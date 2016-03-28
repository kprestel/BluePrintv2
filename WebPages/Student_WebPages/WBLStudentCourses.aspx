<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPages/WBLStudentMasterPage.master" AutoEventWireup="true" CodeFile="WBLStudentCourses.aspx.cs" Inherits="WebPages_Student_WebPages_WBLStudentCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>This is the available courses page.</p>
    <div id="navContent2">
        <asp:HyperLink ID="lnkStudentIndividualCourse" runat="server" 
             NavigateUrl="~/WebPages/Student_WebPages/WBLIndividualCourse.aspx" 
             Text="Individual Course" />

    </div>
</asp:Content>

