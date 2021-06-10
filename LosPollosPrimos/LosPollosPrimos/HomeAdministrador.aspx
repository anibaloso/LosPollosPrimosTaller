<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomeAdministrador.aspx.cs" Inherits="LosPollosPrimos.HomeAdministrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="btn-group position-absolute top-0 start-50 translate-middle btn-outline-warning position-absolute top-50 w-50 p-3" role="group" aria-label="Basic example">
      <asp:Button ID="EmpleadosBtn" type="button" class="btn btn-dark" runat="server" Text="C.R.U.D Empleados" OnClick="EmpleadosBtn_Click"/>
      <asp:Button ID="ProductosBtn" type="button" class="btn btn-dark" runat="server" Text="C.R.U.D Productos" OnClick="ProductosBtn_Click"/>
</div>
</asp:Content>
