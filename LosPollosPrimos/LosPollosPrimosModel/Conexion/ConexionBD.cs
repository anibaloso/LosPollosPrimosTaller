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
            // "Server=190.101.201.155\\POLLOSPRIMOS;Database=pollosprimos;Trusted_Connection=True;";
        //"Server=LAPTOP-HQ9K3UO6\\POLLOSPRIMOS;Database=pollosprimos;Trusted_Connection=True;";
        //"Server=pollosprimos.chfijzj3jkur.us-east-2.rds.amazonaws.com:1433;Database=pollosprimos;Trusted_Connection=True;";

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


        //public void EjecutarQuerySQL(string dato)
        //{
        //    conectar();
        //    SqlCommand ejecutar = new SqlCommand(dato, conectarBD);
        //    ejecutar.ExecuteNonQuery();
        //    conectarBD.Close();
        //}


        //---------------------------- SQL PARA PERSONAL ------------------------------------------------------------------------------------


        public DataTable SelectSQLPersonal()
        {
            DataTable tabla = new DataTable();
            tabla.Columns.AddRange(new DataColumn[]
            {
                new DataColumn("Rut", typeof(string)),
                new DataColumn("Nombre", typeof(string)),
                new DataColumn("Telefono", typeof(string)),
                new DataColumn("Contraseña", typeof(string)),
                new DataColumn("Cargo", typeof(string)),
                new DataColumn("Local", typeof(string))
            });
            conectar();
            SqlCommand ejecutar = new SqlCommand("Select * from personal", conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {
                while (registro.Read())
                {
                    string cargo = null;
                    string local = null;
                    string idLocal = registro["local_idLocal"].ToString();
                    string idcargo = registro["cargo_idCargo"].ToString();
                    switch (idcargo)
                    {
                        case "1":
                            cargo = "Administrador";
                            break;
                        case "2":
                            cargo = "Vendedor";
                            break;
                        case "3":
                            cargo = "Cocinero";
                            break;
                        case "4":
                            cargo = "Repartidor";
                            break;
                    }
                    switch (idLocal)
                    {
                        case "1":
                            local = "Pollos Primos Viña";
                            break;
                        case "2":
                            local = "Pollos primos Valparaiso";
                            break;
                    }

                    tabla.Rows.Add(
                        registro["rutPersonal"].ToString(),
                        registro["nombrePersonal"].ToString(),
                        registro["telefonoPersonal"].ToString(),
                        registro["contraseñaPersonal"].ToString(),
                        cargo,
                        local
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

<<<<<<< HEAD
        public Boolean eliminarPersonal(string rut)
=======
        public int SelectLocalPersonalPorRut(string rut)
        {
            int idLocal = 0;
            conectar();
            SqlCommand ejecutar = new SqlCommand("Select local_idLocal from personal where rutPersonal = '" + rut + "'", conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {
                while (registro.Read())
                {                   
                    idLocal = Int32.Parse(registro["local_idLocal"].ToString());
                }
            }
            CerrarConexion();
            return idLocal;
        }

        public string SelectNombrePersonalPorRut(string rut)
        {
            string nombre = string.Empty;
            conectar();
            SqlCommand ejecutar = new SqlCommand("Select nombrePersonal from personal where rutPersonal = '" + rut + "'", conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {
                while (registro.Read())
                {
                    nombre = registro["nombrePersonal"].ToString();
                }
            }
            CerrarConexion();
            return nombre;
        }


        public Boolean  eliminarPersonal (string rut)
>>>>>>> 040295b... mejoramiento de boleta y de conexiones
        {
            Boolean e = true;
            conectar();
            SqlCommand ejecutar = new SqlCommand("Delete from personal where rutPersonal = '" + rut + "'", conectarBD);
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

        public Boolean VerificarAdmin(string rut, string contraseña)
        {
            Boolean e = false;
            try
            {
                conectar();
                SqlCommand ejecutar = new SqlCommand("Select contraseñaPersonal, cargo_idCargo from personal where rutPersonal = '" + rut + "'", conectarBD);
                SqlDataReader registro = ejecutar.ExecuteReader();

                if (registro.HasRows)
                {
                    while (registro.Read())
                    {
                        string con = registro["contraseñaPersonal"].ToString();
                        string car = registro["cargo_idCargo"].ToString();
                        if(car == "1")
                        {
                            if (con == contraseña)
                            {
                                e = true;
                            }
                            else
                            {
                                e = false;
                            }
                        }
                        else
                        {
                            e = false;
                        }                        
                    }
                }
                else
                {
                    e = false;
                }

            }
            catch (Exception ex)
            {
                e = false;
            }
            CerrarConexion();
            return e;
        }

        public Boolean VerificarAdminVenta(string rut, string contraseña)
        {
            Boolean e = false;
            try
            {
                conectar();
                SqlCommand ejecutar = new SqlCommand("Select contraseñaPersonal, cargo_idCargo from personal where rutPersonal = '" + rut + "'", conectarBD);
                SqlDataReader registro = ejecutar.ExecuteReader();

                if (registro.HasRows)
                {
                    while (registro.Read())
                    {
                        string con = registro["contraseñaPersonal"].ToString();
                        string car = registro["cargo_idCargo"].ToString();
                        if (car == "1" || car =="2")
                        {
                            if (con == contraseña)
                            {
                                e = true;
                            }
                            else
                            {
                                e = false;
                            }
                        }
                        else
                        {
                            e = false;
                        }
                    }
                }
                else
                {
                    e = false;
                }

            }
            catch (Exception ex)
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


        //---------------------------- SQL PARA Cliente ------------------------------------------------------------------------------------

        public Boolean IngresarCliente(string rut, string nombre, string direccion, string contrasña, string telefono, string correo)
        {
            Boolean e = true;
            conectar();
            string sentencia = "INSERT INTO cliente VALUES ('" + rut + "','"
                + nombre + "','"
                + direccion + "','"
                + contrasña + "','"
                + telefono + "','"
                + correo + "')";

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


        public Boolean VerificarCliente(string rut, string contraseña)
        {
            Boolean e = false;
            try
            {                
                conectar();
                SqlCommand ejecutar = new SqlCommand("Select contraseñaCliente from cliente where rutCliente = '" + rut + "'", conectarBD);
                SqlDataReader registro = ejecutar.ExecuteReader();

                if (registro.HasRows)
                {
                    while (registro.Read())
                    {
                        string con = registro["contraseñaCliente"].ToString();
                        if (con == contraseña)
                        {
                            e = true;
                        }
                        else
                        {
                            e = false;
                        }
                    }             

                }
                else
                {
                    e = false;
                }

            }
            catch (Exception ex)
            {
               e = false;
            }
            CerrarConexion();
            return e;
        }

        public String nombrePorRutCliente(string rut)
        {
            List<String> lista = new List<string>();
            conectar();
            string nombre = "";
            SqlCommand ejecutar = new SqlCommand("Select nombreCliente from cliente where rutCliente = '" + rut + "'", conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {
                while (registro.Read())
                {
                    nombre = registro["nombreCliente"].ToString();                    
                }
            }
            CerrarConexion();
            return nombre;
        }

        public String direccionPorRutCliente(string rut)
        {           
            conectar();
            string direccion = "";
            SqlCommand ejecutar = new SqlCommand("Select direccionCliente from cliente where rutCliente = '" + rut + "'", conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {
                while (registro.Read())
                {
                    direccion = registro["direccionCliente"].ToString();
                }
            }
            CerrarConexion();
            return direccion;
        }

        public String correoPorRutCliente(string rut)
        {
            
            conectar();
            string nombre = "";
            SqlCommand ejecutar = new SqlCommand("Select correoCliente from cliente where rutCliente = '" + rut + "'", conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {
                while (registro.Read())
                {
                    nombre = registro["correoCliente"].ToString();
                }
            }
            CerrarConexion();
            return nombre;
        }



        //------------------------------------ SQL BOLETA -------------------------------

        public void IngresardetallePedido(int cantidad, int total, string nombreProducto)
        {
            Boolean e = true;
            conectar();
            string sentencia = "INSERT INTO detallePedido VALUES (" + cantidad + ","
                + total + ",'"              
                + nombreProducto + "')";

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
            //return e;
        }

        public void IngresarPedido(string Observaciones, int dePedido, string rutCliente, int tipoEntrega)
        {
            Boolean e = true;
            conectar();
            string sentencia = "INSERT INTO pedido VALUES ('" + Observaciones + "',"
                + dePedido + ",'"
                + rutCliente + "',"
                + tipoEntrega + ")";

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
            //return e;
        }

        public void IngresarBoleta(int idPedido, int dePedido, string rut, int tipoEntrega, int local, int comuna)
        {
            Boolean e = true;
            conectar();
            string sentencia = "INSERT INTO boleta VALUES (" + idPedido + ","
                + dePedido + ",'"
                + rut + "',"
                + tipoEntrega + ","
                + local + ","
                + comuna + ")";

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
            //return e;
        }

        public int ultimoIdDetallePedido()
        {
            int ultimo;
            List<String> lista = new List<string>();
            conectar();
            SqlCommand ejecutar = new SqlCommand("Select idDetallePedido from detallePedido", conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {
                while (registro.Read())
                {
                    lista.Add(registro["idDetallePedido"].ToString());
                }
            }
            CerrarConexion();
            ultimo = lista.Count();
            return ultimo;
        }

        public int ultimoIdPedido()
        {
            int ultimo;
            List<String> lista = new List<string>();
            conectar();
            SqlCommand ejecutar = new SqlCommand("Select idPedido from Pedido", conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {
                while (registro.Read())
                {
                    lista.Add(registro["idPedido"].ToString());
                }
            }
            CerrarConexion();
            ultimo = lista.Count();
            return ultimo;
        }

        public int ultimoIdBoleta()
        {
            int ultimo;
            List<String> lista = new List<string>();
            conectar();
            SqlCommand ejecutar = new SqlCommand("Select idBoleta from boleta", conectarBD);
            SqlDataReader registro = ejecutar.ExecuteReader();

            if (registro.HasRows)
            {
                while (registro.Read())
                {
                    lista.Add(registro["idBoleta"].ToString());
                }
            }
            CerrarConexion();
            ultimo = lista.Count();
            return ultimo;
        }

    }
}