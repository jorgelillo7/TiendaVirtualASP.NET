<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Layout.Master" Inherits="System.Web.Mvc.ViewPage<TiendaVirtual.Models.Libros>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>Libro</legend>

    <div class="display-label"><strong>Isbn</strong></div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Isbn) %>
    </div>

    <div class="display-label"><strong>Titulo</strong></div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Titulo) %>
    </div>

    <div class="display-label"><strong>Autor</strong></div>  
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Autor) %>
    </div>

    <div class="display-label"><strong>Resumen</strong></div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Resumen) %>
    </div>

    <div class="display-label"><strong>Precio</strong></div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Precio) %>€
    </div>
</fieldset>
<p style="margin-top:20px">
    <%: Html.ActionLink("Editar", "Edit", new { id=Model.Isbn  }) %> |
    <%: Html.ActionLink("Volver atrás", "Index") %>
</p>

</asp:Content>
