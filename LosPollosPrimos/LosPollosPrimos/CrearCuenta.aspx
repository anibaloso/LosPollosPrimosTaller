<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearCuenta.aspx.cs" Inherits="LosPollosPrimos.Paginas.CrearCuenta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card">
                <div class="card-header bg-dark text-white text-center">
                    <h5 class="p-2">Registrar cliente</h5>
                </div>
                <div class="card-body">
                    <div class="mb-3">
                        <label class="form-label" for="RutTxt">Rut</label>
                        <asp:TextBox ID="RutTxt" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="ContraseñaTxt">Contraseña</label>
                        <asp:TextBox ID="ContraseñaTxt" textMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="ContraseñaTxt">Confirmar Contraseña</label>
                        <asp:TextBox ID="ConfirmarContraseñaTxt" textMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="NombreTxt">Nombre</label>
                        <asp:TextBox ID="NombreTxt" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="TelefonoTxt">Telefono</label>
                        <asp:TextBox ID="TelefonoTxt" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="DireccionTxt">Direccion</label>
                        <asp:TextBox ID="DireccionTxt" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="card-footer d-grip gap-1 text-center">
                    <asp:Button ID="GuardarBtn" runat="server" Text="Registrar"  CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
