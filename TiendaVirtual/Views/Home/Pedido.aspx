<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PublicLayout.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TiendaVirtual.Models.LineasPedido>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Pedido
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Pedido</h2>

    <h1>Detalles del pedido</h1>
    <table class="table table-striped">
        <tr>
            <th>Id
            </th>
            <th>Titulo
            </th>
            <th>Cantidad
            </th>
            <th>Precio Unidad</th>
            <th>Total </th>
        </tr>

        <% int count = 0;
           decimal totalPedido = 0;
           foreach (var item in Model)
           {
               count++;
               decimal total = (item.Libros.Precio * item.Cantidad);
               totalPedido += total;
        %>
        <tr>
            <td>
                <%: count%>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Libros.Titulo)%>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Cantidad)%>
            </td>

            <td>
                <%: Html.DisplayFor(modelItem => item.Libros.Precio)%>€
            </td>

            <td>
                <%: total %>€
            </td>

        </tr>
        <% } %>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>   <h3><%: totalPedido %>€</h3></td>
        </tr>
    </table>

    <%if (Model.Count() > 0)
      {
    
    %>
    <%: Html.ActionLink("Confirmar Pedido", "Confirmar",null,new { @class = "btn btn-success" }) %>
     <%: Html.ActionLink("Vaciar Pedido", "Vaciar",null,new { @class = "btn btn-error" }) %>
    <%} else{%>
        <h3>Debes añadir productos al carrito</h3>
     <% } %>
</asp:Content>
