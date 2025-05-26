<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebPracticaPokemon.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hola</h1>
    <p>Llegaste a pokemons web...</p>


    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%--  <%
            foreach (dominio.Pokemons poke in listaPokemon)
            {
        %>
                <div class="col">
                    <div class="card">
                        <img src="<%:poke.UrlImagen %>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%:poke.Nombre %></h5>
                             <p> class="card-Text"> <%:poke.descripcion %> </p>
                            <a href="Detalle.aspx?id=<%:poke.Id %>">Ver Detalle</a>
                        </div>
                    </div>
                </div>
          <%  }%>--%>
        <%--             otra manera de hacer un repetidor es como un foreach  , esta version queda un poco mas limpia --%>
        <asp:Repeater runat="server" ID="repRepetidor">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("urlImagen")%>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <p>Class="card-Text> <%#Eval("Descripcion") %></p>
                            <a href="Detalle.aspx?id=<%#Eval ("Id") %>">Ver Detalle</a>
                            <asp:Button Text="Ejemplo" CssClass="btn btn-primary" runat="server" ID="btnEjemplo" CommandArgument='<%#Eval("Id") %>' CommandName="PokemonId" OnClick="btnEjemplo_Click"/>

                        </div>
                    </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>

    </div>



</asp:Content>
