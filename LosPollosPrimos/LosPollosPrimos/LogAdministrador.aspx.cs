using LosPollosPrimos.Conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LosPollosPrimos.Paginas
{
    public partial class LogAdministrador : System.Web.UI.Page
    {
        private String usuario = "Admin";
        private String contraseña = "1234";

        ConexionBD conexion = new ConexionBD();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
            }
        }

        protected void BtnAcceder_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Redirect("HomeAdministrador.aspx");
            }
            else
            {

            }
                
            
        }

        protected void ClaveCV_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                string clave = ClaveTxt.Value;
                string usuarioTxt = UsuarioAdministradorTxt.Value;
                if (clave == contraseña && usuarioTxt == usuario)
                {
                    args.IsValid = true;
                }
                else
                {
                    if (conexion.VerificarAdmin(usuarioTxt, clave))
                    {
                        args.IsValid = true;
                    }
                    else
                    {
                        args.IsValid = false;
                        ClaveCV.ErrorMessage = "El usuario o la clave no coinciden, o puede que no tenga privilegios para esta seccion";
                    }
                }
            }
            catch(Exception ex)
            {
                ClaveCV.ErrorMessage = "El usuario o la clave no coinciden, o puede que no tenga privilegios para esta seccion";
                args.IsValid = false;
            }
            
            
        }
    }
}