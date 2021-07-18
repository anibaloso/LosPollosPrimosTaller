using LosPollosPrimosModel;
using LosPollosPrimosModel.DAO;
using LosPollosPrimosModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Security.Cryptography.X509Certificates;
using System.Net.Security;
using LosPollosPrimos.Conexion;

namespace LosPollosPrimos
{
    public partial class ConfirmarPagoCliente2 : System.Web.UI.Page
    {
        List<DetalleVenta> detallesList = new DetalleVentaDAO().GetAll();  // en teoria deberia guardar la lista aqui
        double IVA = 1.19;
        int Vtotal;
        ConexionBD conexion = new ConexionBD();
        string rut;
        int idEntrega;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("LogCliente.aspx");
            }
            else
            {
                rut = Request.QueryString["id"].ToString();
                if (!IsPostBack)
                {                    
                    direccionTxt.Text = conexion.direccionPorRutCliente(rut);
                                        
                    ValorTotal.Text = "$ " + new DetalleVentaDAO().GetAllValores().ToString();
                    List<TipoPago> tipoPagos = new TipoPagoDAO().GetAll();
                    ListaTipoPago.DataSource = tipoPagos;
                    ListaTipoPago.DataTextField = "formaPago";
                    ListaTipoPago.DataBind();
                    CargarTabla(new DetalleVentaDAO().GetAll());

                }
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
            try
            {
                foreach (var v in detallesList)
                {
                    conexion.IngresardetallePedido(v.Cantidad, v.ValorTotal, v.NombreProducto);
                }

                conexion.IngresarPedido("Pedido Hecho por Internet", conexion.ultimoIdDetallePedido(), rut, asignarIdEntrega());


                conexion.IngresarBoleta(conexion.ultimoIdPedido(), conexion.ultimoIdDetallePedido(), rut, asignarIdEntrega(), asignarLocal(), asignarLocal());

                ImprimirBoleta();
                EnviarCorreo();
                Response.Redirect("Default.aspx");
            }
            catch (Exception ex)
            {

            }

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


        protected void EnviarCorreo()
        {
            Vtotal = new DetalleVentaDAO().GetAllValores();
            Double totalSinIva = (Vtotal / IVA);
            //aqui se crea para enviar un correo para el cliente 
            string detalle= "<strong>Cantidad               Producto               ValorTotal</strong> <br>" ;
            foreach (var v in detallesList)
            {
                detalle = detalle+ "<strong>" + v.Cantidad + "            " + v.NombreProducto + "            "+"$ " + v.ValorTotal + "</strong><br>";
            }

            MailMessage correo = new MailMessage();
            correo.From = new MailAddress("negrocalifa4@gmail.com", "Pollos Primos", System.Text.Encoding.UTF8);//Correo de salida
            correo.To.Add(conexion.correoPorRutCliente(rut)); //Correo destino?
            correo.Subject = "Detalle Pedido Pollos Primos"; //Asunto
            correo.Body = "<strong>Gracias por su compra a continuacion le detallaremos su pedido: <strong> <br> <br> POLLOS PRIMOS EXPENDIDO EN: LOCAL INTERNET<br>" //Mensaje del correo
                + "Caja # 1 - Boleta # " + conexion.ultimoIdBoleta() + "<br>" + "<br>" + detalle + "<br>"
                + "SUBTOTAL $ "  + ((Int32)totalSinIva).ToString() + "<br>"
                + "IVA $ " + (Vtotal - (Int32)totalSinIva).ToString() + "<br>"
                + "TOTAL $ " + Vtotal.ToString() + "<br>" + "<br>"
                + "METODO PAGO: " + ListaTipoPago.Text + "<br>"
                + "DIRECCION DE ENVIO: " + direccionTxt.Text + "<br>"
                + "<strong>Gracias por preferirnos y recuerda LOS POLLOS SON NUESTRA PASION</strong>";             

            correo.IsBodyHtml = true;
            correo.Priority = MailPriority.Normal;
            SmtpClient smtp = new SmtpClient();
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.gmail.com"; //Host del servidor de correo
            smtp.Port = 25; //Puerto de salida
            smtp.Credentials = new System.Net.NetworkCredential("negrocalifa4@gmail.com", "Hermana1Anahi.");//Cuenta de correo
            ServicePointManager.ServerCertificateValidationCallback = delegate (object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };
            smtp.EnableSsl = true;//True si el servidor de correo permite ssl
            smtp.Send(correo);
        }

        protected void ImprimirBoleta()
        {
            Ticket ticket = new Ticket();

            ticket.AddHeaderLine("POLLOS PRIMOS");
            ticket.AddHeaderLine("EXPEDIDO EN:");
            ticket.AddHeaderLine("LOCAL INTERNET");

            //El metodo AddSubHeaderLine es lo mismo al de AddHeaderLine con la diferencia
            //de que al final de cada linea agrega una linea punteada "=========="

            //AGREGAR ALA BASE DE DATOS
            ticket.AddSubHeaderLine("Caja # 1 - Boleta # " + conexion.ultimoIdBoleta());

            ticket.AddSubHeaderLine(DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString());

            //El metodo AddItem requeire 3 parametros, el primero es cantidad, el segundo es la descripcion
            //del producto y el tercero es el precio


            //AGREGAR DESDE LA LISTA

            foreach (var v in detallesList)
            {
                //Console.WriteLine("Element = {0}", v);
                ticket.AddItem(v.Cantidad.ToString(), v.NombreProducto, "$ " + v.ValorTotal.ToString());  // en teoria deberia funcionar xD
            }

            //ticket.AddItem("1", "Articulo Prueba", "15.00");
            //ticket.AddItem("2", "Articulo Prueba", "25.00");

            //El metodo AddTotal requiere 2 parametros, la descripcion del total, y el precio

            //AGREGAR DESDE LA LISTA

            //int total = Int32.Parse(ValorTotal.Text);
            Vtotal = new DetalleVentaDAO().GetAllValores();
            Double totalSinIva = (Vtotal / IVA);


            ticket.AddTotal("SUBTOTAL", "$ " + ((Int32)totalSinIva).ToString());
            ticket.AddTotal("IVA", "$ " + (Vtotal - (Int32)totalSinIva).ToString());
            ticket.AddTotal("TOTAL", "$ " + Vtotal.ToString());
            ticket.AddTotal("", ""); //Ponemos un total en blanco que sirve de espacio
            //ticket.AddTotal("RECIBIDO", "50.00");
            //ticket.AddTotal("CAMBIO", "15.00");
            ticket.AddTotal("", "");// Ponemos un total en blanco que sirve de espacio

            ticket.AddTotal("METODO PAGO", ListaTipoPago.Text);

            //El metodo AddFooterLine funciona igual que la cabecera
            ticket.AddFooterLine("LOS POLLOS SON NUESTRA PASION");
            ticket.AddFooterLine("GRACIAS POR SU VISITA");

            //Y por ultimo llamamos al metodo PrintTicket para imprimir el ticket, este metodo necesita un
            //parametro de tipo string que debe de ser el nombre de la impresora.
            ticket.PrintTicket("Microsoft Print to PDF");
        }

        public int asignarIdEntrega()
        {
            int a;
            if (RadioButtonList1.SelectedValue == "Despacho a Domicilio")
            {
                a = 2;
            }
            else
            {
                a = 1;
            }
            return a;
        }

        public int asignarLocal()
        {
            int a;
            a= (SeleccionRetiro.SelectedIndex +1);
            return a;
        }

    }
}