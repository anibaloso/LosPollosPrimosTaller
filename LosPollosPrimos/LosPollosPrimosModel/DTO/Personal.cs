using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LosPollosPrimosModel.DTO
{
    public class Personal
    {
        string rut;
        string nombre;
        int telefono;
        string contraseña;
        int local;
        int cargo;

        public Personal()
        {

        }

        public Personal(string rut, string nombre, int telefono, string contraseña, int local, int cargo)
        {
            this.rut = rut;
            this.nombre = nombre;
            this.telefono = telefono;
            this.contraseña = contraseña;
            this.local = local;
            this.cargo = cargo;
        }

        public string Rut { get => rut; set => rut = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public int Telefono { get => telefono; set => telefono = value; }
        public string Contraseña { get => contraseña; set => contraseña = value; }
        public int Local { get => local; set => local = value; }
        public int Cargo { get => cargo; set => cargo = value; }

        public override string ToString()
        {
            return "Personal: " + rut + " " + nombre + " " + telefono + " " + contraseña + " " + local + " " + cargo;
        }

    }
}
