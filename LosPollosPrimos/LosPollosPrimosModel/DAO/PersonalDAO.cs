using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LosPollosPrimosModel.DTO;
using LosPollosPrimos.Conexion;

namespace LosPollosPrimosModel.DAO
{
    public class PersonalDAO
    {
        ConexionBD conexion = new ConexionBD();


        public void cargarBDPersonal(Personal p)
        {
            string sentencia;

            sentencia = "INSERT INTO personal VALUES ('" + p.Rut + "','"
                + p.Nombre + "',"
                + p.Telefono + ",'"
                + p.Contraseña + "',"
                + p.Local + ","
                + p.Cargo + ")";

            conexion.EjecutarQuerySQL(sentencia);
        }



    }
}
