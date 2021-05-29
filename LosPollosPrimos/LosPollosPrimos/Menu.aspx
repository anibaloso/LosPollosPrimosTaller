<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="LosPollosPrimos.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row-4 " id="lista">
            <div class="col-9 p-3 " >
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
                <%String[] bebidas = { "Coca Cola 1/2", "Fanta 1/2", "Sprite 1/2", "Pepsi 1/2", "Crush 1/2", "Seven Up" };
                    String[] fotos = { "Imagenes/coca-cola.jpg","Imagenes/fanta.jpg","Imagenes/sprite.jpg","Imagenes/pepsi.jpg",
                    "Imagenes/orange.jpg","Imagenes/seven-up.jpg",};
                    String descripcion = "Bebida de 1/2 litro";
                    String precio = "$1.000";
                    for (int i = 0; i < bebidas.Length; ++i)
                    {
                %>
                <div class="col-md-3 float-md-end ms-md-3 mb-3 p-3">
                    <div class="card">
                        <div class="card-header bg-dark bg-gradient text-white text-center">
                            <h5><%=bebidas[i] %></h5>
                        </div>
                        <div class="card-body align-content-center" >
                            <img src="<%=fotos[i] %>" id="fotos" />
                        </div>
                        <div class="card-footer text-center bg-dark text-white">
                            <h4 ><%=descripcion%></h4>
                            <h5 ><strong> <%=precio %></strong></h5>
                        </div>

                    </div>
                </div>

                <%} %>
            <%--</div>--%>
        
    </div>
</asp:Content>
