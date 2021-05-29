<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuPapasFritas.aspx.cs" Inherits="LosPollosPrimos.MenuPollo" %>
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
                <%String[] papas = { "1/4 Kg. de papas fritas", "1/2Kg. de papas fritas", " 1Kg. de papas fritas" };
                        String fotos = "Imagenes/papas-fritas.jpg";
                    String[] descripcion = { "1/4 kilo de ricas papas fritas", "1/2 kilo de Ricas papas fritas", "1 kilo de ricas papas fritas" };
                    String[] precio = { "$1.500.-","$2.500.-","$3.500.-" };
                    for (int i = 0; i < papas.Length; ++i)
                    {
                %>
                <div class="col-md-3 float-md-end ms-md-3 mb-3 p-3">
                    <div class="card">
                        <div class="card-header bg-dark bg-gradient text-white text-center">
                            <h5><%=papas[i] %></h5>
                        </div>
                        <div class="card-body align-content-center">
                            <img src="<%=fotos %>" id="fotos" />
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