using LosPollosPrimos.Conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LosPollosPrimos.Paginas
{
    public partial class LogCliente : System.Web.UI.Page
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
               
            }
        }       


        protected void AccederBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string rut = RutIngresoTxt.Value.Trim();
                Response.Redirect("PantallaVentaCliente2.aspx?id=" + rut);
            }
            else
            {

            }
        }

        protected void RutCV_ServerValidate(object source, ServerValidateEventArgs args)
        {
            String rut = RutIngresoTxt.Value.Trim();
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

        protected void ContraseñaValidacion_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string rut = RutIngresoTxt.Value.Trim();
            string contraseña = ContraseñaIngresoTxt.Value.Trim();

            if (conexion.VerificarCliente(rut, contraseña))
            {
                args.IsValid = true;
            }
            else
            {
                ContraseñaValidacion.ErrorMessage = "Error Rut o Contraseña no coinciden";
                args.IsValid = false;
            }
        }
    }
}