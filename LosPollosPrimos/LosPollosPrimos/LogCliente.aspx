<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogCliente.aspx.cs" Inherits="LosPollosPrimos.Paginas.LogCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card">
                <div class="card-header bg-warning text-dark text-center">
                    <h3 class="p-2">Ingresar Cliente</h3>
                </div>
                <div class="card-body">
                    <div class="mb-3">
                        <label class="form-label" for="RutIngresoTxt">Rut</label>
                        <input runat="server" type="text" class="form-control" id="RutIngresoTxt" required>
                        <asp:CustomValidator ID="RutCV" runat="server"
                            ValidateEmptyText="true"
                            CssClass="text-danger"
                            ControlToValidate="RutIngresoTxt" OnServerValidate="RutCV_ServerValidate"
                            ErrorMessage="CustomValidator"></asp:CustomValidator>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="ContraseñaTxt">Contraseña</label>
                        <input runat="server" type="password" class="form-control" id="ContraseñaIngresoTxt"> 
                       
                        <asp:CustomValidator ID="ContraseñaValidacion" runat="server"
                            ValidateEmptyText="true"
                            CssClass="text-danger"
                            ControlToValidate="ContraseñaIngresoTxt" OnServerValidate="ContraseñaValidacion_ServerValidate"
                            ErrorMessage="CustomValidator"></asp:CustomValidator>                    </div>
                     <a runat="server" class="form-label text-start h6 text-info" href="RecuperarContraseñaCliente.aspx">¿Olvidaste la contraseña?</a>
                    <div class="p-2"></div>
                    <div class="card-footer d-grip gap-1 text-center">
                        <asp:Button ID="AccederBtn" runat="server" Text="Acceder" CssClass="btn btn-danger" OnClick="AccederBtn_Click" />
                    </div>
                </div>
            </div>
        </div>  
    </div>
</asp:Content>
