using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LosPollosPrimos
{
    public partial class HomeAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EmpleadosBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerEmpleados.aspx");
        }

        protected void ProductosBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerProductos.aspx");
        }
    }
}