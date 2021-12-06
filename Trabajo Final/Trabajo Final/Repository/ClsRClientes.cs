using Trabajo_Final.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using Trabajo_Final.Services;

namespace Trabajo_Final.Repository
{
    public class ClsRClientes : Clientes
    {
        SPEED_RACEREntities auto_conect = new SPEED_RACEREntities();

        public Cliente buscar(int IdCliente)
        {
            throw new NotImplementedException();
        }

        public void Create(Cliente cliente)
        {
            using (auto_conect)
            {
                try { 
                
                Cliente usuario = new Cliente();

                usuario.nombres = cliente.nombres;
                usuario.apellidos = cliente.apellidos;
                usuario.departamento = cliente.departamento;
                usuario.direccion = cliente.direccion;
                usuario.telefono = cliente.telefono;
                usuario.email = cliente.email;
                usuario.num_tarjeta = cliente.num_tarjeta;
                usuario.CVV = cliente.CVV;
                usuario.fecha_vencimiento = cliente.fecha_vencimiento;
                auto_conect.Cliente.Add(usuario);
                auto_conect.SaveChanges();
                }
                catch(Exception ex) { }
            }
        }
        

        public void Delete(Cliente cliente)
        {
            throw new NotImplementedException();
        }


        public List<Cliente> Lista_de_Clientes()
        {
            var Lista = auto_conect.Cliente.ToList();

            return Lista;
        }



        public void Update(Cliente cliente)
        {
            throw new NotImplementedException();
        }


    }
}