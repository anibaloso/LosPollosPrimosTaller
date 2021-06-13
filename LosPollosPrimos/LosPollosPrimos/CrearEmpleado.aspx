<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearEmpleado.aspx.cs" Inherits="LosPollosPrimos.CrearEmpleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card">
                <div class="card-header text-center bg-warning text-dark">
                    <h3 class="p-2">Crear Empleado</h3>
                </div>
                <div class="card-body">
                
                    <div class="mt-3" >
                        <label for="validationCustom01" class="form-label">Rut</label>
                        <input runat="server" type="text" class="form-control" id="rutTxt" required>
                        <div class="valid-feedback">
                        </div>
                    </div>

                    <div class="mt-3">
                        <label for="validationCustom02" class="form-label">Nombre</label>
                        <input runat="server" type="text" class="form-control" id="nombreTxt" required>
                        <div class="valid-feedback">
                        </div>
                    </div>

                    <div class="mt-3">
                        <label for="validationCustomUsername" class="form-label" >Telefono</label>
                        <div class="input-group has-validation">
                            <input runat="server" type="number" class="form-control" id="TelefonoTxt" aria-describedby="inputGroupPrepend" required>
                            <div class="invalid-feedback">
                            </div>
                        </div>
                    </div>

                    <div class="mt-3">
                        <label for="validationCustom03" class="form-label">Contraseña</label>
                        <input runat="server" type="password" class="form-control" id="ContraseñaTxt" required>
                        <div class="invalid-feedback">
                        </div>
                    </div>

                    <div class="mt-3">
                        <label for="validationCustom04" class="form-label">Local</label>
                        <select runat="server" class="form-select" id="LocalBox" required>
                            <option selected disabled value="">Choose...</option>
                            <option>Pollos Primos Viña</option>
                            <option>Pollos Primos Quilpue</option>
                        </select>
                        <div class="invalid-feedback">
                            Please select a valid state.
                        </div>
                    </div>

                    <div class="mt-3">
                        <label for="validationCustom04" class="form-label">Cargo</label>
                        <select runat="server" class="form-select" id="CargoBox" required>
                            <option selected disabled value="">Choose...</option>
                            <option>Administrador</option>
                            <option>Vendedor</option>
                            <option>Cocinero</option>
                            <option>Repartidor</option>
                        </select>
                        <div class="invalid-feedback">
                            Please select a valid state.
                        </div>
                    </div>
                    
                    <div class="mt-3">
                        <asp:button runat="server" class="btn btn-primary" OnClick="Validar_Click" type="submit" Text="Agregar"></asp:button>
                    </div>

                <div class="mt-3">
                        <asp:button runat="server" class="btn btn-primary" OnClick="VolverBtn_Click" type="submit" Text="Volver" CssClass="btn btn-danger"></asp:button>
                    </div>
                
                    </div>
            </div>
        </div>

        <%--<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <asp:label runat="server" class="form-label" id="errorTxt"> prueba </asp:label>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Understood</button>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            function openModal() {
                $('#staticBackdrop').modal();
            }
        </script>
    --%>
        </div>
</asp:Content>
