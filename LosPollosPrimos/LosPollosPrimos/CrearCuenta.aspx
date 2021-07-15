<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearCuenta.aspx.cs" Inherits="LosPollosPrimos.Paginas.CrearCuenta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card">
                <div class="card-header bg-warning text-black text-center">
                    <h3 class="p-2">Registrar cliente</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label class="form-label" for="RutTxt">Rut</label>
                        <asp:TextBox ID="RutTxt" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Debe Ingresar el rut"
                            ControlToValidate="RutTxt" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="rutCV" runat="server"
                            ValidateEmptyText="true"
                            CssClass="text-danger"
                            ControlToValidate="RutTxt" OnServerValidate="rutCV_ServerValidate"
                            ErrorMessage="CustomValidator"></asp:CustomValidator>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="ContraseñaTxt">Contraseña</label>
                        <asp:TextBox ID="ContraseñaTxt" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar la contraseña"
                            ControlToValidate="ContraseñaTxt" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="ContraseñaValTxt">Confirmar Contraseña</label>
                        <asp:TextBox ID="ConfirmarContraseñaTxt" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe confirmar su contraseña"
                            ControlToValidate="ConfirmarContraseñaTxt" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="ContraseñaValidacion" runat="server"
                            ValidateEmptyText="true"
                            CssClass="text-danger"
                            ControlToValidate="ConfirmarContraseñaTxt" OnServerValidate="ContraseñaValidacion_ServerValidate"
                            ErrorMessage="CustomValidator"></asp:CustomValidator>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="NombreTxt">Nombre</label>
                        <asp:TextBox ID="NombreTxt" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe ingresar el nombre"
                            ControlToValidate="NombreTxt" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="TelefonoTxt">Telefono</label>
                        <div class="row">
                            <div class="col-2">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                            </div>
                            <div class="col-10">
                                <asp:TextBox ID="TelefonoTxt" TextMode="Number"  runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe ingresar número de telefono"
                            ControlToValidate="TelefonoTxt" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="ValidarTelefono" runat="server"
                            ValidateEmptyText="true"
                            CssClass="text-danger"
                            ControlToValidate="TelefonoTxt" OnServerValidate="ValidarTelefono_ServerValidate"
                            ErrorMessage="CustomValidator"></asp:CustomValidator>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="DireccionTxt">Direccion</label>
                        <asp:TextBox ID="DireccionTxt" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Debe ingresar la dirección"
                            ControlToValidate="DireccionTxt" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="card-footer d-grip gap-1 text-center">
                    <asp:Button ID="GuardarBtn" runat="server" Text="Registrar" CssClass="btn btn-danger" OnClick="GuardarBtn_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
