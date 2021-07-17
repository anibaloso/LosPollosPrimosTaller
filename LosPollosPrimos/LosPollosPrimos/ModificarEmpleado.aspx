<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificarEmpleado.aspx.cs" Inherits="LosPollosPrimos.EditarEmpleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card">

                <label class="form-label h3 text-danger" runat="server" id="errorTxt" ></label>

                <div class="card-header text-center bg-warning text-dark">
                    <h3 class="p-2">Modificar Empleado</h3>
                </div>
                <div class="card-body">
                    
                    <div class="mt-3" >
                        <asp:label runat="server" for="validationCustom01" class="form-label" id="r">Rut</asp:label>
                        <select runat="server" class="form-select" id="rutBox" >                            
                        </select>                                           
                    </div>

                    <asp:Button runat="server" class="btn btn-primary" OnClick="llenarDatos" type="submit" Text="Buscar"></asp:button>    

                    <div class="mt-3">
                        <label for="validationCustom02" class="form-label">Nombre</label>
                        <input runat="server" type="text" class="form-control" id="nombreTxt">                        
                    </div>

                    <div class="mt-3">
                        <label for="validationCustomUsername" class="form-label" >Telefono</label>                        
                            <input runat="server" type="number" class="form-control" id="TelefonoTxt" aria-describedby="inputGroupPrepend" >                          
                        
                    </div>

                    <div class="mt-3">
                        <label for="validationCustom03" class="form-label">Contraseña</label>
                        <input runat="server" type="text" class="form-control" id="ContraseñaTxt" >                        
                    </div>

                    <div class="mt-3">
                        <label for="validationCustom04" class="form-label">Local</label>
                        <select runat="server" class="form-select" id="LocalBox" >
                            <option selected disabled value="">Choose...</option>
                            <option>Pollos Primos Viña</option>
                            <option>Pollos Primos Valparaiso</option>
                        </select>
                        
                    </div>

                    <div class="mt-3">
                        <label for="validationCustom04" class="form-label">Cargo</label>
                        <select runat="server" class="form-select" id="CargoBox" >
                            <option selected disabled value="">Choose...</option>
                            <option>Administrador</option>
                            <option>Vendedor</option>
                            <option>Cocinero</option>
                            <option>Repartidor</option>
                        </select>
                        
                    </div>
                    
                    <div class="mt-3" >
                        <asp:button runat="server" class="btn btn-primary" OnClick="ModificarBtn_Click" type="submit" Text="Modificar"></asp:button>
                        <asp:button runat="server" class="btn btn-primary" OnClick="Eliminar_Click" type="submit" Text="Eliminar"></asp:button>
                    </div>

                <div class="mt-3">
                        <asp:button runat="server" class="btn btn-primary" OnClick="VolverBtn_Click" type="submit" Text="Volver" CssClass="btn btn-danger"></asp:button>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
