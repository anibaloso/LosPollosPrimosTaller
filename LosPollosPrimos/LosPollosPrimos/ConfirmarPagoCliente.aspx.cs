using LosPollosPrimosModel;
using LosPollosPrimosModel.DAO;
using LosPollosPrimosModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LosPollosPrimos
{
    public partial class ConfirmarPagoCliente : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                if (RadioButtonList1.SelectedValue == "Despacho a Domicilio")
                {
                    SeleccionRetiro.Enabled = false;
                }
                else
                {
                    SeleccionRetiro.Enabled = true;
                }
                ValorTotal.Text = "$ " + new DetalleVentaDAO().GetAllValores().ToString();
                List<TipoPago> tipoPagos = new TipoPagoDAO().GetAll();
                ListaTipoPago.DataSource = tipoPagos;
                ListaTipoPago.DataTextField = "formaPago";
                ListaTipoPago.DataBind();
                CargarTabla(new DetalleVentaDAO().GetAll());

                
            }
        }
        private void CargarTabla(List<DetalleVenta> detalleVentas)
        {
            DetallePago.DataSource = detalleVentas;
            DetallePago.DataBind();

        }
        protected void DetallePago_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void DetallePago_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnPago_Click(object sender, EventArgs e)
        {
            Ticket ticket = new Ticket();
            

            ticket.AddHeaderLine("POLLOS PRIMOS");
            ticket.AddHeaderLine("EXPEDIDO EN:");
            ticket.AddHeaderLine("LOCAL VIÑA DEL MAR");

            //El metodo AddSubHeaderLine es lo mismo al de AddHeaderLine con la diferencia
            //de que al final de cada linea agrega una linea punteada "=========="

            //AGREGAR ALA BASE DE DATOS
            ticket.AddSubHeaderLine("Caja # 1 - Ticket # 1");
            
            ticket.AddSubHeaderLine(DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString());

            //El metodo AddItem requeire 3 parametros, el primero es cantidad, el segundo es la descripcion
            //del producto y el tercero es el precio

            //AGREGAR DESDE LA LISTA
            ticket.AddItem("1", "Articulo Prueba", "15.00");
            ticket.AddItem("2", "Articulo Prueba", "25.00");

            //El metodo AddTotal requiere 2 parametros, la descripcion del total, y el precio
            
            //AGREGAR DESDE LA LISTA
            ticket.AddTotal("SUBTOTAL", "29.75");
            ticket.AddTotal("IVA", "5.25");
            ticket.AddTotal("TOTAL", "35.00");
            ticket.AddTotal("", ""); //Ponemos un total en blanco que sirve de espacio
            ticket.AddTotal("RECIBIDO", "50.00");
            ticket.AddTotal("CAMBIO", "15.00");
            ticket.AddTotal("", "");// Ponemos un total en blanco que sirve de espacio

            ticket.AddTotal("METODO PAGO", "DEBITO");

            //El metodo AddFooterLine funciona igual que la cabecera
            ticket.AddFooterLine("LOS POLLOS SON NUESTRA PASION");
            ticket.AddFooterLine("GRACIAS POR SU VISITA");

            //Y por ultimo llamamos al metodo PrintTicket para imprimir el ticket, este metodo necesita un
            //parametro de tipo string que debe de ser el nombre de la impresora.
            ticket.PrintTicket("Microsoft Print to PDF");
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "Despacho a Domicilio")
            {
                SeleccionRetiro.Enabled = false;
            }
            else
            {
                SeleccionRetiro.Enabled = true;
            }
        }
    }
}