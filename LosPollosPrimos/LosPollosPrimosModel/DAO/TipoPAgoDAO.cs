using LosPollosPrimosModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LosPollosPrimosModel.DAO
{
    public class TipoPagoDAO
    {
        public static List<TipoPago> tipoPagos = new List<TipoPago>()
        {
            new TipoPago()
            {
                FormaPago="Efectivo"
            },
            new TipoPago()
            {
                FormaPago="Debito"
            }
        };

        public List<TipoPago> GetAll()
        {
            return tipoPagos;
        }
    }
}
