<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearEmpleado.aspx.cs" Inherits="LosPollosPrimos.CrearEmpleado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="row mt-5">
            <div class="col-5 col-md-6 col-lg-4 mx-auto">
                <div class="card">
                    <div class="card-header text-center bg-warning text-dark">
                        <h3 class="p-2">Crear Empleado</h3>
                    </div>
                    <div class="card-body">
                        <div class="mb-3 ">
                            <label class="form-label" for="a">Rut</label>
                            <asp:TextBox ID="a" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="b">Nombre</label>
                            <asp:TextBox ID="b" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3 ">
                            <label class="form-label" for="a">Dirección</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="b">Contraseña</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3 ">
                            <label class="form-label" for="a">Telefono</label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="b">Correo Electrónico</label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="card-footer d-grid gap-3 text-center">
                            <asp:Button ID="AgregarBtn" runat="server" Text="Agregar" CssClass="btn btn-success"/>
                            <asp:Button ID="VolverBtn" OnClick="VolverBtn_Click" runat="server" Text="Volver" CssClass="btn btn-danger" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
