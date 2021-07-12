<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerEmpleados.aspx.cs" Inherits="LosPollosPrimos.VerEmpleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid mt-3 p-md-4 col-lg-8">
        <div class="p-md-4 d-grid gap-4 col-6 mx-auto btn-group">
              <asp:Button ID="AgregarEmpBtn" OnClick="AgregarEmpBtn_Click" runat="server" type="button" class="btn btn-success" Text="Ingresar Empleado" />
                <asp:Button ID="VolverBtn" OnClick="VolverBtn_Click" runat="server" Text="Volver" CssClass="btn btn-danger" />
        </div>
                     
               
        <asp:Gridview runat="server" class="table table-striped" ID="GVVista" AutoGenerateColumns="false">         

            <Columns>
                <asp:BoundField HeaderText="Rut Empleado" DataField="Rut" />
                <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                <asp:BoundField HeaderText="Telefono" DataField="Telefono" />
                <asp:BoundField HeaderText="Contraseña" DataField="Contraseña" />
            </Columns>

        </asp:Gridview>

       

        <div class="btn-group col-lg-12" role="group" aria-label="Basic mixed styles example">
                            <asp:Button ID="Button1" OnClick="ModificarBtn_Click" runat="server" type="button" class="btn btn-warning" Text="Modificar Empleado" />
                        </div>

    </div>
</asp:Content>
