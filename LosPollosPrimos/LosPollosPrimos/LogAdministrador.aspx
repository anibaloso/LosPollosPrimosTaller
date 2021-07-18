<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogAdministrador.aspx.cs" Inherits="LosPollosPrimos.Paginas.LogAdministrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card text-center">
                <div class="card-header bg-warning text-dark">
                    <h3 class="p-2">Acceder Administrador</h3>
                </div>
                <div class="card-body text-center">
                    <div class="mb-3">
                        <label class="form-label" for="UsuarioAdministradorTxt">Usuario Administrador</label>
                        <input runat="server" type="password" class="form-control" id="UsuarioAdministradorTxt" required>
                        <div class="form-group">
                            <label class="form-label" for="ClaveTxt">Clave</label>
                            <input runat="server" type="password" class="form-control" id="ClaveTxt" required>
                             <asp:CustomValidator ID="ClaveCV" runat="server"
                            ValidateEmptyText="true"
                            CssClass="text-danger"
                            ControlToValidate="ClaveTxt" OnServerValidate="ClaveCV_ServerValidate"
                            ErrorMessage="CustomValidator"></asp:CustomValidator>
                        </div>
                       
                    </div>
                    <div class="card-footer d-grip gap-1 text-center">
                        <asp:Button runat="server" CssClass="btn btn-danger" ID="BtnAcceder" Text="Acceder" OnClick="BtnAcceder_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
