<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogAdministrador.aspx.cs" Inherits="LosPollosPrimos.Paginas.LogAdministrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card text-center">
                <div class="card-header bg-dark text-white ">
                    <h5 class="p-2">Acceder</h5>
                </div>
                <div class="card-body">
                    <div class="mb-3">
                        <label class="form-label" for="UsuarioAdministradorTxt">Usuario Administrador</label>
                        <asp:TextBox ID="UsuarioAdministradorTxt" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="ClaveTxt">Clave</label>
                        <asp:TextBox ID="ClaveTxt" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="card-footer d-grip gap-1 text-center">
                        <asp:Button ID="AccederBtn" runat="server" Text="Acceder" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
