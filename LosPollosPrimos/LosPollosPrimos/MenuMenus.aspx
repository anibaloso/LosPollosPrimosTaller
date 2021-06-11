<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuMenus.aspx.cs" Inherits="LosPollosPrimos.MenuPollo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid table-responsive-lg">
        
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
                <%String[] menu = { "1 Pollo entero con porcion de papas fritas"
                            , "Medio Pollo asado con papas fritas"
                            ,"1/4 de pollo asado con papas fritas"
                            , "Completo italiano mas papas fritas" };
                    String[] fotos = { "Imagenes/pollo-entero-papas-fritas.jpg"
                            , "Imagenes/pollo-medio-papas-fritas.jpg"
                            , "Imagenes/1-4pollo-papas.jpg"
                            , "Imagenes/completo-con-papas.jpg" };
                    String[] descripcion = { "Pollo asado Completo mas porcion grande de papas fritas ideal para 4 personas"
                            , "Medio pollo asado mas porcion mediana de papas fritasideal para 2 personas"
                            , "1/4 de pollo asado mas porcion individual de papas fritas"
                            , "Pan de mesa con vienesa tomate y palta y porcion de papas fritas" };
                    String[] precio = { "$10.000.-","$5.500.-","$3.000.-","$2.500.-" };
                    for (int i = 0; i < menu.Length; ++i)
                    {
                %>
                <div class="col-md-3 float-md-end ms-md-3 mb-3 p-3">
                    <div class="card">
                        <div class="card-header bg-dark bg-gradient text-white text-center">
                            <h5><%=menu[i] %></h5>
                        </div>
                        <div class="card-body align-content-center">
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
</asp:Content>