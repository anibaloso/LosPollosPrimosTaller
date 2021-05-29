<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuCompletos.aspx.cs" Inherits="LosPollosPrimos.MenuPollo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">

        <div class="row-4 " id="lista">
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
        <%--<div class="row-4 float-start p-3">--%>
        <%String[] completos = { "Hot Dog", "Completo sin Palta", "Completo italiano" };
            String[] fotos = { "Imagenes/hot-dog.jpg", "Imagenes/completo-sin-palta.jpg", "Imagenes/completo.jpg" };
            String[] descripcion = { "Pan de mesa con una sabrosa Vienesa", "Pan de mesa con vienesa y tomate", "Pan de mesa con vienesa tomate y palta" };
            String precio = "$1.500";
            for (int i = 0; i < completos.Length; ++i)
            {
        %>
        <div class="col-md-3 float-md-end ms-md-3 mb-3 p-3">
            <div class="card">
                <div class="card-header bg-dark bg-gradient text-white text-center">
                    <h5><%=completos[i] %></h5>
                </div>
                <div class="card-body align-content-center">
                    <img src="<%=fotos[i] %>" id="fotos" />
                </div>
                <div class="card-footer text-center bg-dark text-white">
                    <h4><%=descripcion[i]%></h4>
                    <h5><strong><%=precio %></strong></h5>
                </div>

            </div>
        </div>

        <%} %>
        

    </div>
    
</asp:Content>
