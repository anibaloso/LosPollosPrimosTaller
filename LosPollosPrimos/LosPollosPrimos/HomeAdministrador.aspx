<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomeAdministrador.aspx.cs" Inherits="LosPollosPrimos.HomeAdministrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5 mx-5 p-2">
        <div class="row">
            <div class="col-2"></div>
            <div class="col-4">
                <div class="card text-center">
                    <div class="card-body">
                        <img src="Imagenes/Empleados.png" />
                    </div>
                    <div class="card-footer">
                        <asp:Button ID="EmpleadosBtn" type="button" class="btn btn-dark" runat="server" Text="Empleados" OnClick="EmpleadosBtn_Click" />
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="card text-center">
                    <div class="card-body">
                        <img src="Imagenes/Productos.jpg" />
                    </div>

                    <div class="card-footer">
                        <asp:Button ID="ProductosBtn" type="button" class="btn btn-dark" runat="server" Text="Productos" OnClick="ProductosBtn_Click" />
                    </div>
                </div>
            </div>
            <div class="col-2"></div>
        </div>
    </div>
</asp:Content>
