<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Layout.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TiendaVirtual.Models.Libros>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Nuevo Libro", "Create",null,new { @class = "btn btn-success" }) %>
</p>
<table class="table table-striped">
    <tr>
        <th>
            Isbn
        </th>
        <th>
            Titulo
        </th>
        <th>
            Autor
        </th>
        <th>
            Resumen
        </th>
        <th>
            Precio
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Isbn) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Titulo) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Autor) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Resumen) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Precio) %>
        </td>
        <td>
            <%: Html.ActionLink("Editar", "Edit", new {  id=item.Isbn  }) %> |
            <%: Html.ActionLink("Detalles", "Details", new {  id=item.Isbn  }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
