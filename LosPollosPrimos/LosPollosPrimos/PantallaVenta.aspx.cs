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
    public partial class PantallaVenta : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                new DetalleVentaDAO().EliminarTodo();
                CargarTabla(new DetalleVentaDAO().GetAll());
                totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
            }
        }
        private void CargarTabla(List<DetalleVenta> detalleVentas)
        {
            tablaCompra.DataSource = detalleVentas;
            tablaCompra.DataBind();
        }

        protected void btnPagar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConfirmarPago.aspx");

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            new DetalleVentaDAO().EliminarTodo();
            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void tablaCompra_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName == "eliminar")
            {
                String nombreProducto = e.CommandArgument.ToString();
                DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
                detalleVentaDAO.Remove(nombreProducto);
                CargarTabla(new DetalleVentaDAO().GetAll());
                totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
            }
        }


        int cantidadProducto= 0;
        int valorProducto = 0;
        String etiqueta = null;

        //protected void Papas2Kilos_Click(object sender, ImageClickEventArgs e)
        //{
        //    String nombreProducto = "Papas Fritas 2 kl.";
        //    cantidadProducto = cantidadProducto+1;
        //    valorProducto = 2500 * cantidadProducto;

        //    DetalleVenta d = new DetalleVenta();
        //    d.NombreProducto = nombreProducto;
        //    d.Cantidad = cantidadProducto;
        //    d.ValorTotal = valorProducto;

        //    DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
        //    detalleVentaDAO.Add(d);

        //    CargarTabla(new DetalleVentaDAO().GetAll());
            

        //}

        protected void cocaCola_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Coca Cola 1/2Lt.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 1000 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void sprite_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Sprite 1/2Lt.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 1000 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void fanta_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Fanta 1/2Lt.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 1000 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void pepsi_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Pepsi 1/2Lt.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 1000 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void orange_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Orange 1/2Lt.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 1000 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void seven_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Seven-up 1/2Lt.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 1000 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void polloCuarto_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Pollo 1/4.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 2500 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void polloMedio_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Pollo 1/2.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 4500 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void polloKilo_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Pollo Entero.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 7000 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void hotdog_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Hot dog.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 1500 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void sinPalta_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Hot dog-Tomate.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 1500 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void completo_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Completo.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 1500 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void papasCuarto_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Papas 1/4.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 1500 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void papasMedio_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Papas 1/2.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 2500 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void papasKilo_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Papas 1K.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 3500 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void polloPapasCuarto_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Pollo/Papas 1/4.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 2500 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void polloPapasMedio_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Pollo/Papas 1/422.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 5000 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void polloPapasEntero_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Pollo/Papas 1k.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 10000 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }

        protected void completoPapas_Click(object sender, ImageClickEventArgs e)
        {
            String nombreProducto = "Papas y Completo.";
            cantidadProducto = cantidadProducto + 1;
            valorProducto = 2500 * cantidadProducto;

            DetalleVenta d = new DetalleVenta();
            d.NombreProducto = nombreProducto;
            d.Cantidad = cantidadProducto;
            d.ValorTotal = valorProducto;

            DetalleVentaDAO detalleVentaDAO = new DetalleVentaDAO();
            detalleVentaDAO.Add(d);

            CargarTabla(new DetalleVentaDAO().GetAll());
            totalTxt.InnerText = "total: $ " + new DetalleVentaDAO().GetAllValores();
        }


    }
}