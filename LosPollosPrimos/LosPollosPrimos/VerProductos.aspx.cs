using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using LosPollosPrimos.Conexion;
using System.Web.UI.WebControls;

namespace LosPollosPrimos
{
    public partial class VerProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            ConexionBD conexion = new ConexionBD();

            dt = conexion.SelectSQLProducto();

            GVVista.DataSource = dt;
            GVVista.DataBind();
        }

        protected void AgregarProBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrearProducto.aspx");
        }

        protected void ModificarProBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModificarProducto.aspx");
        }

        protected void VolverBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeAdministrador.aspx");
        }
    }
}