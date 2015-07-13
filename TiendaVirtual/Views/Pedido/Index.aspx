<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Layout.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TiendaVirtual.Models.Pedidos>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2 style="margin-top:20px">Index</h2>

<table class="table table-striped">
    <tr>

        <th>
            Nombre del Cliente
        </th>
        <th>
            Direccion de envío
        </th>
        <th>
            Total
        </th>
        <th> Acciones</th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Nombre) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Direccion) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Total)%>€
        </td>
        <td>
            <%: Html.ActionLink("Detalles", "Details", new { id=item.Id }) %> |
            <%: Html.ActionLink("Eliminar", "Delete", new { id=item.Id }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
