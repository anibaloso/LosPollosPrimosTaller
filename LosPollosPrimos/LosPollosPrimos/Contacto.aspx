<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="LosPollosPrimos.Paginas.Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="col-md-5 float-lg-start ms-md-3 mb-3 p-3">
            <div class="card">
                <div class="card-header bg-dark bg-gradient text-white text-center">
                    <h3>Tienda Principal</h3>
                </div>
                <div class="card-body align-content-center">
                    <img src="Imagenes/mapa.jpg" id="mapas" />
                </div>
                <div class="card-footer text-center bg-dark text-white">
                    <h5>Visitenos en nuestra tienda en Viana 519</h5>
                    <h5>Fono: +56 9 87654321</h5>
                </div>

            </div>
        </div>
    </div>
    <div class="col-md-5 float-md-start ms-md-3 mb-3 p-3">
        <div class="card">
            <div class="card-header bg-dark bg-gradient text-white text-center">
                <h3>Tienda de Valparaiso</h3>
            </div>
            <div class="card-body align-content-center">
                <img src="Imagenes/mapa2.jpg" id="mapas" />
            </div>
            <div class="card-footer text-center bg-dark text-white">
                <h5>Visitenos en nuestra tienda en Av.Argentina 349</h5>
                <h5>Fono: +56 9 12345678</h5>
            </div>

        </div>

    </div>
</asp:Content>
