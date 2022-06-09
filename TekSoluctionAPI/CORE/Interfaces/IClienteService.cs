using CORE.Models;
using System.Collections.Generic;

namespace CORE.Interfaces
{
    public interface IClienteService
    {
        public void CreateCliente(Cliente cliente);
        public void CreateClienteDireccion(ClienteDireccion clienteDireccion);

        List<ClienteLista> ReadCliente(string criterio);
        public List<ClienteDireccion> ReadClienteDireccion(string idCliente);

        public void DeleteCliente(int? id);
        public void DeleteDireccion(int? id);

    }
}