<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Layout.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TiendaVirtual.Models.Usuarios>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Nuevo Usuario", "Create") %>
</p>
    
<table class="table table-striped">
    <tr>
        <th>
            Nombre de Usuario
        </th>
        <th>
            Password
        </th>
        <th>Acciones</th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Login) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Password) %>
        </td>
        <td>
            <%: Html.ActionLink("Editar", "Edit", new { id=item.Id }) %> |
            <%: Html.ActionLink("Detalles", "Details", new { id=item.Id }) %> |
            <%: Html.ActionLink("Eliminar", "Delete", new { id=item.Id }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
