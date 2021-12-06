using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Trabajo_Final.Models;

namespace Trabajo_Final.Services
{
    interface Vehiculos
    { 
        void create(Vehiculo vehiculo);

        void Delete(Vehiculo vehiculo);

        void Update(Vehiculo vehiculo);

        Vehiculo buscar (int IdVehiculo);

        List<Vehiculo> Lista_de_vehiculos();
    }

}




