<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Layout.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Models.Usuarios>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>¿Estás seguro que deseas eliminar este usuario?</h3>
<fieldset>
    <legend>Usuarios</legend>

    <div class="display-label">Login</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Login) %>
    </div>

    <div class="display-label">Password</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Password) %>
    </div>

  
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Volver atrás", "Index") %>
    </p>
<% } %>

</asp:Content>
