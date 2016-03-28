<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPages/WBLTeacherMasterPage.master" AutoEventWireup="true" CodeFile="WBLPortfolioPage.aspx.cs" Inherits="WebPages_Common_WebPages_WBLPortfolioPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>This is the generic portfolio page.</p>
    <asp:HyperLink ID="lnkPortfolioSearch" runat="server" 
             NavigateUrl="~/WebPages/Common_WebPages/WBLPortfolioSearch.aspx" 
             Text="Search Portfolios" />

    <asp:HyperLink ID="lnkViewPortfolios" runat="server" 
             NavigateUrl="~/WebPages/Common_WebPages/WBLViewPortfolio.aspx" 
             Text="View Portfolios" />
</asp:Content>

