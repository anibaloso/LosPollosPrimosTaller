using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using LosPollosPrimosModel.DTO;
using System.Data;

namespace LosPollosPrimos.Conexion
{
    public class ConexionBD
    {
        string cadena = "Server=LAPTOP-HQ9K3UO6\\POLLOSPRIMOS;Database=pollosprimos;Trusted_Connection=True;";

        public SqlConnection conectarBD = new SqlConnection();

        public ConexionBD()
        {
            conectarBD.ConnectionString = cadena;
        }

        public void conectar()
        {
            try
            {
                conectarBD.Open();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error con la conexion + " + ex.Message);
            }
        }

        public void CerrarConexion()
        {
            conectarBD.Close();
        }


        public void EjecutarQuerySQL(string dato)
        {
            conectar();
            SqlCommand ejecutar = new SqlCommand(dato, conectarBD);
            ejecutar.ExecuteNonQuery();
            conectarBD.Close();
        }


        public DataTable SelectSQLPersonal()
        {
            DataTable tabla = new DataTable();
            tabla.Columns.AddRange(new DataColumn[]
            {
                new DataColumn("Rut", typeof(string)),
                new DataColumn("Nombre", typeof(string)),
                new DataColumn("Telefono", typeof(string)),
                new DataColumn("Contraseña", typeof(string))
            });
            conectar();
            SqlCommand ejecutar = new SqlCommand("Select * from personal", conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {
                while (registro.Read())
                {
                    tabla.Rows.Add(
                        registro["rutPersonal"].ToString(),
                        registro["nombrePersonal"].ToString(),
                        registro["telefonoPersonal"].ToString(),
                        registro["contraseñaPersonal"].ToString()
                        );
                }
            }
            CerrarConexion();
            return tabla;
            
        }

        public List<String> SelectRutPersonal()
        {
            List<String> lista = new List<string>();            
            conectar();
            SqlCommand ejecutar = new SqlCommand("Select * from personal", conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {
                while (registro.Read())
                {
                    lista.Add(
                        registro["rutPersonal"].ToString()
                        );
                }
            }
            CerrarConexion();
            return lista;
        }

        public List<String> SelectPersonalPorRut(string rut)
        {
            List<String> lista = new List<string>();
            conectar();
            SqlCommand ejecutar = new SqlCommand("Select * from personal where rutPersonal= "+ rut, conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {               
                lista.Add(registro["rutPersonal"].ToString());
                lista.Add(registro["nombrePersonal"].ToString());
                lista.Add(registro["telefonoPersonal"].ToString());
                lista.Add(registro["contraseñaPersonal"].ToString());
                lista.Add(registro["local_idLocal"].ToString());
                lista.Add(registro["cargo_idCargo"].ToString());
            }
            CerrarConexion();
            return lista;
        }



    }
}