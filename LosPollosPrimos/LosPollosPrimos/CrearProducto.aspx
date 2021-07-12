<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearProducto.aspx.cs" Inherits="LosPollosPrimos.CrearProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card">
                <div class="card-header text-center bg-warning text-dark">
                    <h3 class="p-2">Crear Producto</h3>
                </div>
                <div class="card-body">
                    <div class="mb-3 ">
                        <label class="form-label" for="a">Nombre Producto</label>
                        <input runat="server" type="text" class="form-control" id="nombreTxt" required>
                    </div>
                    <div class="mb-3 ">
                        <label class="form-label" for="a">Valor Producto</label>
                        <input runat="server" type="number" class="form-control" id="valorTxt" required>
                    </div>
                    <div class="mb-3 ">
                        <label class="form-label" for="a">Url Imagen</label>
                        <input runat="server" type="text" class="form-control" id="urlTxt" required>
                    </div>
                    <div class="card-footer d-grid gap-4 text-center">
                        <asp:Button ID="AgregarBtn" OnClick="CrearBtn_Click" runat ="server" Text="Agregar" CssClass="btn btn-success" />
                        <asp:Button ID="VolverBtn" OnClick="VolverBtn_Click" runat="server" Text="Volver" CssClass="btn btn-danger" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
