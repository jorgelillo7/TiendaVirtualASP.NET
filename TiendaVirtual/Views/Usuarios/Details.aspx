<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Layout.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Models.Usuarios>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Detalles de usuario</h2>

<fieldset>
    <legend>Usuario</legend>

    <div class="display-label">Login</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Login) %>
    </div>

    <div class="display-label">Password</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Password) %>
    </div>

  
</fieldset>
<p>

    <%: Html.ActionLink("Editar", "Edit", new { id=Model.Id }) %> |
    <%: Html.ActionLink("Volver al listado", "Index") %>
</p>

</asp:Content>
