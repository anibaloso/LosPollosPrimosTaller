<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmarPago2.aspx.cs" Inherits="LosPollosPrimos.ConfirmarPago2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <link
      rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
    <script src="http://code.jquery.com/jquery-1.9.1.js" type="text/javascript"></script>

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
                    <h3><label for="ListaTipoPago">Metodo de pago</label></h3>
                    <asp:DropDownList ID="ListaTipoPago" runat="server" Width="200" Height="50" CssClass="text-center text-black-50 h4 p">
                    </asp:DropDownList>
                </div>
                <h3><label>Detalle</label></h3>
                <asp:GridView ID="DetallePago" runat="server"
                    CssClass="table table-hover" AutoGenerateColumns="false"
                    OnRowCommand="DetallePago_RowCommand" OnSelectedIndexChanged="DetallePago_SelectedIndexChanged">

                    <Columns>
                        <asp:BoundField HeaderText="Producto" DataField="nombreProducto" />
                        <asp:BoundField HeaderText="Cantidad" DataField="cantidad" />
                        <asp:BoundField HeaderText="Valor Total" DataField="valorTotal" />
                    </Columns>

                </asp:GridView>
                

            </div>
            <div class="card-footer text-center">
                <asp:Button ID="BtnPago" runat="server" Text="Pagar" CssClass="btn btn-danger h3" Width="200" Height="50" OnClick="BtnPago_Click"/>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
