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
        private int contraseña = 1234;
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
                Response.Redirect("PantallaVenta.aspx");
            }
            else
            {
            }
        }

        protected void ClaveCV_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                int clave = Convert.ToInt32(ClaveTxt.Text);
                string usuarioTxt = UsuarioVentasTxt.Text;
                if (clave == contraseña && usuarioTxt == usuario)
                {
                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;
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