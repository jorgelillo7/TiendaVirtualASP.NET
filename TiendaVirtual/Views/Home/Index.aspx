<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/PublicLayout.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<TiendaVirtual.Models.Libros>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

    
    <div class="container">
    <div class="row">
      <ul class="thumbnails list-unstyled">
          <% foreach (var item in Model) { %>
           <li class="col-md-3">
          <div class="thumbnail" style="padding: 0">
            <div class="caption">
              <h2> <%: Html.DisplayFor(modelItem => item.Titulo) %></h2>
                <h4>   <%: Html.DisplayFor(modelItem => item.Autor) %></h4>
              <p><%: Html.DisplayFor(modelItem => item.Resumen) %></p>
              <p><i class="icon icon-map-marker"></i> Isbn: <%: Html.DisplayFor(modelItem => item.Isbn) %></p>
            </div>
            <div class="modal-footer" style="text-align: left">
                    <h4><%: Html.DisplayFor(modelItem => item.Precio) %>€  <span style="float:right">  <%: Html.ActionLink("Añadir", "Add","Home",new { id=item.Isbn },new { @class = "btn btn-success" }) %></span></h4>

            </div>
          </div>
        </li>

        <% } %>
       

      </ul>
    </div>
</div>





</asp:Content>
