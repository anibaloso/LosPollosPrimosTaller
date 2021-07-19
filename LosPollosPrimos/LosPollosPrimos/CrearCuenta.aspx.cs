using LosPollosPrimos.Conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LosPollosPrimos.Paginas
{
    public partial class CrearCuenta : System.Web.UI.Page
    {
        ConexionBD conexion = new ConexionBD();

        private bool verificaRut(int rut, string dv)
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
                TextBox1.Text = "+56";
            }
        }

        protected void rutCV_ServerValidate(object source, ServerValidateEventArgs args)
        {
            String rut = RutTxt.Text.Trim();
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

                    validacion = verificaRut(Convert.ToInt32(rutArray[0]), rutArray[1]);
                    if (validacion == true)
                    {
                        args.IsValid = true;
                    }
                    else
                    {
                        rutCV.ErrorMessage = "Rut invalido";
                        args.IsValid = false;
                    }
                }
                catch (Exception ex)
                {
                    rutCV.ErrorMessage = "El rut debe contener solo números y 1 guión";
                    args.IsValid = false;
                }

            }

        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string rut = RutTxt.Text.Trim();
                string nombre = NombreTxt.Text.Trim();
                string dieccion = DireccionTxt.Text.Trim();
                string contraseña = ContraseñaTxt.Text.Trim();
                string telefono = TelefonoTxt.Text;
                string correo = CorreoTxt.Text;

                if (conexion.IngresarCliente(rut, nombre, dieccion, contraseña, telefono, correo))
                {
                    Response.Redirect("PantallaVentaCliente.aspx");
                }
                //Response.Redirect("Menu.aspx");
            }
            else
            {

            }
        }

        protected void ContraseñaValidacion_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string contraseña = ContraseñaTxt.Text.ToString().Trim();
            string contraseñaVal = ConfirmarContraseñaTxt.Text.ToString().Trim();

            if (contraseña == contraseñaVal)
            {
                args.IsValid = true;
            }
            else
            {
                ContraseñaValidacion.ErrorMessage = "Las contraseñas no coinciden";
                args.IsValid = false;
            }
        }

        protected void ValidarTelefono_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (TelefonoTxt.Text.Length >= 10 || TelefonoTxt.Text.Length < 9)
            {
                ValidarTelefono.ErrorMessage = "El largo debe ser de 9 digitos";
                args.IsValid = false;
            }
            else if (Convert.ToInt32(TelefonoTxt.Text) < 0)
            {
                ValidarTelefono.ErrorMessage = "No se permiten números negativos";
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void ValidarCorreo_ServerValidate(object source, ServerValidateEventArgs args)
        {
            String expresion;
            expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            if (Regex.IsMatch(CorreoTxt.Text, expresion))
            {
                if (Regex.Replace(CorreoTxt.Text, expresion, String.Empty).Length == 0)
                {
                    
                    args.IsValid= true;
                }
                else
                {
                    ValidarCorreov.ErrorMessage = "Ingrese un correo valido";
                    args.IsValid= false;
                }
            }
            else
            {
                ValidarCorreov.ErrorMessage = "Ingrese un correo valido";
                args.IsValid= false;
            }
        }

    }
}