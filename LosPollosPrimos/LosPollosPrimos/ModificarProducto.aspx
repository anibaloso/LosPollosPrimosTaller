<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificarProducto.aspx.cs" Inherits="LosPollosPrimos.EditarProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card">
                <div class="card-header text-center bg-warning text-dark">
                    <h3 class="p-2">Modificar Producto</h3>
                </div>
                <div class="card-body">
                    <div class="mt-3" >
                        <asp:label runat="server" for="validationCustom01" class="form-label" id="r">ID</asp:label>
                        <select runat="server" class="form-select" id="idBox" >                            
                        </select>                                           
                    </div>

                    <asp:Button runat="server" class="btn btn-primary" OnClick="llenarDatos" type="submit" Text="Buscar"></asp:button> 

                    <div class="mb-3 ">
                        <label class="form-label" for="a">Nombre</label>
                        <input runat="server" type="text" class="form-control" id="nombreTxt">
                        <label runat="server" id="errorNombre" class="form-label text-danger h5"></label>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar el nombre"
                            ControlToValidate="nombreTxt" CssClass="text-danger"></asp:RequiredFieldValidator>--%>
                    </div>
                    <div class="mb-3 ">
                        <label class="form-label" for="a">Valor</label>
                         <input runat="server" type="number" class="form-control" id="valorTxt">
                        <label runat="server" id="errorValor" class="form-label text-danger h5"></label>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar el valor"
                            ControlToValidate="valorTxt" CssClass="text-danger"></asp:RequiredFieldValidator>
                         <asp:CustomValidator ID="ValidacionValor" runat="server"
                            ValidateEmptyText="true"
                            CssClass="text-danger"
                            ControlToValidate="valorTxt" OnServerValidate="ValidacionValor_ServerValidate"
                            ErrorMessage="CustomValidator"></asp:CustomValidator>--%>
                    </div>
                    <div class="mb-3 ">
                        <label class="form-label" for="a">Url</label>
                         <input runat="server" type="text" class="form-control" id="urlTxt">
                        <label runat="server" id="errorUrl" class="form-label text-danger h5"></label>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe ingresar la url"
                            ControlToValidate="urlTxt" CssClass="text-danger"></asp:RequiredFieldValidator>--%>
                    </div>
                    <div class="card-footer d-grip gap-3 text-center">
                        <asp:Button ID="ActualizarBtn" OnClick="ActualizarBtn_Click" runat="server" Text="Actualizar" CssClass="btn btn-success" />
                         <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">Eliminar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
      <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Confirmar eliminación</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
                </div>
                <div class="modal-body">
                    Está seguro que desea eliminar este producto?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancelar</button>
                    <asp:Button ID="Button1" OnClick="EliminarBtn_Click" CssClass="btn btn-success" runat="server" Text="Aceptar" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
