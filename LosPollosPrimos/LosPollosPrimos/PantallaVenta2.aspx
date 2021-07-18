<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PantallaVenta2.aspx.cs" Inherits="LosPollosPrimos.PantallaVenta2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <link
            rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
        <script src="http://code.jquery.com/jquery-1.9.1.js" type="text/javascript"></script>

        <div class="container-fluid bg-dark ">
            <div class="row">
                <div class="col-9">
                    <div class="card bg-dark">
                        <div class="card-header  bg-warning text-white text-center px-4">
                            <div class="row gx-5">
                                <div class="col">
                                    <h1 class="pr-5">
                                        <asp:Button ID="cerrarSesion" runat="server" Text="CerrarSesion" CssClass="btn btn-danger " OnClick="cerrarSesion_Click" />
                                        <strong runat="server" class="p-5" id="TextTxt">Pantalla de Ventas</strong>
                                        <asp:Label ID="VendodorTxt" runat="server" Text="" CssClass="p-5"></asp:Label>

                                    </h1>
                                </div>
                            </div>
                        </div>
                        <div class="card-body align-content-around p-5 text-center text-white bg-light">
                            <div class="row p-1 bg-secondary">
                                <div class="col-3 bg-secondary">
                                    <h5 id="textoVentas">Bebidas</h5>
                                </div>


                                <asp:ImageButton ID="cocaCola" runat="server" ImageUrl="~/Imagenes/coca-cola.jpg" Width="150" Height="150" OnClick="cocaCola_Click" BorderStyle="Double" />
                                <asp:ImageButton ID="sprite" runat="server" ImageUrl="~/Imagenes/sprite.jpg" Width="150" Height="150" OnClick="sprite_Click" BorderStyle="Double" />
                                <asp:ImageButton ID="fanta" runat="server" ImageUrl="~/Imagenes/fanta.jpg" Width="150" Height="150" OnClick="fanta_Click" BorderStyle="Double" />
                                <asp:ImageButton ID="pepsi" runat="server" ImageUrl="~/Imagenes/pepsi.jpg" Width="150" Height="150" OnClick="pepsi_Click" BorderStyle="Double" />
                                <asp:ImageButton ID="orange" runat="server" ImageUrl="~/Imagenes/orange.jpg" Width="150" Height="150" OnClick="orange_Click" BorderStyle="Double" />
                                <asp:ImageButton ID="seven" runat="server" ImageUrl="~/Imagenes/seven-up.jpg" Width="150" Height="150" OnClick="seven_Click" BorderStyle="Double" />

                            </div>
                            <div class="row p-1 bg-secondary">
                                <div class="col-3 bg-secondary p-1">
                                    <h5 id="textoVentas">Pollos</h5>
                                </div>
                                <asp:ImageButton ID="polloCuarto" runat="server" ImageUrl="~/Imagenes/Pollo-asado-1-4.jpg" Width="150" Height="150" OnClick="polloCuarto_Click" BorderStyle="Double" />
                                <asp:ImageButton ID="polloMedio" runat="server" ImageUrl="~/Imagenes/Pollo-asado-medio.jpg" Width="150" Height="150" OnClick="polloMedio_Click" BorderStyle="Double" />
                                <asp:ImageButton ID="polloKilo" runat="server" ImageUrl="~/Imagenes/Pollo-asado-entero.jpg" Width="150" Height="150" OnClick="polloKilo_Click" BorderStyle="Double" />
                            </div>
                            <div class="row p-1 bg-secondary">
                                <div class="col-3 bg-secondary">
                                    <h5 id="textoVentas">Completos</h5>
                                </div>
                                <asp:ImageButton ID="hotdog" runat="server" ImageUrl="~/Imagenes/hot-dog.jpg" Width="150" Height="150" OnClick="hotdog_Click" BorderStyle="Double" />
                                <asp:ImageButton ID="sinPalta" runat="server" ImageUrl="~/Imagenes/completo-sin-palta.jpg" Width="150" Height="150" OnClick="sinPalta_Click" BorderStyle="Double" />
                                <asp:ImageButton ID="completo" runat="server" ImageUrl="~/Imagenes/completo.jpg" Width="150" Height="150" OnClick="completo_Click" BorderStyle="Double" />

                            </div>
                            <div class="row p-1 bg-secondary">
                                <div class="col-3 bg-secondary">
                                    <h5 id="textoVentas">Papas Fritas</h5>
                                </div>

                                <asp:ImageButton ID="papasCuarto" runat="server" ImageUrl="~/Imagenes/papas-fritas.jpg" Width="150" Height="150" OnClick="papasCuarto_Click" BorderStyle="Double" />
                                <asp:ImageButton ID="papasMedio" runat="server" ImageUrl="~/Imagenes/papas-fritas.jpg" Width="150" Height="150" OnClick="papasMedio_Click" BorderStyle="Double" />
                                <asp:ImageButton ID="papasKilo" runat="server" ImageUrl="~/Imagenes/papas-fritas.jpg" Width="150" Height="150" OnClick="papasKilo_Click" BorderStyle="Double" />

                            </div>
                            <div class="row p-1 bg-secondary">

                                <div class="col-3 bg-secondary">
                                    <h5 id="textoVentas">Menus</h5>
                                </div>
                                <asp:ImageButton ID="polloPapasCuarto" runat="server" ImageUrl="~/Imagenes/1-4pollo-papas.jpg" Width="150" Height="150" OnClick="polloPapasCuarto_Click" BorderStyle="Double" />
                                <asp:ImageButton ID="polloPapasMedio" runat="server" ImageUrl="~/Imagenes/pollo-medio-papas-fritas.jpg" Width="150" Height="150" OnClick="polloPapasMedio_Click" BorderStyle="Double" />
                                <asp:ImageButton ID="polloPapasEntero" runat="server" ImageUrl="~/Imagenes/pollo-entero-papas-fritas.jpg" Width="150" Height="150" OnClick="polloPapasEntero_Click" BorderStyle="Double" />
                                <asp:ImageButton ID="completoPapas" runat="server" ImageUrl="~/Imagenes/completo-con-papas.jpg" Width="150" Height="150" OnClick="completoPapas_Click" BorderStyle="Double" />


                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3 ">
                    <div class="card float-end text-center m-0">
                        <div class="card-header text-center">
                            <%-- botones de confirmar y borrar --%>

                            <asp:Button runat="server" ID="BtnPagar" CssClass="btn-warning btn" Text="Confirmar" OnClick="btnPagar_Click" />
                            <asp:Button runat="server" ID="BtnEliminar" CssClass="btn-warning btn" Text="Borrar todo" OnClick="BtnEliminar_Click" />

                        </div>
                        <div class="text-center">
                        </div>
                        <asp:GridView ID="tablaCompra" runat="server" AutoGenerateColumns="false"
                            CssClass="table table-hover" OnRowCommand="tablaCompra_RowCommand">

                            <Columns>
                                <asp:TemplateField HeaderText="Acciones">
                                    <ItemTemplate>
                                        <asp:Button ID="btnEliminar" runat="server" Text="-" CssClass="btn btn-danger"
                                            CommandName="eliminar" CommandArgument='<%# Eval("nombreProducto") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="Producto" DataField="nombreProducto" />
                                <asp:BoundField HeaderText="Cantidad" DataField="cantidad" />
                                <asp:BoundField HeaderText="Valor Total" DataField="valorTotal" />

                            </Columns>

                        </asp:GridView>
                        <label id="totalTxt" runat="server" class="h4 text-center text-dark">Total: $</label>
                        <div class="card-body">
                        </div>

                    </div>

                </div>


            </div>
        </div>
    </form>
</body>
</html>
