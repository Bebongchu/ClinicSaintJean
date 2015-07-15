<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ClinicSaintJean_Ori.Models.PersonSearch>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    EditPatient
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<% Html.RenderPartial("~/Views/Shared/SearchPerson.ascx", Model); %>

</asp:Content>
