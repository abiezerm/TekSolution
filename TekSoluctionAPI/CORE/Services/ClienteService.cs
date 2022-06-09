using CORE.Interfaces;
using CORE.Models;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CORE.Services
{
    public class ClienteService : IClienteService
    {

        IConfiguration _configuration;

        public ClienteService(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public void CreateCliente(Cliente cliente)
        {
            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString("TekConnection")))
            {
                SqlCommand cmd = new SqlCommand("Proc_Clientes_Inserta", connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Cliente_Nombre", cliente.Nombre);
                cmd.Parameters.AddWithValue("@Cliente_Apellido", cliente.Apellido);
                cmd.Parameters.AddWithValue("@Cliente_Cedula", cliente.Cedula);
                cmd.Parameters.AddWithValue("@Cliente_Telefono", cliente.Telefono);
                cmd.Parameters.AddWithValue("@Casa_Numero", cliente.CasaNumero);
                cmd.Parameters.AddWithValue("@Sector", cliente.Sector);
                cmd.Parameters.AddWithValue("@Provincia", cliente.Provincia);
                cmd.Parameters.AddWithValue("@Calle", cliente.Provincia);
                try
                {
                    connection.Open();
                    cmd.ExecuteScalar();
                    connection.Close();
                }
                catch (Exception ex)
                {
                    throw;
                }
            }
        }
        public void CreateClienteDireccion(ClienteDireccion clienteDireccion)
        {
            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString("TekConnection")))
            {
                SqlCommand cmd = new SqlCommand("Proc_Clientes_Direccion_Inserta", connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Cliente_Numero", clienteDireccion.ClienteId);
                cmd.Parameters.AddWithValue("@Casa_Numero", clienteDireccion.CasaNumero);
                cmd.Parameters.AddWithValue("@Sector", clienteDireccion.Sector);
                cmd.Parameters.AddWithValue("@Provincia", clienteDireccion.Provincia);
                cmd.Parameters.AddWithValue("@Calle", clienteDireccion.Provincia);
                try
                {
                    connection.Open();
                    cmd.ExecuteScalar();
                    connection.Close();
                }
                catch (Exception ex)
                {
                    throw;
                }
            }
        }

        //public List<ClienteLista> ClienteDireccionLista(List<ClienteDireccion> clienteDireccions)
        //{
        //    List<ClienteLista> clientes = new List<ClienteLista>();
        //    List<ClienteDireccion> ClienteDirecciones = clienteDireccions;

        //    foreach (var cliente in clientes)
        //    {
        //        cliente.ClienteDireccions = ClienteDirecciones.Where(x => x.ClienteId == cliente.ClienteId).ToList();
        //        //foreach (var grupo in cliente.ClienteDireccions)
        //        //{
        //        //    grupo.subGrupoCoberturaListars = listadoSubGrupoCobertura.Where(x => x.GrupoNumero == grupo.GrupoNumero).ToList();
        //        //}
        //    }
        //    return clientes;
        //}
        public List<ClienteLista> ReadCliente(string criterio)
        {
            //List<ClienteDireccion> ClienteDirecciones = ReadClienteDireccion(idCliente);

            List<ClienteLista> clientes =new List<ClienteLista>();

            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString("TekConnection")))
            {
                SqlCommand cmd = new SqlCommand("Proc_Clientes_Lista", connection);
                cmd.Parameters.AddWithValue("@Criterio", (criterio == null) ? "" : criterio);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                try
                {
                    connection.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        ClienteLista cliente = new ClienteLista
                        {
                            ClienteId = Convert.ToInt32(dr["Cliente_Numero"]),
                            Nombre = dr["Cliente_Nombre"].ToString(),
                            Apellido = dr["Cliente_Apellido"].ToString(),
                            Cedula = dr["Cliente_Cedula"].ToString(),
                            Telefono = dr["Cliente_Telefono"].ToString(),
                            //CasaNumero = dr["Casa_Numero"].ToString(),
                            //Sector = dr["Sector"].ToString(),
                            //Provincia = dr["Provincia"].ToString(),
                            //Calle = dr["Calle"].ToString(),
                        };
                        clientes.Add(cliente);
                    }
                    connection.Close();
                }
                catch (Exception ex)
                {
                    throw;
                }
                return clientes;
            }
        }
        public void DeleteCliente(int? id)
        {
            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString("TekConnection")))
            {
                SqlCommand cmd = new SqlCommand("Proc_Cliente_Eliminar", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdCliente", id);
                connection.Open();
                cmd.ExecuteNonQuery();
                connection.Close();
            }
        }        
        public void DeleteDireccion(int? id)
        {
            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString("TekConnection")))
            {
                SqlCommand cmd = new SqlCommand("Proc_Cliente_Direccion_Eliminar", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@IdDireccion", id);
                connection.Open();
                cmd.ExecuteNonQuery();
                connection.Close();
            }
        }
        public List<ClienteDireccion> ReadClienteDireccion(string idCliente)
        {
            List<ClienteDireccion> clienteDirecciones = new List<ClienteDireccion>();

            using (SqlConnection connection = new SqlConnection(_configuration.GetConnectionString("TekConnection")))
            {
                SqlCommand cmd = new SqlCommand("Proc_Clientes_Direccion_Lista", connection);
                cmd.Parameters.AddWithValue("@Cliente_Numero", (idCliente == null) ? "" : idCliente);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                try
                {
                    connection.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        ClienteDireccion cliente = new ClienteDireccion
                        {
                            DireccionId = Convert.ToInt32(dr["Cliente_Direccion_Numero"]),

                        ClienteId = Convert.ToInt32(dr["Cliente_Numero"]),
                            CasaNumero = dr["Casa_Numero"].ToString(),
                            Sector = dr["Sector"].ToString(),
                            Provincia = dr["Provincia"].ToString(),
                            Calle = dr["Calle"].ToString(),
                        };
                        clienteDirecciones.Add(cliente);
                    }
                    connection.Close();
                }
                catch (Exception ex)
                {
                    throw;
                }
                return clienteDirecciones;
            }
        }
    }
}
