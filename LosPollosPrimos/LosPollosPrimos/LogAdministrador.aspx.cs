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
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Validacion()
        {
            String mensaje = "No valida la wea";
            if (UsuarioAdministradorTxt.Text.ToString() == String.Empty || ClaveTxt.Text == String.Empty)
            {
                LB.CssClass = "alert alert-danger";
                mensaje = "bla bla";
            }
            else if(UsuarioAdministradorTxt.Text != usuario && ClaveTxt.Text != contraseña)
            {
                LB.CssClass = "alert alert-danger";
                mensaje = "asdsad";
            }
            LB.Text = mensaje;
        }
    }
}