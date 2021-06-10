 <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogVentas.aspx.cs" Inherits="LosPollosPrimos.Paginas.LogVentas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card">
                <div class="card-header bg-warning text-dark text-center">
                    <h3 class="p-2">Acceder</h3>
                </div>
                <div class="card-body text-center">
                    <div class="mb-3">
                        <label class="form-label" for="UsuarioVentasTxt">Usuario Ventas</label>
                        <asp:TextBox ID="UsuarioVentasTxt" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="ClaveTxt">Clave</label>
                        <asp:TextBox ID="ClaveTxt" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="card-footer d-grip gap-1 text-center">
                        <asp:Button ID="AccederBtn" runat="server" Text="Acceder" CssClass="btn btn-danger" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


