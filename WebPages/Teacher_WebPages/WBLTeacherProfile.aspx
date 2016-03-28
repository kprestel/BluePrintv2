<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPages/WBLTeacherMasterPage.master" AutoEventWireup="true" CodeFile="WBLTeacherProfile.aspx.cs" Inherits="NestedMasterPages_WBLTeacherProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>This is the teacher profile page.</p>
    <asp:HyperLink ID="lnkTeacherManageCourses" runat="server" 
                 NavigateUrl="~/WebPages/Teacher_WebPages/WBLTeacherManageCourse.aspx" 
                 Text="Manage My Courses" />
</asp:Content>

