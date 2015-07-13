﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PublicLayout.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Models.Usuarios>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Login
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Login</h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Usuarios</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Login) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Login) %>
            <%: Html.ValidationMessageFor(model => model.Login) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Password) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Password) %>
            <%: Html.ValidationMessageFor(model => model.Password) %>
        </div>
        <p> admin/admin </p>
        <p style="margin-top:10px">
            <input type="submit" class="btn btn-success" value="Login" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Volver a la página principal", "Index") %>
</div>

</asp:Content>
