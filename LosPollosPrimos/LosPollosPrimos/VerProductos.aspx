<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerProductos.aspx.cs" Inherits="LosPollosPrimos.VerProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid mt-3 p-md-4 col-lg-8">
     <div class="p-md-4 d-grid gap-4 col-6 mx-auto btn-group">
              <asp:Button ID="AgregarProBtn" OnClick="AgregarProBtn_Click" runat="server" type="button" class="btn btn-success" Text="Ingresar Producto" />
                <asp:Button ID="VolverBtn" OnClick="VolverBtn_Click" runat="server" Text="Volver" CssClass="btn btn-danger" />
        </div>
        <table class="table table-responsive table-hover table-bordered border-warning">
            <thead class="bg-warning    ">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Valor</th>
                    <th class="text-center" scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row"></th>
                    <td></td>
                    <td></td>
                    <td>
                        <div class="btn-group col-lg-12" role="group" aria-label="Basic mixed styles example">
                            <asp:Button ID="ModificarProBtn" OnClick="ModificarProBtn_Click" runat="server" type="button" class="btn btn-warning" Text="Modificar" />
                            <asp:Button runat="server" type="button" class="btn btn-danger" Text="Eliminar" />
                        </div>
            </tbody>
        </table>
    </div>
</asp:Content>
