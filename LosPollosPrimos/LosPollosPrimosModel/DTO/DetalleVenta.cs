using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LosPollosPrimosModel.DTO
{
    public class DetalleVenta
    {
        private String nombreProducto;
        private int cantidad;
        private int valorTotal;

        public string NombreProducto { get => nombreProducto; set => nombreProducto = value; }
        public int Cantidad { get => cantidad; set => cantidad = value; }
        public int ValorTotal { get => valorTotal; set => valorTotal = value; }
    }
}
