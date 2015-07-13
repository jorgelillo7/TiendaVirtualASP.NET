<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PublicLayout.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Models.ConfirmarViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Confirmar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Confirmar</h2>

<script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>" type="text/javascript"></script>
<script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>" type="text/javascript"></script>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Confirmar pedido</legend>

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

        <p style="padding-top:10px">
          
            <input type="submit" class="btn btn-success" value="Confirmar" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Vuelta al pedido", "Pedido") %>
</div>

</asp:Content>
