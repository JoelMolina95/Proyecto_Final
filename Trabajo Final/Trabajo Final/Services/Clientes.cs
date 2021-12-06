using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Trabajo_Final.Models;

namespace Trabajo_Final.Services
{
    interface Clientes
    {
        void Create(Cliente cliente);

        void Delete(Cliente cliente);

        void Update(Cliente cliente);

        Cliente buscar(int idCliente);

        List<Cliente> Lista_de_Clientes();
    }

}

