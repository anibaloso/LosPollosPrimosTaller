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

            if (!Page.IsPostBack)
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


        }

        protected void ModificarBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string rut = rutBox.Value.ToString();
                string nombre = nombreTxt.Value.ToString();
                int telefono = Int32.Parse(TelefonoTxt.Value.ToString());
                string contraseña = ContraseñaTxt.Value.ToString();
                int local = (LocalBox.SelectedIndex);
                int cargo = (CargoBox.SelectedIndex);
                Boolean confirmacion = conexion.modificarPersonal(rut, nombre, telefono, contraseña, local, cargo);

                if (confirmacion)
                {
                    errorTxt.InnerText = "Actualizado Exitosamente";
                    Response.Redirect("VerEmpleados.aspx");
                }
                else
                {
                    errorTxt.InnerText = "Error al modificar ingrese datos correctamente";
                }
            }
            catch (Exception ex)
            {
                errorTxt.InnerText="Error al modificar ingrese datos correctamente";
            }

        }

        public void llenarDatos(object sender, EventArgs e)
        {
            string rut = rutBox.Value.ToString();
            List<string> list2 = new List<string>();
            list2 = conexion.SelectPersonalPorRut(rut); 
            nombreTxt.Value = list2[1];
            TelefonoTxt.Value = list2[2];
            ContraseñaTxt.Value = list2[3];
            LocalBox.SelectedIndex = Int32.Parse(list2[4]);
            CargoBox.SelectedIndex = Int32.Parse(list2[5]);
        }

        protected void Eliminar_Click(Object sender, EventArgs e)
        {
            string rut = rutBox.Value.ToString();
            Boolean confirmacion = conexion.eliminarPersonal(rut);
            if (confirmacion)
            {
                errorTxt.InnerText = "Eliminado Exitosamente";
                Response.Redirect("VerEmpleados.aspx");
            }
            else
            {
                errorTxt.InnerText = "Error al eliminar";
            }
        }

        protected void ValidacionTelefono_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (TelefonoTxt.Value.Length >= 10)
            {
                ValidacionTelefono.ErrorMessage = "El largo debe ser de 9 digitos";
                args.IsValid = false;
            }
            else if (Convert.ToInt32(TelefonoTxt.Value) < 0)
            {
                ValidacionTelefono.ErrorMessage = "No se permiten números negativos";
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

       
    }
}