<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PantallaVentas.aspx.cs" Inherits="LosPollosPrimos.PantallaVentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <link
      rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
    <script src="http://code.jquery.com/jquery-1.9.1.js" type="text/javascript"></script>

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
                            <button type="button" id="btn-venta">Coca cola 1/2 lt.<img class="card-img " src="Imagenes/coca-cola.jpg" /></button>

                            <button type="button" id="btn-venta-sprite">Sprite 1/2 lt.<img class="card-img" src="Imagenes/sprite.jpg" /></button>
                            <button type="button" id="btn-venta-fanta">Fanta 1/2 lt.<img class="card-img" src="Imagenes/fanta.jpg" /></button>
                            <button type="button" id="btn-venta-pepsi">Pepsi 1/2 lt.<img class="card-img" src="Imagenes/pepsi.jpg" /></button>
                            <button type="button" id="btn-venta-crush">Crush 1/2 lt.<img class="card-img" src="Imagenes/orange.jpg" /></button>
                            <button type="button" id="btn-venta-seven">Seven Up 1/2 lt.<img class="card-img" src="Imagenes/seven-up.jpg" /></button>
                        </div>
                        <div class="row p-1 bg-secondary">
                            <div class="col-3 bg-secondary p-1">
                                <h5 id="textoVentas">Pollos</h5>
                            </div>
                            <button type="button" id="btn-venta-pollo4">1/4 Pollo Asado<img class="card-img" src="Imagenes/Pollo-asado-1-4.jpg" /></button>
                            <button type="button" id="btn-venta-pollo2">1/2 Pollo Asado<img class="card-img" src="Imagenes/Pollo-asado-medio.jpg" /></button>
                            <button type="button" id="btn-venta-pollo">1 Pollo Asado<img class="card-img" src="Imagenes/Pollo-asado-entero.jpg" /></button>
                        </div>
                        <div class="row p-1 bg-secondary">
                            <div class="col-3 bg-secondary">
                                <h5 id="textoVentas">Completos</h5>
                            </div>
                            <button type="button" id="btn-venta-hot">Hot Dog<img class="card-img" src="Imagenes/hot-dog.jpg" /></button>
                            <button type="button" id="btn-venta-tomate">Hot Dog Tomate<img class="card-img" src="Imagenes/completo-sin-palta.jpg" /></button>
                            <button type="button" id="btn-venta-comp">Completo Italiano<img class="card-img" src="Imagenes/completo.jpg" /></button>
                        </div>
                        <div class="row p-1 bg-secondary">
                            <div class="col-3 bg-secondary">
                                <h5 id="textoVentas">Papas Fritas</h5>
                            </div>
                            <button type="button" id="btn-venta-papas4">1/4 Kg de Papas Fritas<img class="card-img" src="Imagenes/papas-fritas.jpg" /></button>
                            <button type="button" id="btn-venta-papas2">1/2 Kg de Papas Fritas<img class="card-img" src="Imagenes/papas-fritas.jpg" /></button>
                            <button type="button" id="btn-venta-papas">1 Kg de Papas Fritas<img class="card-img" src="Imagenes/papas-fritas.jpg" /></button>
                        </div>
                        <div class="row p-1 bg-secondary">
                            <div class="col-3 bg-secondary">
                                <h5 id="textoVentas">Menus</h5>
                            </div>
                            <button type="button"id="btn-venta-pollo4-papas">1/4 Pollo + Papas<img class="card-img" src="Imagenes/1-4pollo-papas.jpg" /></button>
                            <button type="button"id="btn-venta-pollo2-papas">1/2 Pollo + Papas<img class="card-img" src="Imagenes/pollo-medio-papas-fritas.jpg" /></button>
                            <button type="button"id="btn-venta-pollo-papas">1 Pollo + Papas<img class="card-img" src="Imagenes/pollo-entero-papas-fritas.jpg" /></button>
                            <button type="button"id="btn-venta-comp-papas">Completo + Papas<img class="card-img" src="Imagenes/completo-con-papas.jpg" /></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-3 ">
                <div class="card float-end text-center m-0" >
                    <div class="card-header text-center">
                        <button id="btn-armado-confirmar"type="button">Confirmar</button>
                        <button  id="btn-armado" >Borrar todo</button>
                        
                        
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
                            <th scope="col"id="totales">Totales</th>
                                <td><p id="areaContadorCantidad"></p></td>
                                <td><p id="resultadoVentaTotales"></p></td>
                            </tr>
                            
                            <tr>
                                <th scope="col "id="coca"></th>
                                <td><p id="areaContador"></p></td>
                                <td><p id="resultado-venta"></p></td>

                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta");
                                    var nElement = document.getElementById("coca");
                                    var pElement = document.getElementById("areaContador");
                                    var vElement = document.getElementById("resultado-venta");
                                    var contador = 0;
                                    var valor = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador++;
                                        valor = 1000 * contador;
                                        nElement.textContent = "Coca Cola 1/2";
                                        pElement.textContent = contador;
                                        vElement.textContent = valor;
                                    }
                                </script>


                            </tr>
                            <tr>
                                <th scope="col "id="sprite"></th>
                                <td><p id="areaContadorSprite"></p></td>
                                <td><p id="resultadoVentaSprite"></p></td>
                                <script type="text/javascript">

                                    var botonElement = document.getElementById("btn-venta-sprite");
                                    var nElementS = document.getElementById("sprite");
                                    var pElementS = document.getElementById("areaContadorSprite");
                                    var vElementS = document.getElementById("resultadoVentaSprite");
                                    var contador2 = 0;
                                    var valor2 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador2++;
                                        valor2 = 1000 * contador2;
                                        nElementS.textContent = "Sprite 1/2";
                                        pElementS.textContent = contador2;
                                        vElementS.textContent = valor2;
                                    }
                                </script>


                            </tr>
                            <tr>
                                <th scope="col" id="fanta"></th>
                                <td><p id="areaContadorFanta"></p></td>
                                <td><p id="resultadoVentaFanta"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-fanta");
                                    var nElementF = document.getElementById("fanta");
                                    var pElementF = document.getElementById("areaContadorFanta");
                                    var vElementF = document.getElementById("resultadoVentaFanta");
                                    var contador3 = 0;
                                    var valor3 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador3++;
                                        valor3 = 1000 * contador3;
                                        nElementF.textContent="Fanta 1/2";
                                        pElementF.textContent = contador3;
                                        vElementF.textContent = valor3;
                                    }
                                </script>
                            </tr>
                            <tr>
                                <th scope="col"id="pepsi"></th>
                                <td><p id="areaContadorPepsi"></p></td>
                                <td><p id="resultadoVentaPepsi"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-pepsi");
                                    var nElementP = document.getElementById("pepsi");
                                    var pElementP = document.getElementById("areaContadorPepsi");
                                    var vElementP = document.getElementById("resultadoVentaPepsi");
                                    var contador4 = 0;
                                    var valor4 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador4++;
                                        valor4 = 1000 * contador4;
                                        nElementP.textContent = "Pepsi 1 / 2";
                                        pElementP.textContent = contador4;
                                        vElementP.textContent = valor4;
                                    }
                                </script>
                            </tr>
                            <tr>
                                <th scope="col"id="crush"></th>
                                <td><p id="areaContadorCrush"></p></td>
                                <td><p id="resultadoVentaCrush"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-crush");
                                    var nElementC = document.getElementById("crush");
                                    var pElementC = document.getElementById("areaContadorCrush");
                                    var vElementC = document.getElementById("resultadoVentaCrush");
                                    var contador5 = 0;
                                    var valor5 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador5++;
                                        valor5 = 1000 * contador5;
                                        nElementC.textContent = "Crush 1/2";
                                        pElementC.textContent = contador5;
                                        vElementC.textContent = valor5;
                                    }
                                </script>
                            </tr>
                            <tr>
                                <th scope="col"id="seven"></th>
                                <td><p id="areaContadorSeven"></p></td>
                                <td><p id="resultadoVentaSeven"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-seven");
                                    var nElementSe = document.getElementById("seven");
                                    var pElementSe = document.getElementById("areaContadorSeven");
                                    var vElementSe = document.getElementById("resultadoVentaSeven");
                                    var contador6 = 0;
                                    var valor6 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador6++;
                                        valor6 = 1000 * contador6;
                                        nElementSe.textContent = "Seven UP 1/2";
                                        pElementSe.textContent = contador6;
                                        vElementSe.textContent = valor6;
                                    }
                                </script>

                            </tr>
                            <tr>
                                <th scope="col"id="pollo4"></th>
                                <td><p id="areaContadorPollo4"></p></td>
                                <td><p id="resultadoVentaPollo4"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-pollo4");
                                    var nElementP4 = document.getElementById("pollo4");
                                    var pElementP4 = document.getElementById("areaContadorPollo4");
                                    var vElementP4 = document.getElementById("resultadoVentaPollo4");
                                    var contador7 = 0;
                                    var valor7 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador7++;
                                        valor7 = 2500 * contador7;
                                        nElementP4.textContent = "1/4 Pollo";
                                        pElementP4.textContent = contador7;
                                        vElementP4.textContent = valor7;
                                    }
                                </script>
                            </tr>
                            <tr>
                                <th scope="col"id="pollo2"></th>
                                <td><p id="areaContadorPollo2"></p></td>
                                <td><p id="resultadoVentaPollo2"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-pollo2");
                                    var nElementP2 = document.getElementById("pollo2");
                                    var pElementP2 = document.getElementById("areaContadorPollo2");
                                    var vElementP2 = document.getElementById("resultadoVentaPollo2");
                                    var contador8 = 0;
                                    var valor8 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador8++;
                                        valor8 = 4500 * contador8;
                                        nElementP2.textContent = "1/2 Pollo";
                                        pElementP2.textContent = contador8;
                                        vElementP2.textContent = valor8;
                                    }
                                </script>
                            </tr>
                            <tr>
                                <th scope="col"id="pollo"></th>
                                <td><p id="areaContadorPollo"></p></td>
                                <td><p id="resultadoVentaPollo"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-pollo");
                                    var nElementPollo = document.getElementById("pollo");
                                    var pElementPollo = document.getElementById("areaContadorPollo");
                                    var vElementPollo = document.getElementById("resultadoVentaPollo");
                                    var contador9 = 0;
                                    var valor9 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador9++;
                                        valor9 = 7000 * contador9;
                                        nElementPollo.textContent = "1 Pollo ";
                                        pElementPollo.textContent = contador9;
                                        vElementPollo.textContent = valor9;
                                    }
                                </script>
                            </tr>
                            <tr>
                                
                                <th scope="col"id="hot"></th>
                                <td><p id="areaContadorHot"></p></td>
                                <td><p id="resultadoVentaHot"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-hot");
                                    var nElementHot = document.getElementById("hot");
                                    var pElementHot = document.getElementById("areaContadorHot");
                                    var vElementHot = document.getElementById("resultadoVentaHot");
                                    var contador10 = 0;
                                    var valor10 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador10++;
                                        valor10 = 1500 * contador10;
                                        nElementHot.textContent = "1 HotDog ";
                                        pElementHot.textContent = contador10;
                                        vElementHot.textContent = valor10;
                                    }
                                    </script>
                            </tr>
                            <tr>
                                
                                <th scope="col"id="tomate"></th>
                                <td><p id="areaContadorTomate"></p></td>
                                <td><p id="resultadoVentaTomate"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-tomate");
                                    var nElementTomate = document.getElementById("tomate");
                                    var pElementTomate = document.getElementById("areaContadorTomate");
                                    var vElementTomate = document.getElementById("resultadoVentaTomate");
                                    var contador11 = 0;
                                    var valor11 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador11++;
                                        valor11 = 1500 * contador11;
                                        nElementTomate.textContent = "Hot dog S/palta";
                                        pElementTomate.textContent = contador11;
                                        vElementTomate.textContent = valor11;
                                    }
                                    </script>
                            </tr>
                            <tr>
                                
                                <th scope="col"id="comp"></th>
                                <td><p id="areaContadorComp"></p></td>
                                <td><p id="resultadoVentaComp"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-comp");
                                    var nElementComp = document.getElementById("comp");
                                    var pElementComp = document.getElementById("areaContadorComp");
                                    var vElementComp = document.getElementById("resultadoVentaComp");
                                    var contador12 = 0;
                                    var valor12 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador12++;
                                        valor12 = 1500 * contador12;
                                        nElementComp.textContent = "Italiano";
                                        pElementComp.textContent = contador12;
                                        vElementComp.textContent = valor12;
                                    }
                                    </script>
                            </tr>
                            <tr>
                                <th scope="col"id="papas4"></th>
                                <td><p id="areaContadorPapas4"></p></td>
                                <td><p id="resultadoVentaPapas4"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-papas4");
                                    var nElementPapas4= document.getElementById("papas4");
                                    var pElementPapas4 = document.getElementById("areaContadorPapas4");
                                    var vElementPapas4 = document.getElementById("resultadoVentaPapas4");
                                    var contador13 = 0;
                                    var valor13 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador13++;
                                        valor13 = 1500 * contador13;
                                        nElementPapas4.textContent = "1/4 Papas";
                                        pElementPapas4.textContent = contador13;
                                        vElementPapas4.textContent = valor13;
                                    }
                                    </script>
                            </tr>
                            <tr>
                                <th scope="col"id="papas2"></th>
                                <td><p id="areaContadorPapas2"></p></td>
                                <td><p id="resultadoVentaPapas2"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-papas2");
                                    var nElementPapas2= document.getElementById("papas2");
                                    var pElementPapas2 = document.getElementById("areaContadorPapas2");
                                    var vElementPapas2 = document.getElementById("resultadoVentaPapas2");
                                    var contador14 = 0;
                                    var valor14 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador14++;
                                        valor14 = 2500 * contador14;
                                        nElementPapas2.textContent = "1/2 Papas";
                                        pElementPapas2.textContent = contador14;
                                        vElementPapas2.textContent = valor14;
                                    }
                                    </script>
                            </tr>
                            <tr>
                                <th scope="col"id="papas"></th>
                                <td><p id="areaContadorPapas"></p></td>
                                <td><p id="resultadoVentaPapas"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-papas");
                                    var nElementPapas= document.getElementById("papas");
                                    var pElementPapas = document.getElementById("areaContadorPapas");
                                    var vElementPapas = document.getElementById("resultadoVentaPapas");
                                    var contador15 = 0;
                                    var valor15 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador15++;
                                        valor15 = 3500 * contador15;
                                        nElementPapas.textContent = "1K Papas";
                                        pElementPapas.textContent = contador15;
                                        vElementPapas.textContent = valor15;
                                    }
                                    </script>
                            </tr>
                            <tr>
                                
                                <th scope="col"id="pollo4-papas"></th>
                                <td><p id="areaContadorPollo4Papas"></p></td>
                                <td><p id="resultadoVentaPollo4Papas"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-pollo4-papas");
                                    var nElementPollo4Papas= document.getElementById("pollo4-papas");
                                    var pElementPollo4Papas = document.getElementById("areaContadorPollo4Papas");
                                    var vElementPollo4Papas = document.getElementById("resultadoVentaPollo4Papas");
                                    var contador16 = 0;
                                    var valor16 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador16++;
                                        valor16 = 1000 * contador16;
                                        nElementPollo4Papas.textContent = "1/4 Pollo+Papas";
                                        pElementPollo4Papas.textContent = contador16;
                                        vElementPollo4Papas.textContent = valor16;
                                    }
                                    </script>
                            </tr>
                            <tr>
                                <th scope="col"id="pollo2-papas"></th>
                                <td><p id="areaContadorPollo2Papas"></p></td>
                                <td><p id="resultadoVentaPollo2Papas"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-pollo2-papas");
                                    var nElementPollo2Papas= document.getElementById("pollo2-papas");
                                    var pElementPollo2Papas = document.getElementById("areaContadorPollo2Papas");
                                    var vElementPollo2Papas = document.getElementById("resultadoVentaPollo2Papas");
                                    var contador17 = 0;
                                    var valor17 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador17++;
                                        valor17 = 5500 * contador17;
                                        nElementPollo2Papas.textContent = "1/2 Pollo+Papas";
                                        pElementPollo2Papas.textContent = contador17;
                                        vElementPollo2Papas.textContent = valor17;
                                    }
                                    </script>
                            </tr>
                            <tr>
                                <th scope="col"id="pollo-papas"></th>
                                <td><p id="areaContadorPolloPapas"></p></td>
                                <td><p id="resultadoVentaPolloPapas"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-pollo-papas");
                                    var nElementPolloPapas= document.getElementById("pollo-papas");
                                    var pElementPolloPapas = document.getElementById("areaContadorPolloPapas");
                                    var vElementPolloPapas = document.getElementById("resultadoVentaPolloPapas");
                                    var contador18 = 0;
                                    var valor18 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador18++;
                                        valor18 = 10000 * contador18;
                                        nElementPolloPapas.textContent = "1K Pollo+Papas";
                                        pElementPolloPapas.textContent = contador18;
                                        vElementPolloPapas.textContent = valor18;
                                    }
                                    </script>
                            </tr>
                            <tr>
                                <th scope="col"id="comp-papas"></th>
                                <td><p id="areaContadorCompPapas"></p></td>
                                <td><p id="resultadoVentaCompPapas"></p></td>
                                <script type="text/javascript">
                                    var botonElement = document.getElementById("btn-venta-comp-papas");
                                    var nElementCompPapas= document.getElementById("comp-papas");
                                    var pElementCompPapas = document.getElementById("areaContadorCompPapas");
                                    var vElementCompPapas = document.getElementById("resultadoVentaCompPapas");
                                    var contador19 = 0;
                                    var valor19 = 0;
                                    
                                    botonElement.onclick = function () {
                                        contador19++;
                                        valor19 = 2500 * contador19;
                                        nElementCompPapas.textContent = "Italiano+Papas";
                                        pElementCompPapas.textContent = contador19;
                                        vElementCompPapas.textContent = valor19;
                                        
                                    }
                                    
                                    </script>
                                </tr>
                            
                        </tbody>

                    </table>
                    <div class="card-body">
                        <%--<button id="btn-armado-confirmar"type="button">Confirmar</button>
                        <button  id="btn-armado" class="float-end">Borrar todo</button>
                        --%>
                        <script type="text/javascript">
                            var botonConfirmar = document.getElementById("btn-armado-confirmar");
                            var pElementTotal = document.getElementById("areaContadorCantidad");
                            var vElementTotal = document.getElementById("resultadoVentaTotales");
                            var contadorTotal = 0;
                            var valorTotal = 0;
                            botonConfirmar.onclick = function () {

                                contadorTotal = contador + contador2 + contador3 + contador4 + contador5 + contador6 + contador7 + contador8 + contador9 +
                                    contador10 + contador11 + contador12 + contador13 + contador14 + contador15 + contador16 + contador17 + contador18 + contador19;
                                valorTotal = valor + valor2 + valor3 + valor4 + valor5 + valor6 + valor7 + valor8 + valor9 + valor10 + valor11 + valor12 +
                                    valor13 + valor14+ valor15 + valor16 + valor17 + valor18 + valor19;
                                pElementTotal.textContent = contadorTotal;
                                vElementTotal.textContent = valorTotal;
                                    }
                            </script>
                    </div>

                </div>
            
            </div>
            
            
        </div>
    </div>
</body>
</html>
