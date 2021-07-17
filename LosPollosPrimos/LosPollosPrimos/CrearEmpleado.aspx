﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearEmpleado.aspx.cs" Inherits="LosPollosPrimos.CrearEmpleado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row mt-5">

        <label class="form-label h3 text-danger" runat="server" id="errorTxt" ></label>

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
                            <option>Pollos Primos Valparaiso</option>
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

                    <div class="mt-3 text-center">
                        <asp:button runat="server" class="btn btn-primary"  onclick="VolverBtn_Click" type="button" CssClass="btn btn-danger" Text="Volver"></asp:button>
                    </div>
               
                    </div>                
                
            </div>            

        </div>

        

        </div>
</asp:Content>
