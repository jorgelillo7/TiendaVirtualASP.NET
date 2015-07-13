<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Layout.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Models.Pedidos>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <div class="row">
        <div class="col-md-4">

            <fieldset>
                <legend>Pedido</legend>

                <div class="display-label"><strong>Nombre del Cliente</strong></div>
                <div class="display-field">
                    <%: Html.DisplayFor(model => model.Nombre) %>
                </div>

                <div class="display-label"><strong>Direccion de Envío</strong></div>
                <div class="display-field">
                    <%: Html.DisplayFor(model => model.Direccion) %>
                </div>

                <div class="display-label"><strong>Total</strong></div>
                <div class="display-field">
                    <%: Html.DisplayFor(model => model.Total) %>€
                </div>


            </fieldset>
        </div>
        <div class="col-md-8">
            <table class="table table-striped">
                <tr>
                    <th>Id
                    </th>
                    <th>Titulo
                    </th>
                    <th>Cantidad
                    </th>

                </tr>
                <% int count = 0; foreach (var item in Model.LineasPedido)
                   {
                       count++;
                       decimal total = (item.Libros.Precio * item.Cantidad);
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


                </tr>
                <% } %>
            </table>
        </div>
    </div>





    <p>


    <%: Html.ActionLink("Vuelta al listado", "Index") %>
    </p>

</asp:Content>
