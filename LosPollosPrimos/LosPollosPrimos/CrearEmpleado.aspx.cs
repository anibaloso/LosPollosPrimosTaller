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
        private bool VerificaRut(int rut, string dv)
        {
            int Digito;
            int Contador;
            int Multiplo;
            int Acumulador;
            string RutDigito;

            Contador = 2;
            Acumulador = 0;

            while (rut != 0)
            {
                Multiplo = (rut % 10) * Contador;
                Acumulador = Acumulador + Multiplo;
                rut = rut / 10;
                Contador = Contador + 1;

                if (Contador == 8)
                {
                    Contador = 2;
                }
            }

            Digito = 11 - (Acumulador % 11);
            RutDigito = Digito.ToString().Trim().ToUpper();
            if (Digito == 10)
            {
                RutDigito = "K";
            }
            if (Digito == 11)
            {
                RutDigito = "0";
            }
            if (RutDigito.ToString() == dv.ToString())
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void VolverBtn_Click(object sender, EventArgs e)
        {
                Response.Redirect("VerEmpleados.aspx");

        }

        protected void Validar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
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
            else
            {

            }
                
        }

        protected void RutCV_ServerValidate(object source, ServerValidateEventArgs args)
        {
            String rut = rutTxt.Value.Trim();
            if (rut == string.Empty)
            {
                args.IsValid = false;
            }
            else
            {
                String[] rutArray = rut.Split('-');
                bool validacion = false;

                try
                {
                    if (rutArray[1] == "k")
                    {
                        rutArray[1] = "K";
                    }

                    validacion = VerificaRut(Convert.ToInt32(rutArray[0]), rutArray[1]);
                    if (validacion == true)
                    {
                        args.IsValid = true;
                    }
                    else
                    {
                        RutCV.ErrorMessage = "Rut invalido";
                        args.IsValid = false;
                    }
                }
                catch (Exception ex)
                {
                    RutCV.ErrorMessage = "El rut debe contener solo números y 1 guión";
                    args.IsValid = false;
                }

            }
        }

        protected void ValidacionTelefono_ServerValidate(object source, ServerValidateEventArgs args)
        {

            if(TelefonoTxt.Value.Length >= 10)
            {
                ValidacionTelefono.ErrorMessage = "El largo debe ser de 9 digitos";
                args.IsValid = false;
            }
            else if(Convert.ToInt32(TelefonoTxt.Value) < 0)
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