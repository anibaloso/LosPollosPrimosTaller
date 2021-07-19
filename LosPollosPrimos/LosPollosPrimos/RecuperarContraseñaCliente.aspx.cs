using LosPollosPrimos.Conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LosPollosPrimos
{
    public partial class RecuperarContraseñaCliente : System.Web.UI.Page
    {
        ConexionBD conexion = new ConexionBD();

        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void recuperarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string rut = RutIngresoTxt.Value.Trim();
                string contraseña = conexion.contraseñaPorRutCliente(rut);
                if(contraseña == "")
                {
                    errorTxt.InnerText = "Rut no existe en nuestros registros";
                }
                else
                {
                    EnviarCorreo(rut, contraseña);
                    errorTxt.InnerText = "Contraseña enviada con exito al correo";
                }
            }            
        }


        protected void EnviarCorreo(string rut, string contraseña)
        {
            MailMessage correo = new MailMessage();
            correo.From = new MailAddress("negrocalifa4@gmail.com", "Pollos Primos", System.Text.Encoding.UTF8);//Correo de salida
            correo.To.Add(conexion.correoPorRutCliente(rut)); //Correo destino?
            correo.Subject = "Recuperacion Contraseña Cliente"; //Asunto
            correo.Body = "<strong>Por peticion del Cliente se envia datos recuperados: <strong> <br><br>" //Mensaje del correo
                + "Usuario: " + rut + "<br>"
                + "Contraseña: " + contraseña + "<br> <br>"
                + "Con esos datos ya puede entrar a hacer su pedido en Pollos Primos"
                ;
            correo.IsBodyHtml = true;
            correo.Priority = MailPriority.Normal;
            SmtpClient smtp = new SmtpClient();
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.gmail.com"; //Host del servidor de correo
            smtp.Port = 25; //Puerto de salida
            smtp.Credentials = new System.Net.NetworkCredential("negrocalifa4@gmail.com", "Hermana1Anahi.");//Cuenta de correo
            ServicePointManager.ServerCertificateValidationCallback = delegate (object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };
            smtp.EnableSsl = true;//True si el servidor de correo permite ssl
            smtp.Send(correo);
        }
    }
}