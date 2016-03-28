<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPages/WBLStudentMasterPage.master" AutoEventWireup="true" CodeFile="WBLStudentBucks.aspx.cs" Inherits="WebPages_Student_WebPages_WBLStudentBucks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>This is the student bucks page.</p>
    <asp:HyperLink ID="lnkBucksIndividual" runat="server" 
             NavigateUrl="~/WebPages/Student_WebPages/WBLBucksIndividualItem.aspx" 
             Text="Individual Bucks Item" />
</asp:Content>

