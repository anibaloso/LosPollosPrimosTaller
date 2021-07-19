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
        public void llenarDatos(object sender, EventArgs e)
        {
            string id = idBox.Value.ToString();
            string[] cadena = id.Split(' ');
            int id2 = Int32.Parse(cadena[0]);

            List<string> list2 = new List<string>();
            list2 = conexion.SelectProductoPorId(id2);

            nombreTxt.Value = list2[1];
            valorTxt.Value = list2[2];
            urlTxt.Value = list2[3];
        }

        protected void ActualizarBtn_Click(object sender, EventArgs e)
        {
            if (ValidarDatos())
            {
                string id = idBox.Value.ToString();
                string[] cadena = id.Split(' ');
                int id2 = Int32.Parse(cadena[0]);

                string nombre = nombreTxt.Value.ToString();
                int valor = Int32.Parse(valorTxt.Value.ToString());
                string url = urlTxt.Value.ToString();
                Boolean confirmacion = conexion.modificarProducto(id2, nombre, valor, url);

                if (confirmacion)
                {
                    Response.Redirect("VerProductos.aspx");
                }
                else
                {
                    nombreTxt.Value = "Error";
                }
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
                Response.Redirect("VerProductos.aspx");
            }
            else
            {
                nombreTxt.Value = "Error";
            }
        }

        protected Boolean ValidacionValor()
        {
            Boolean res;
            if(valorTxt.Value == string.Empty)
            {
                errorValor.InnerText = "Valor no puede estar vacio";
                res = false;
            }
            else
            {
                if (Convert.ToInt32(valorTxt.Value) <= 0)
                {
                    errorValor.InnerText = "No se pueden ingresar números negativos";
                    res = false;
                }
                else
                {
                    res = true;
                }
            }
            return res;           
        }

        protected Boolean ValidarDatos()
        {
            Boolean res;
            if(nombreTxt.Value == string.Empty)
            {
                errorNombre.InnerText = "Nombre no puede estar vacio";
                res = false;
            }
            else
            {
                if (ValidacionValor())
                {
                    if(urlTxt.Value == string.Empty)
                    {
                        errorUrl.InnerText = "URL no puede estar vacia";
                        res = false;
                    }
                    else
                    {
                        res = true;
                    }
                }
                else
                {
                    res = false;
                }
            }
            return res;
        }
    }
}