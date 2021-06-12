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

        protected void BtnAcceder_Click(object sender, EventArgs e)
        {
            if(UsuarioAdministradorTxt.Text == usuario && ClaveTxt.Text == contraseña)
            {
                Response.Redirect("HomeAdministrador.aspx");
            }
        }
    }
}