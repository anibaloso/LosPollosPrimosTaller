using LosPollosPrimos.Conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LosPollosPrimos.Paginas
{
    public partial class LogVentas : System.Web.UI.Page
    {
        private String usuario = "Venta";
        private String contraseña = "1234";
        ConexionBD conexion = new ConexionBD();

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
                Response.Redirect("PantallaVenta2.aspx?id=" + UsuarioVentasTxt.Value);
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
                string usuarioTxt = UsuarioVentasTxt.Value;
                if (clave == contraseña && usuarioTxt == usuario)
                {
                    args.IsValid = true;
                }
                else
                {
                    if (conexion.VerificarAdminVenta(usuarioTxt, clave))
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
            catch (Exception ex)
            {
                ClaveCV.ErrorMessage = "El usuario o la clave no coinciden";
                args.IsValid = false;
            }

        }
    }
}