using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LosPollosPrimos.Conexion;

namespace LosPollosPrimos
{
    public partial class Site : System.Web.UI.MasterPage
    {        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ConexionBD conexion = new ConexionBD();
                conexion.conectar();                
            }
            
        }

    }
}