using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CORE.Models
{
    public class Cliente
    {
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Cedula { get; set; }
        public string Telefono { get; set; }
        public string CasaNumero { get; set; }
        public string Sector { get; set; }
        public string Provincia { get; set; }
        public string Calle { get; set; }


    }
    public class ClienteLista
    {
        public int ClienteId { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Cedula { get; set; }
        public string Telefono { get; set; }

        //public List<ClienteDireccion> ClienteDireccions { get; set; }

    }
    public class ClienteDireccion
    { 
    
        public int DireccionId { get; set; }
        public int ClienteId { get; set; }

        public string CasaNumero { get; set; }
        public string Sector { get; set; }
        public string Provincia { get; set; }
        public string Calle { get; set; }
    }
}
