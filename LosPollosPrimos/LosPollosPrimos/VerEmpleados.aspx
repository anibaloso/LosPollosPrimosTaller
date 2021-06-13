<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerEmpleados.aspx.cs" Inherits="LosPollosPrimos.VerEmpleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid mt-3 p-md-4 col-lg-8">
        <div class="p-md-4 d-grid gap-4 col-6 mx-auto btn-group">
              <asp:Button ID="AgregarEmpBtn" OnClick="AgregarEmpBtn_Click" runat="server" type="button" class="btn btn-success" Text="Ingresar Empleado" />
                <asp:Button ID="VolverBtn" OnClick="VolverBtn_Click" runat="server" Text="Volver" CssClass="btn btn-danger" />
        </div>
               
        <asp:Gridview runat="server" ID="GVVista" AutoGenerateColumns="false">         

            <Columns>
                <%--<asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="chbItem" runat="server" />
                     </ItemTemplate>
                </asp:TemplateField>--%>
                <asp:BoundField HeaderText="Rut Empleado" DataField="Rut" />
                <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                <asp:BoundField HeaderText="Telefono" DataField="Telefono" />
                <asp:BoundField HeaderText="Contraseña" DataField="Contraseña" />
            </Columns>


        </asp:Gridview>




        <table runat="server" class="table table-responsive table-hover table-bordered border-warning" id="tablaVer">
            <thead class="bg-warning">
                <tr>
                    <th scope="col">Rut</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Telefono</th>
                    <th scope="col">Contraseña</th>
                    <th class="text-center" scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody>                
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <div class="btn-group col-lg-12" role="group" aria-label="Basic mixed styles example">
                            <asp:Button ID="ModificarBtn" OnClick="ModificarBtn_Click" runat="server" type="button" class="btn btn-warning" Text="Modificar" />
                            <asp:Button runat="server" type="button" class="btn btn-danger" Text="Eliminar" />
                        </div> </td>
                   </tr>
            </tbody>
        </table>

        <div class="btn-group col-lg-12" role="group" aria-label="Basic mixed styles example">
                            <asp:Button ID="Button1" OnClick="ModificarBtn_Click" runat="server" type="button" class="btn btn-warning" Text="Modificar" />
                            <asp:Button runat="server" type="button" class="btn btn-danger" Text="Eliminar" />
                        </div>

    </div>
</asp:Content>
