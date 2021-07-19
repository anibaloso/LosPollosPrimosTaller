using LosPollosPrimos.Conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LosPollosPrimos
{
    public partial class CrearProducto : System.Web.UI.Page
    {

        ConexionBD conexion = new ConexionBD();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void CrearBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string nombre = nombreTxt.Value.ToString().Trim();
                int valor = int.Parse(valorTxt.Value.ToString().Trim());
                string url = urlTxt.Value.ToString().Trim();
                Boolean ejecutar = conexion.IngresarProducto(nombre, valor, url);
                if (ejecutar)
                {

                    Response.Redirect("VerProductos.aspx");
                }
            }
            else
            {

            }
        }
        protected void ValidacionValor_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Convert.ToInt32(valorTxt.Value) <= 0)
            {
                ValidacionValor.ErrorMessage = "No se pueden ingresar números negativos";
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }


    }
}