﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogAdministrador.aspx.cs" Inherits="LosPollosPrimos.Paginas.LogAdministrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-5">
        <div class="col-5 col-md-6 col-lg-4 mx-auto">
            <div class="card text-center">
                <div class="card-header bg-warning text-dark">
                    <h3 class="p-2">Acceder</h3>
                </div>
                <div class="card-body">
                    <div class="mb-3 ">
                        <label class="form-label" for="UsuarioAdministradorTxt">Usuario Administrador</label>
                        <asp:TextBox ID="UsuarioAdministradorTxt" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label" for="ClaveTxt">Clave</label>
                        <asp:TextBox ID="ClaveTxt" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="card-footer d-grip gap-1 text-center">
                        <button onclick="<%Validacion();%>" type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">Acceder</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Error</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <asp:Label runat="server" ID="LB"></asp:Label>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
