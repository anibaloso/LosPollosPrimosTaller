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
                <div class="card-body text-center">
                    <a href="https://www.google.com/maps/place/Viana+519,+Vi%C3%B1a+del+Mar,+Valpara%C3%ADso/data=!4m2!3m1!1s0x9689de09efadaec3:0xd5cf72b287afe13b?sa=X&ved=2ahUKEwiLvayQ0tzxAhV2E7kGHWNIB-8Q8gEwAHoECA4QAQ">
                    <img src="Imagenes/mapa.jpg" id="mapas" /> </a>
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
            <div class="card-body text-center">
                <a href="https://www.google.com/maps/place/Av.+Argentina+349,+Valpara%C3%ADso/data=!4m2!3m1!1s0x9689e0c44f7bd4e3:0x47f3769359628198?sa=X&ved=2ahUKEwil_6ea0tzxAhWmD7kGHTgmAT0Q8gEwAHoECA4QAQ">
                <img src="Imagenes/mapa2.jpg" id="mapas"  /> </a>
            </div>
            <div class="card-footer text-center bg-dark text-white">
                <h5>Visitenos en nuestra tienda en Av.Argentina 349</h5>
                <h5>Fono: +56 9 12345678</h5>
            </div>

        </div>

    </div>
</asp:Content>
