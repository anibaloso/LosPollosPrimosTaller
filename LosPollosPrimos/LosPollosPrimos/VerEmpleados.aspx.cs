using LosPollosPrimos.Conexion;
using LosPollosPrimosModel.DAO;
using LosPollosPrimosModel.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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
            DataTable dt = new DataTable();
            ConexionBD conexion = new ConexionBD();

            dt = conexion.SelectSQLPersonal();

            GVVista.DataSource = dt;
            GVVista.DataBind();

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