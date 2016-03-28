<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPages/WBLTeacherMasterPage.master" AutoEventWireup="true" CodeFile="WBLTeacherManageCourse.aspx.cs" Inherits="WebPages_Teacher_WebPages_WBLTeacherManageCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>This is the individual course page that the teacher can see. Here the teacher can manage materials related to the course</p>
    <asp:HyperLink ID="lnkTeacherManageMaterials" runat="server" 
             NavigateUrl="~/WebPages/Teacher_WebPages/WBLTeacherManageMaterials.aspx" 
             Text="Manage Course Materials" />
</asp:Content>

