﻿using System;
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


        //---------------------------- SQL PARA PERSONAL ------------------------------------------------------------------------------------


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
            SqlCommand ejecutar = new SqlCommand("Select * from personal where rutPersonal = '" + rut + "'", conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {
                while (registro.Read())
                {
                    lista.Add(registro["rutPersonal"].ToString());
                    lista.Add(registro["nombrePersonal"].ToString());
                    lista.Add(registro["telefonoPersonal"].ToString());
                    lista.Add(registro["contraseñaPersonal"].ToString());
                    lista.Add(registro["local_idLocal"].ToString());
                    lista.Add(registro["cargo_idCargo"].ToString());
                }                
            }
            CerrarConexion();
            return lista;
        }

        public Boolean  eliminarPersonal (string rut)
        {
            Boolean e = true;
            conectar();
            SqlCommand ejecutar = new SqlCommand("Delete from personal where rutPersonal = '" + rut + "'", conectarBD);
            if (ejecutar.ExecuteNonQuery() == 1)
            {
                e = true;
            }else
            {
                e = false;
            }
            CerrarConexion();
            return e;
        }

        public Boolean modificarPersonal(string rut, string nombre, int telefono, string contraseña, int local, int cargo)
        {
            Boolean e = true;
            conectar();
            SqlCommand ejecutar = new SqlCommand("update personal set nombrePersonal='" + nombre + "', telefonoPersonal=" + telefono + ", contraseñaPersonal = '" + contraseña + "', local_idLocal=" + local + ", cargo_idCargo=" + cargo + "where rutPersonal='" + rut + "'" , conectarBD);
            if (ejecutar.ExecuteNonQuery() == 1)
            {
                e = true;
            }
            else
            {
                e = false;
            }
            CerrarConexion();
            return e;
        }


        // ---------------------------- SQL PARA PRODUCTOS ------------------------------------------------------------------------------------



        public DataTable SelectSQLProducto()
        {
            DataTable tabla = new DataTable();
            tabla.Columns.AddRange(new DataColumn[]
            {
                new DataColumn("Id", typeof(string)),
                new DataColumn("Nombre", typeof(string)),
                new DataColumn("valor", typeof(string)),
                new DataColumn("url", typeof(string))
            });
            conectar();
            SqlCommand ejecutar = new SqlCommand("Select * from productosVentas", conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {
                while (registro.Read())
                {

                    tabla.Rows.Add(
                        registro["idProducto"].ToString(),
                        registro["nombreProducto"].ToString(),
                        registro["valor"].ToString(),
                        registro["urlImg"].ToString()
                        );
                }
            }
            CerrarConexion();
            return tabla;

        }

        public Boolean IngresarProducto(string nombre, int valor, string url)
        {
            Boolean e = true;
            conectar();
            string sentencia = "INSERT INTO productosVentas VALUES ('" + nombre + "',"
                + valor + ",'"
                + url + "')";

            SqlCommand ejecutar = new SqlCommand(sentencia, conectarBD);
            if (ejecutar.ExecuteNonQuery() == 1)
            {
                e = true;
            }
            else
            {
                e = false;
            }

            CerrarConexion();
            return e;
        }

        public List<String> SelectIdProducto()
        {
            List<String> lista = new List<string>();
            conectar();
            SqlCommand ejecutar = new SqlCommand("Select * from productosVentas", conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {
                while (registro.Read())
                {
                    lista.Add(registro["idProducto"].ToString() + " " + registro["nombreProducto"].ToString());
                }
            }
            CerrarConexion();
            return lista;
        }

        public List<String> SelectProductoPorId(int id)
        {
            List<String> lista = new List<string>();
            conectar();
            SqlCommand ejecutar = new SqlCommand("Select * from productosVentas where idProducto = " + id , conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {
                while (registro.Read())
                {

                    
                        lista.Add(registro["idProducto"].ToString());
                        lista.Add(registro["nombreProducto"].ToString());
                        lista.Add(registro["valor"].ToString());
                        lista.Add(registro["urlImg"].ToString());
                    
                }
            }
            CerrarConexion();
            return lista;
        }

        public Boolean modificarProducto(int id, string nombre, int valor, string url)
        {
            Boolean e = true;
            conectar();
            SqlCommand ejecutar = new SqlCommand("update productosVentas set nombreProducto='" + nombre + "', valor = " + valor + ", urlImg= '" + url + "' where idProducto=" + id + "", conectarBD);
            if (ejecutar.ExecuteNonQuery() == 1)
            {
                e = true;
            }
            else
            {
                e = false;
            }
            CerrarConexion();
            return e;
        }

        public Boolean eliminarProducto(int id)
        {
            Boolean e = true;
            conectar();
            SqlCommand ejecutar = new SqlCommand("Delete from productosVentas where idProducto = " + id , conectarBD);
            if (ejecutar.ExecuteNonQuery() == 1)
            {
                e = true;
            }
            else
            {
                e = false;
            }
            CerrarConexion();
            return e;
        }


    }
}