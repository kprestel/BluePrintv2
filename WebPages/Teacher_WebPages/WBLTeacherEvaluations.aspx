<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPages/WBLTeacherMasterPage.master" AutoEventWireup="true" CodeFile="WBLTeacherEvaluations.aspx.cs" Inherits="WebPages_Teacher_WebPages_WBLTeacherEvaluations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>Here the teacher can view all of their to-do evaluations</p>
    <asp:HyperLink ID="lnkIndividualEvaluation2" runat="server" 
             NavigateUrl="~/WebPages/Teacher_WebPages/WBLTeacherIndividualEvaluation.aspx" 
             Text="Individual Evaluation" />
</asp:Content>

