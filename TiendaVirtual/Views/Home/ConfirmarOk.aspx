<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PublicLayout.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Models.Pedidos>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ConfirmarOk
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>ConfirmarOk</h2>
    <h1 >El pedido se ha realizado con exito</h1>
<fieldset>
    <legend>Detalles de pedido</legend>

     <div class="display-label"><strong>Número de Pedido</strong></div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Id) %>
    </div>

    <div class="display-label"><strong>Nombre de cliente</strong></div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Nombre) %>
    </div>

    <div class="display-label"><strong>Direccion de envío</strong></div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Direccion) %>
    </div>
        
    <div class="display-field">
        <h3><%: Html.DisplayFor(model => model.Total) %>€</h3>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Volver a la tienda", "Index") %>
</p>

</asp:Content>
