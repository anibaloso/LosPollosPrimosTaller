<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecuperarContraseñaCliente.aspx.cs" Inherits="LosPollosPrimos.RecuperarContraseñaCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card">
                <div class="card-header bg-warning text-dark text-center">
                    <h3 class="p-2">Recuperar Contraseña Cliente</h3>
                </div>
                <div class="card-body">
                    <label runat="server" id="errorTxt" class="form-label text-danger h5" ></label>
                    <div class="mb-3">
                        <label class="form-label" for="RutIngresoTxt">Ingrese su Rut (se le enviara la contraseña a su correo registrado)</label>
                        <input runat="server" type="text" class="form-control" id="RutIngresoTxt" required>
                        <asp:CustomValidator ID="RutCV" runat="server"
                            ValidateEmptyText="true"
                            CssClass="text-danger"
                            ControlToValidate="RutIngresoTxt" OnServerValidate="RutCV_ServerValidate"
                            ErrorMessage="CustomValidator"></asp:CustomValidator>
                 
                    <div class="card-footer d-grip gap-1 text-center">
                        <asp:Button ID="recuperarBtn" runat="server" Text="Recuperar" CssClass="btn btn-danger" OnClick="recuperarBtn_Click" />
                    </div>
                </div>
                    </div>
            </div>
        </div>  
    </div>

</asp:Content>
