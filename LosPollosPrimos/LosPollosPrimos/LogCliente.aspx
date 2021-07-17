<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogCliente.aspx.cs" Inherits="LosPollosPrimos.Paginas.LogCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row mt-5">

        <div class="col-5 col-md-6 col-lg-4 mx-auto">

            <label class="form-label h3 text-danger" runat="server" id="errorTxt" ></label>

            <div class="card">
                <div class="card-header bg-warning text-dark text-center">
                    <h3 class="p-2">Ingresar</h3>
                </div>
                <div class="card-body">

                    <div class="mb-3">
                        <label class="form-label" for="RutTxt">Rut</label>
                        <asp:TextBox ID="RutIngresoTxt" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Necesita Ingresa un rut" 
                            ControlToValidate="RutIngresoTxt" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="ContraseñaTxt">Contraseña</label>
                        <asp:TextBox ID="ContraseñaIngresoTxt" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Necesita Ingresa una contraseña" 
                            ControlToValidate="ContraseñaIngresoTxt" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                    <div class="card-footer d-grip gap-1 text-center">
                        <asp:Button ID="AccederBtn" runat="server" Text="Acceder" CssClass="btn btn-danger" OnClick="AccederBtn_Click" />
                    </div>


                </div>
            </div>
        </div>
       
    </div>
    

</asp:Content>
