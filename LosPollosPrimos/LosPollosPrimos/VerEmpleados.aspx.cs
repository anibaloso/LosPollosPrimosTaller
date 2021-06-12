using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LosPollosPrimos
{
    public partial class VerEmpleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AgregarEmpBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrearEmpleado.aspx");
        }

        protected void ModificarBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModificarEmpleado.aspx");
        }

        protected void VolverBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeAdministrador.aspx");
        }
    }
}