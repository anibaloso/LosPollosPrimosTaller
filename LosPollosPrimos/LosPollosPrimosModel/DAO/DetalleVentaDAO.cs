using LosPollosPrimosModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LosPollosPrimosModel.DAO
{
    public class DetalleVentaDAO
    {
        private static List<DetalleVenta> detalleVentas = new List<DetalleVenta>();

        public void Add(DetalleVenta dv)
        {
            detalleVentas.Add(dv);
        }
        //devuelvo lista de todos los detalles de la venta
        public List<DetalleVenta> GetAll()
        {
            return detalleVentas;
        }
        
        //devuelvo lista solo mayores a 0 
        public List<DetalleVenta> GetDesde1()
        {

            return detalleVentas.FindAll(c => c.Cantidad > 0);
        }
        public void Remove(String nombreProducto)
        {
            DetalleVenta detalleVenta = detalleVentas.Find(c => c.NombreProducto ==Convert.ToString(nombreProducto));
            detalleVentas.Remove(detalleVenta);

        }
        public int GetAllValores()
        {
            int suma = detalleVentas.Sum(item => item.ValorTotal);
            return suma;
        }
        public void EliminarTodo()
        {
            detalleVentas.Clear();
        }

    }
}
