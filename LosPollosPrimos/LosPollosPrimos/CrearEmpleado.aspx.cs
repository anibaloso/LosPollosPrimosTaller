using LosPollosPrimosModel.DAO;
using LosPollosPrimosModel.DTO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LosPollosPrimos
{
    public partial class CrearEmpleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void VolverBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerEmpleados.aspx");
        }

        protected void Validar_Click(object sender, EventArgs e)
        {            
            try
            {
                string rut = rutTxt.Value.ToString().Trim();
                string nombre = nombreTxt.Value.ToString().Trim();
                int telefono = int.Parse(TelefonoTxt.Value.ToString().Trim());
                string contraseña = ContraseñaTxt.Value.ToString().Trim();
                int local = (LocalBox.SelectedIndex);
                int cargo = (CargoBox.SelectedIndex);

                Personal p = new Personal(rut, nombre, telefono, contraseña, local, cargo);
                PersonalDAO pDao = new PersonalDAO();

                //cargamos los datos para ser enviados a la sentencia SQL si sale bien vamos a la pagina de empleados
                pDao.cargarBDPersonal(p);
                Response.Redirect("VerEmpleados.aspx");
            }
            catch (Exception ex)
            {
                errorTxt.InnerText ="Error al agregar un empleado verifique los datos";
            }
            

        }

    }
}