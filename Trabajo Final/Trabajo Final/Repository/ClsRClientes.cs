using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Trabajo_Final.Models;
using Trabajo_Final.Services;

namespace Trabajo_Final.Repository
{

    public class ClsRClientes : Clientes
    {
        SPEED_RACEREntities auto_conect = new SPEED_RACEREntities();

        public Cliente buscar(int IdClientes)
        {
            throw new NotImplementedException();
        }

        public void create(Cliente cliente)
        {
            throw new NotImplementedException();
        }

        public void Delete(Cliente cliente)
        {
            using (SPEED_RACEREntities conexionBd = new SPEED_RACEREntities())
            {
                cliente = conexionBd.Cliente.Find(cliente.id_Cliente);
                conexionBd.Cliente.Remove(cliente);
                conexionBd.SaveChanges();
            }
        }


        public List<Cliente> Lista_de_clientes()
        {

            var Lista = auto_conect.Cliente.ToList();

            return Lista;
        }

        public List<Cliente> Lista_de_Clientes()
        {
            throw new NotImplementedException();
        }

        public void Update(Cliente cliente)
        {
            throw new NotImplementedException();
        }

    }
}