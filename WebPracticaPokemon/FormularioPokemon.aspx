<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="FormularioPokemon.aspx.cs" Inherits="WebPracticaPokemon.FormularioPokemon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row justify-content-center">
        <div class="col-6">
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Id</label>
                <asp:TextBox runat="server" ID="txtId" class="form-control" />

            </div>
            <div class="mb-3">
                <label for="txtNombre" class="form-label">Nombre</label>
                <asp:TextBox runat="server" ID="TxtNombre" class="form-control" />
            </div>
            <div class="mb-3">
                <label for="TxtNumero" class="form-label">Numero</label>
                <asp:TextBox runat="server" ID="TxtNumero" class="form-control" />
            </div>
            <div class="mb-3">
                <label for="TxtDescripcion" class="form-label">Descripcion</label>
                <asp:TextBox runat="server" ID="TxtDescripcion" class="form-control" />
            </div>
            <div class="mb-3">
                <label for="TxtTipo" class="form-label">Tipo</label>
                <asp:DropDownList runat="server" ID="TxtTipo" class="form-control" />
            </div>
            <div class="mb-3">
                <label for="TxtDebilidad" class="form-label">Debilidad</label>
                <asp:DropDownList runat="server" ID="TxtDebilidad" class="form-control" />
            </div>

            <div class="mb-3">
                <asp:Button Text="Aceptar" runat="server" ID="btnaceptar" OnClick="btnaceptar_Click" CssClass="btn btn-primary" />
                <a href="Default.aspx">Cancelar</a>

            </div>

        </div>
    </div>
</asp:Content>
