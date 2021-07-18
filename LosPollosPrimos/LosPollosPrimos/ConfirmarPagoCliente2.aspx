<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmarPagoCliente2.aspx.cs" Inherits="LosPollosPrimos.ConfirmarPagoCliente2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
    <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card">
                <div class="card-header bg-warning text-black text-center">
                    <h3 class="p-2">Confirmacion de cuenta</h3>
                </div>
            </div>
            <div class="card-body container-fluid text-center">
                <div class="form-group p-3">
                    <h4><label>Direccion para envio</label></h4>
                    <asp:TextBox ID="direccionTxt" runat="server" Width="200" Height="60" Enabled="false" CssClass="text-center"></asp:TextBox>
                    <%-- Valor total tomado de la pagina de pantalla venta --%>
                    <h4>
                        <label>Valor Total</label></h4>
                    <h3>
                        <asp:TextBox ID="ValorTotal" runat="server" Width="200" Height="60" Enabled="false" CssClass="text-center"></asp:TextBox></h3>
                </div>
                <div class="form-group p-3 text-center">
                    <%-- Metodo de pago --%>
                    <h3>
                        <label for="ListaTipoPago">Metodo de pago</label></h3>
                    <asp:DropDownList ID="ListaTipoPago" runat="server" Width="200" Height="50" CssClass="text-center h5 p">
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
                <asp:RadioButtonList ID="RadioButtonList1" CssClass="h5 text-start text-left" runat="server"  OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Text="Retiro en tienda" Value="Retiro en tienda" ></asp:ListItem>
                    <asp:ListItem Text="Despacho a Domicilio" Value="Despacho a Domicilio"></asp:ListItem>
                    
                </asp:RadioButtonList>
                <asp:DropDownList runat="server" CssClass="h5 text-center " Width="200" Height="50" ID="SeleccionRetiro">
                    <asp:ListItem Text="Local Viña del mar" Value="Local Viña del Mar"></asp:ListItem>
                    <asp:ListItem Text="Local Valparaiso" Value="Local Valparaiso"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="card-footer text-center">
                <asp:Button ID="BtnPago" runat="server" Text="Pagar" CssClass="btn btn-danger h4" Width="200" Height="50" OnClick="BtnPago_Click" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
