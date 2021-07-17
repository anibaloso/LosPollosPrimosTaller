<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConfirmarPagoCliente.aspx.cs" Inherits="LosPollosPrimos.ConfirmarPagoCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card">
                <div class="card-header bg-warning text-black text-center">
                    <h3 class="p-2">Confirmacion de cuenta</h3>
                </div>
            </div>
            <div class="card-body container-fluid text-center">
                <div class="form-group p-3">
                    <%-- Valor total tomado de la pagina de pantalla venta --%>
                    <h3>
                        <label>Valor Total</label></h3>
                    <h1>
                        <asp:TextBox ID="ValorTotal" runat="server" Width="300" Height="60" Enabled="false" CssClass="text-center"></asp:TextBox></h1>
                </div>
                <div class="form-group p-3 text-center">
                    <%-- Metodo de pago --%>
                    <h3>
                        <label for="ListaTipoPago">Metodo de pago</label></h3>
                    <asp:DropDownList ID="ListaTipoPago" runat="server" Width="200" Height="50" CssClass="text-center h4 p">
                    </asp:DropDownList>
                </div>
                <h3>
                    <label>Detalle</label></h3>
                <asp:GridView ID="DetallePago" runat="server"
                    CssClass="table table-hover" AutoGenerateColumns="false"
                    OnRowCommand="DetallePago_RowCommand" OnSelectedIndexChanged="DetallePago_SelectedIndexChanged">

                    <Columns>
                        <asp:BoundField HeaderText="Producto" DataField="nombreProducto" />
                        <asp:BoundField HeaderText="Cantidad" DataField="cantidad" />
                        <asp:BoundField HeaderText="Valor Total" DataField="valorTotal" />
                    </Columns>
                    
                    <%-- aqui hay que arreglar lo de la seleccion --%>
                </asp:GridView>
                <asp:RadioButtonList ID="RadioButtonList1" CssClass="h2 text-start" runat="server"  OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Text="Retiro en tienda" Value="Retiro en tienda" ></asp:ListItem>
                    <asp:ListItem Text="Despacho a Domicilio" Value="Despacho a Domicilio"></asp:ListItem>
                    
                </asp:RadioButtonList>
                <asp:DropDownList runat="server" CssClass="h3 text-center " Width="200" Height="50" ID="SeleccionRetiro">
                    <asp:ListItem Text="Valparaiso" Value="Valparaiso"></asp:ListItem>
                    <asp:ListItem Text="Viña del mar" Value="Viña del mar"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="card-footer text-center">
                <asp:Button ID="BtnPago" runat="server" Text="Pagar" CssClass="btn btn-danger h3" Width="200" Height="50" OnClick="BtnPago_Click" />
            </div>
        </div>
    </div>
</asp:Content>
