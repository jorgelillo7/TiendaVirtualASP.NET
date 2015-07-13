<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Layout.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Models.Libros>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Libros</legend>

        <div class="editor-field" style="display:none">
            <%: Html.EditorFor(model => model.Isbn) %>
            <%: Html.ValidationMessageFor(model => model.Isbn) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Titulo) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Titulo) %>
            <%: Html.ValidationMessageFor(model => model.Titulo) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Autor) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Autor) %>
            <%: Html.ValidationMessageFor(model => model.Autor) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Resumen) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Resumen) %>
            <%: Html.ValidationMessageFor(model => model.Resumen) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Precio) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Precio) %>
            <%: Html.ValidationMessageFor(model => model.Precio) %>
        </div>

        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Volver al listado", "Index") %>
</div>

</asp:Content>
