<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogVentas.aspx.cs" Inherits="LosPollosPrimos.Paginas.LogVentas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card">
                <div class="card-header bg-warning text-dark text-center">
                    <h3 class="p-2">Acceder Ventas</h3>
                </div>
                <div class="card-body text-center">
                    <div class="form-group">
                        <label class="form-label" for="UsuarioVentasTxt">Usuario Ventas</label>
                         <input runat="server" type="text" class="form-control" id="UsuarioVentasTxt" required> 
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="ClaveTxt">Clave</label>
                         <input runat="server" type="password" class="form-control" id="ClaveTxt" required> 
                   
                    <asp:CustomValidator ID="ClaveCV" runat="server"
                            ValidateEmptyText="true"
                            CssClass="text-danger"
                            ControlToValidate="ClaveTxt" OnServerValidate="ClaveCV_ServerValidate"
                            ErrorMessage="CustomValidator"></asp:CustomValidator>
                         </div>
                </div>
            </div>
            <div class="card-footer d-grip gap-1 text-center">
                <asp:Button ID="AccederBtn" OnClick="AccederBtn_Click" runat="server" Text="Acceder" CssClass="btn btn-danger" />
            </div>
        </div>
    </div>
</asp:Content>


