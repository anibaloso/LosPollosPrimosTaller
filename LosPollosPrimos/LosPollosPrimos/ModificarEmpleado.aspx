<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificarEmpleado.aspx.cs" Inherits="LosPollosPrimos.EditarEmpleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card">

                <label class="form-label h3 text-danger" runat="server" id="errorTxt"></label>

                <div class="card-header text-center bg-warning text-dark">
                    <h3 class="p-2">Modificar Empleado</h3>
                </div>
                <div class="card-body">

                    <div class="mt-3">
                        <asp:Label runat="server" for="validationCustom01" class="form-label" ID="r">Rut</asp:Label>
                        <select runat="server" class="form-select" id="rutBox">
                        </select>
                    </div>

                    <asp:Button runat="server" class="btn btn-primary" OnClick="llenarDatos" type="submit" Text="Buscar"></asp:Button>

                    <div class="mt-3">
                        <label for="validationCustom02" class="form-label">Nombre</label>
                        <input runat="server" type="text" class="form-control" id="nombreTxt">
                        <label runat="server" id="errorNombre" class="form-label text-danger h5"></label>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe ingresar el nombre"
                            ControlToValidate="nombreTxt" CssClass="text-danger"></asp:RequiredFieldValidator>--%>
                    </div>

                    <div class="mt-3">
                        <label for="validationCustomUsername" class="form-label">Telefono</label>
                        <input runat="server" type="number" class="form-control" id="TelefonoTxt" aria-describedby="inputGroupPrepend">
                        <label runat="server" id="errorTelefono" class="form-label text-danger h5" ></label>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe ingresar el número de telefono"
                            ControlToValidate="TelefonoTxt" CssClass="text-danger"></asp:RequiredFieldValidator>--%>
                    </div>
                    <%--<asp:CustomValidator ID="ValidacionTelefono" runat="server"
                        ValidateEmptyText="true"
                        CssClass="text-danger"
                        ControlToValidate="TelefonoTxt" OnServerValidate="ValidacionTelefono_ServerValidate"
                        ErrorMessage="CustomValidator"></asp:CustomValidator>--%>


                    <div class="mt-3">
                        <label for="validationCustom03" class="form-label">Contraseña</label>
                        <input runat="server" type="text" class="form-control" id="ContraseñaTxt">
                        <label runat="server" id="errorContraseña" class="form-label text-danger h5" ></label>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe ingresar la contraseña"
                            ControlToValidate="ContraseñaTxt" CssClass="text-danger"></asp:RequiredFieldValidator>--%>
                    </div>

                    <div class="mt-3">
                        <label for="validationCustom04" class="form-label">Local</label>
                        <select runat="server" class="form-select" id="LocalBox">
                            <option selected disabled>Seleccionar</option>
                            <option value="2">Pollos Primos Viña</option>
                            <option value="3">Pollos Primos Valparaiso</option>
                        </select>
                    </div>

                    <div class="mt-3">
                        <label for="validationCustom04" class="form-label">Cargo</label>
                        <select runat="server" class="form-select" id="CargoBox">
                            <option selected disabled value="Seleccionar">Seleccionar</option>
                            <option>Administrador</option>
                            <option>Vendedor</option>
                            <option>Cocinero</option>
                            <option>Repartidor</option>
                        </select>
                    </div>
                    <div class="mt-3">
                        <asp:Button runat="server" class="btn btn-success" OnClick="ModificarBtn_Click" type="submit" Text="Modificar"></asp:Button>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Eliminar
                        </button>
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
                    Está seguro que desea eliminar este usuario?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>
                    <asp:Button ID="Button1" OnClick="Eliminar_Click" CssClass="btn btn-success" runat="server" Text="Aceptar" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
