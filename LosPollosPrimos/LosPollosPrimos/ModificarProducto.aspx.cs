using LosPollosPrimos.Conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LosPollosPrimos
{
    public partial class EditarProducto : System.Web.UI.Page
    {
        ConexionBD conexion = new ConexionBD();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ConexionBD conexion = new ConexionBD();

                List<string> list = new List<string>();
                list = conexion.SelectIdProducto();
                idBox.Items.Clear();
                foreach (string elemento in list)
                {
                    idBox.Items.Add(elemento);
                }
            }
        }

        protected void VolverBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerProductos.aspx");
        }

        public void llenarDatos(object sender, EventArgs e)
        {
            string id = idBox.Value.ToString();
            string[] cadena = id.Split(' ');
            int id2 = Int32.Parse(cadena[0]);

            List<string> list2 = new List<string>();
            list2 = conexion.SelectProductoPorId(id2);

            nombreTxt.Text = list2[1];
            valorTxt.Text = list2[2];
            urlTxt.Text = list2[3];
        }

        protected void ActualizarBtn_Click(object sender, EventArgs e)
        {
            string id = idBox.Value.ToString();
            string[] cadena = id.Split(' ');
            int id2 = Int32.Parse(cadena[0]);
            
            string nombre = nombreTxt.Text.ToString();
            int valor = Int32.Parse(valorTxt.Text.ToString());
            string url = urlTxt.Text.ToString();
            Boolean confirmacion = conexion.modificarProducto(id2, nombre, valor, url);

            if (confirmacion)
            {
                nombreTxt.Text = "Actualizado con exito";
            }
            else
            {
                nombreTxt.Text = "Error";
            }
        }


        protected void EliminarBtn_Click(object sender, EventArgs e)
        {
            string id = idBox.Value.ToString();
            string[] cadena = id.Split(' ');
            int id2 = Int32.Parse(cadena[0]);
           
            Boolean confirmacion = conexion.eliminarProducto(id2);

            if (confirmacion)
            {
                nombreTxt.Text = "Eliminado con exito";
            }
            else
            {
                nombreTxt.Text = "Error";
            }
        }
    }
}