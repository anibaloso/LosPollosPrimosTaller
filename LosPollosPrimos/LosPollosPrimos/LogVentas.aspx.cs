using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LosPollosPrimos.Paginas
{
    public partial class LogVentas : System.Web.UI.Page
    {
        private String usuario = "Venta";
        private String contraseña = "1234";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AccederBtn_Click(object sender, EventArgs e)
        {
            String mensaje = "Los campos no deben estar vacíos";

            if (UsuarioVentasTxt.Text.ToString() == String.Empty && ClaveTxt.Text == String.Empty)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + mensaje + "');", true);
            }
            else if (UsuarioVentasTxt.Text != usuario && ClaveTxt.Text != contraseña)
            {
                mensaje = "Ingrese correctamente los datos";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + mensaje + "');", true);
            }
            else
            {
                Response.Redirect("PantallaVenta.aspx");
            }

        }
    }
}