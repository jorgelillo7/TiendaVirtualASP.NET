<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Layout.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Models.Pedidos>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Pedidos</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Total) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Total) %>
            <%: Html.ValidationMessageFor(model => model.Total) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Nombre) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Nombre) %>
            <%: Html.ValidationMessageFor(model => model.Nombre) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Direccion) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Direccion) %>
            <%: Html.ValidationMessageFor(model => model.Direccion) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>
