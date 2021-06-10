<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerEmpleados.aspx.cs" Inherits="LosPollosPrimos.VerEmpleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid mt-3 p-md-5 col-5 col-md-6 col-lg-4 mx-auto">
        <table class="table table-light table-responsive">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">First</th>
                    <th scope="col">Last</th>
                    <th scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>
                        <div class="btn-group " role="group" aria-label="Basic mixed styles example">
                            <asp:Button ID="AgregarEmpBtn" OnClick="AgregarEmpBtn_Click" runat="server" type="button" class="btn btn-success" Text="Agregar" />
                            <asp:Button runat="server" type="button" class="btn btn-warning" Text="Modificar" />
                            <asp:Button runat="server" type="button" class="btn btn-danger" Text="Eliminar" />
                        </div>
            </tbody>
        </table>
    </div>
</asp:Content>
