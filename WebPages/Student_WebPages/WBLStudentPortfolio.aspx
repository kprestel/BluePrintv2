<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPages/WBLStudentMasterPage.master" AutoEventWireup="true" CodeFile="WBLStudentPortfolio.aspx.cs" Inherits="WebPages_Student_WebPages_WBLStudentPortfolio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>This is the student portfolio page.</p>
    <asp:HyperLink ID="lnkPortfolioSearch" runat="server" 
             NavigateUrl="~/WebPages/Common_WebPages/WBLPortfolioSearch.aspx" 
             Text="Portfolio Search" />
    <asp:HyperLink ID="lnkViewPortfolio" runat="server" 
             NavigateUrl="~/WebPages/Common_WebPages/WBLViewPortfolio.aspx" 
             Text="View Portfolios" />
</asp:Content>

