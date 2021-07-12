<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerProductos.aspx.cs" Inherits="LosPollosPrimos.VerProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid mt-3 p-md-4 col-lg-8">
        <div class="p-md-4 d-grid gap-4 col-6 mx-auto btn-group">
            <asp:Button ID="AgregarProBtn" OnClick="AgregarProBtn_Click" runat="server" type="button" class="btn btn-success" Text="Ingresar Producto" />
            <asp:Button ID="VolverBtn" OnClick="VolverBtn_Click" runat="server" Text="Volver" CssClass="btn btn-danger" />
        </div>
        
         <asp:Gridview runat="server" class="table table-striped" ID="GVVista" AutoGenerateColumns="false">         

            <Columns>
                <asp:BoundField HeaderText="ID Producto" DataField="id" />
                <asp:BoundField HeaderText="Nombre Producto" DataField="Nombre" />
                <asp:BoundField HeaderText="Valor" DataField="valor" />
                <asp:BoundField HeaderText="Url" DataField="url" />
            </Columns>

        </asp:Gridview>
       

        <div class="btn-group col-lg-12" role="group" aria-label="Basic mixed styles example">
                            <asp:Button ID="Button1" OnClick="ModificarProBtn_Click" runat="server" type="button" class="btn btn-warning" Text="Modificar Producto" />
                        </div>


    </div>
</asp:Content>
