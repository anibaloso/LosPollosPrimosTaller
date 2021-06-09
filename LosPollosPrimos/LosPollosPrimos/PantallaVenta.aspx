<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PantallaVenta.aspx.cs" Inherits="LosPollosPrimos.PantallaVenta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid bg-dark ">
        <div class="row">
            <div class="col-9">
                <div class="card bg-dark">
                    <div class="card-header  bg-warning text-white text-center">
                        <h1><strong>Pantalla ventas</strong></h1>
                    </div>
                    <div class="card-body align-content-around p-5 text-center text-white bg-light">
                        <div class="row p-1 bg-secondary">
                            <div class="col-3 bg-secondary">
                                <h5 id="textoVentas">Bebidas</h5>
                            </div>
                            <button id="btn-venta" name="1 coca">Coca cola 1/2 lt.<img class="card-img " src="Imagenes/coca-cola.jpg" /></button>
                            <button id="btn-venta">Sprite 1/2 lt.<img class="card-img" src="Imagenes/sprite.jpg" /></button>
                            <button id="btn-venta">Sprite 1/2 lt.<img class="card-img" src="Imagenes/fanta.jpg" /></button>
                            <button id="btn-venta">Pepsi 1/2 lt.<img class="card-img" src="Imagenes/pepsi.jpg" /></button>
                            <button id="btn-venta">Crush 1/2 lt.<img class="card-img" src="Imagenes/orange.jpg" /></button>
                            <button id="btn-venta">Seven Up 1/2 lt.<img class="card-img" src="Imagenes/seven-up.jpg" /></button>
                        </div>
                        <div class="row p-1 bg-secondary">
                            <div class="col-3 bg-secondary p-1">
                                <h5 id="textoVentas">Pollos</h5>
                            </div>
                            <button id="btn-venta">1/4 Pollo Asado<img class="card-img" src="Imagenes/Pollo-asado-1-4.jpg" /></button>
                            <button id="btn-venta">1/2 Pollo Asado<img class="card-img" src="Imagenes/Pollo-asado-medio.jpg" /></button>
                            <button id="btn-venta">1 Pollo Asado<img class="card-img" src="Imagenes/Pollo-asado-entero.jpg" /></button>
                        </div>
                        <div class="row p-1 bg-secondary">
                            <div class="col-3 bg-secondary">
                                <h5 id="textoVentas">Completos</h5>
                            </div>
                            <button id="btn-venta">Hot Dog<img class="card-img" src="Imagenes/hot-dog.jpg" /></button>
                            <button id="btn-venta">Hot Dog Tomate<img class="card-img" src="Imagenes/completo-sin-palta.jpg" /></button>
                            <button id="btn-venta">Completo Italiano<img class="card-img" src="Imagenes/completo.jpg" /></button>
                        </div>
                        <div class="row p-1 bg-secondary">
                            <div class="col-3 bg-secondary">
                                <h5 id="textoVentas">Papas Fritas</h5>
                            </div>
                            <button id="btn-venta">1/4 Kg de Papas Fritas<img class="card-img" src="Imagenes/papas-fritas.jpg" /></button>
                            <button id="btn-venta">1/2 Kg de Papas Fritas<img class="card-img" src="Imagenes/papas-fritas.jpg" /></button>
                            <button id="btn-venta">1 Kg de Papas Fritas<img class="card-img" src="Imagenes/papas-fritas.jpg" /></button>
                        </div>
                        <div class="row p-1 bg-secondary">
                            <div class="col-3 bg-secondary">
                                <h5 id="textoVentas">Menus</h5>
                            </div>
                            <button id="btn-venta">1/4 Pollo + Papas<img class="card-img" src="Imagenes/1-4pollo-papas.jpg" /></button>
                            <button id="btn-venta">1/2 Pollo + Papas<img class="card-img" src="Imagenes/pollo-medio-papas-fritas.jpg" /></button>
                            <button id="btn-venta">1 Pollo + Papas<img class="card-img" src="Imagenes/pollo-entero-papas-fritas.jpg" /></button>
                            <button id="btn-venta">Completo + Papas<img class="card-img" src="Imagenes/completo-con-papas.jpg" /></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-3 ">
                <div class="card float-end">
                    <div class="card-header text-center">
                        <h3>Compra</h3>
                    </div>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Producto</th>
                                <th scope="col">Cantidad</th>
                                <th scope="col">Valor</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="col ">Coca Cola 1/2</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">Sprite 1/2</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">Fanta 1/2</th>
                                <th>---------</th><th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">Pepsi 1/2</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">Crush 1/2</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">Seven UP 1/2</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">1/4 Pollo</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">1/2 Pollo</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">1 Pollo</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">Hot dog</th>
                                <th>---------</th>
                                <th>---------</th>

                            </tr>
                            <tr>
                                <th scope="col ">Hot dog S/palta</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">Italiano</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">1/4 Papas</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">1/2 Papas</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">1K Papas</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">1/4 Pollo+Papas</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">1/2 Pollo+Papas</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">1K Pollo+Papas</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>
                            <tr>
                                <th scope="col ">Italiano+Papas</th>
                                <th>---------</th>
                                <th>---------</th>
                            </tr>


                        </tbody>

                    </table>
                    <div class="card-body">
                        <button id="btn-armado"type="button">Confirmar</button>
                    <button  class="float-end"id="btn-armado"type="reset">Borrar todo</button>
                    </div>

                </div>
            
            </div>
            
            
        </div>
    </div>
</asp:Content>
