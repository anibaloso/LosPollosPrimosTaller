using LosPollosPrimos.Conexion;
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
    public partial class ConfirmarPago2 : System.Web.UI.Page
    {
        ConexionBD conexion = new ConexionBD();
        List<DetalleVenta> detallesList = new DetalleVentaDAO().GetAll();  // en teoria deberia guardar la lista aqui
        double IVA = 1.19;
        int Vtotal;
        string rut;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("LogVentas.aspx");
            }
            else
            {
                rut = Request.QueryString["id"].ToString();
                if (!IsPostBack)
                {
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

                conexion.IngresarPedido("Pedido Hecho en local", conexion.ultimoIdDetallePedido(), rut, 1);


                conexion.IngresarBoleta(conexion.ultimoIdPedido(), conexion.ultimoIdDetallePedido(), rut, 1, conexion.SelectLocalPersonalPorRut(rut), conexion.SelectLocalPersonalPorRut(rut));

                ImprimirBoleta();
                ImprimirOrden();
                Response.Redirect("PantallaVenta2.aspx?id=" + rut);
            }
            catch (Exception ex)
            {

            }

        
            
        }

        protected void ImprimirBoleta()
        {
            Ticket ticket = new Ticket();

            ticket.AddHeaderLine("POLLOS PRIMOS");
            ticket.AddHeaderLine("ATENDIDO EN:");
            ticket.AddHeaderLine("LOCAL " + saberLocal());
            ticket.AddHeaderLine("POR " + conexion.SelectNombrePersonalPorRut(rut));

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

        protected string saberLocal()
        {
            string local;
            int id = conexion.SelectLocalPersonalPorRut(rut);
            switch (id)
            {
                case 1:
                    local = "Viña del Mar";
                    break;
                case 2:
                    local = "Valparaiso";
                    break;
                default:
                    local = "";
                    break;
            }
            return local;
        }


        protected void ImprimirOrden()
        {
            Ticket ticket = new Ticket();
                       
            //AGREGAR ALA BASE DE DATOS
            ticket.AddSubHeaderLine("Boleta # " + conexion.ultimoIdBoleta());

            ticket.AddSubHeaderLine(DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString());

            //El metodo AddItem requeire 3 parametros, el primero es cantidad, el segundo es la descripcion
            //del producto y el tercero es el precio

            //AGREGAR DESDE LA LISTA

            foreach (var v in detallesList)
            {
                //Console.WriteLine("Element = {0}", v);
                ticket.AddItem(v.Cantidad.ToString(), v.NombreProducto, "$ " + v.ValorTotal.ToString());  // en teoria deberia funcionar xD
            }
            
            ticket.PrintTicket("Microsoft Print to PDF");
        }
    }  

}