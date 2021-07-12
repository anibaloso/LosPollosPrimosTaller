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
                        <asp:TextBox ID="nombreTxt" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3 ">
                        <label class="form-label" for="a">Valor</label>
                        <asp:TextBox ID="valorTxt" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3 ">
                        <label class="form-label" for="a">Url</label>
                        <asp:TextBox ID="urlTxt" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="card-footer d-grip gap-3 text-center">
                        <asp:Button ID="ActualizarBtn" OnClick="ActualizarBtn_Click" runat="server" Text="Actualizar" CssClass="btn btn-success" />
                        <asp:Button ID="EliminarBtn" OnClick="EliminarBtn_Click" runat="server" Text="Eliminar" CssClass="btn btn-success" />
                        <asp:Button ID="VolverBtn" OnClick="VolverBtn_Click" runat="server" Text="Volver" CssClass="btn btn-danger" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
