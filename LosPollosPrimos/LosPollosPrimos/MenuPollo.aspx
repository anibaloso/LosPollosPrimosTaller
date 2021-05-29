<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuPollo.aspx.cs" Inherits="LosPollosPrimos.MenuPollo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row-4" id="lista">
            <div class="col-9 p-3 ">
                <ul class="list-group">
                    <li class="list-group-item"><a href="Menu.aspx">Bebidas</a></li>
                    <li class="list-group-item"><a href="MenuPollo.aspx">Pollo</a></li>
                    <li class="list-group-item"><a href="MenuCompletos.aspx">Completos</a></li>
                    <li class="list-group-item"><a href="MenuPapasFritas.aspx">Papas Fritas</a></li>
                    <li class="list-group-item"><a href="MenuMenus.aspx">Menus</a></li>
                </ul>
            </div>
        </div>


        <%--<div class="row-4 float-end p-3">--%>
        <%String[] pollos = { "1/4 De Pollo Asado", "1/2 De Pollo Asado", "1 Pollo Entero Asado" };
            String[] fotos = { "Imagenes/Pollo-asado-1-4.jpg", "Imagenes/Pollo-asado-medio.jpg", "Imagenes/Pollo-asado-entero.jpg" };
            String[] descripcion = { "Delicioso 1/4 de pollo asado trozado", "Delicioso medio trozo de pollo asado", "1 Delicioso Pollo entero asado" };
            String[] precio = { "$2.500.-", "$4.500.-", "$7.000.-" };
            for (int i = 0; i < pollos.Length; ++i)
            {
        %>
        <div class="col-md-3 float-md-end ms-md-3 mb-3 p-3">
            <div class="card">
                <div class="card-header bg-dark bg-gradient text-white text-center">
                    <h5><%=pollos[i] %></h5>
                </div>
                <div class="card-body align-content-end">
                    <img src="<%=fotos[i] %>" id="fotos" />
                </div>
                <div class="card-footer text-center bg-dark text-white">
                    <h4><%=descripcion[i]%></h4>
                    <h5><strong><%=precio[i] %></strong></h5>
                </div>

            </div>
        </div>

        <%} %>
        <%--</div>--%>
    </div>
    </div>
</asp:Content>
