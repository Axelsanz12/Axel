<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ListaPokemon.aspx.cs" Inherits="WebPracticaPokemon.ListaPokemon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <h1>Lista de Pokemons</h1>

    <asp:GridView ID="dgvPokemons" runat="server" CssClass="table" AutoGenerateColumns="false"
        DataKeyNames="Id"
        OnSelectedIndexChanged="dgvPokemons_SelectedIndexChanged" OnPageIndexChanging="dgvPokemons_PageIndexChanging"
        AllowPaging="true" PageSize="5">
        <Columns>
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Numero" DataField="Numero" />
            <asp:BoundField HeaderText="Tipo" DataField="Tipo.descripcion" />
            <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Accion" />
        </Columns>
    </asp:GridView>
    <div class="mb-3">
    <a href="FormularioPokemon.aspx" class="btn btn-primary">Agregar</a>
    </div>









</asp:Content>
