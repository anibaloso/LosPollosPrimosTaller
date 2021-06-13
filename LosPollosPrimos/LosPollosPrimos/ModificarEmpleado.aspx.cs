using LosPollosPrimos.Conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LosPollosPrimos
{
    public partial class EditarEmpleado : System.Web.UI.Page
    {

        ConexionBD conexion = new ConexionBD();
        List<string> listaVolantin = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            ConexionBD conexion = new ConexionBD();

            List<string> list = new List<string>();
            list = conexion.SelectRutPersonal();
            listaVolantin = list;
            rutBox.Items.Clear();
            foreach (string elemento in list)
            {
                rutBox.Items.Add(elemento);
            }
        }

        protected void ValidarBtn_Click(object sender, EventArgs e)
        {

        }

        public void llenarDatos()
        {
            string putoRut = listaVolantin [rutBox.SelectedIndex];
            List<string> list = new List<string>();
            //list = conexion.SelectPersonalPorRut(rutBox.Items.ToString());
            nombreTxt.Value = putoRut;
            //nombreTxt.Value = list[1].ToString();

        }

        protected void VolverBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerEmpleados.aspx");
        }

        
    }
}