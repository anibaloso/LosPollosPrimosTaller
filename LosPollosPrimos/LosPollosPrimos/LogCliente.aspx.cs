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
                string rut = RutIngresoTxt.Text.Trim();
                string contraseña = ContraseñaIngresoTxt.Text.Trim();

                if (conexion.VerificarCliente(rut, contraseña))
                {
                    Response.Redirect("PantallaVentaCliente.aspx");

                }
                else
                {
                    errorTxt.InnerText = "Error Rut o Contraseña no coinciden";
                }
            }
            else
            {

            }
        }      


    }
}