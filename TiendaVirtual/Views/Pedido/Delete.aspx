<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Layout.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Models.Pedidos>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>¿Estás seguro que deseas borras el siguiente pedido?</h3>
<fieldset>
    <legend>Pedidos</legend>

    <div class="display-label"><strong>Total</strong></div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Total) %>
    </div>

    <div class="display-label"><strong>Nombre</strong></div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Nombre) %>
    </div>

    <div class="display-label"><strong>Dirección</strong></div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Direccion) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" class="btn btn-danger" value="Eliminar" /> |
        <%: Html.ActionLink("Cancelar", "Index") %>
    </p>
<% } %>

</asp:Content>
