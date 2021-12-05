using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Trabajo_Final.Models;
using Trabajo_Final.Services;

namespace Trabajo_Final.Repository
{
    public class ClsRVehiculos : Vehiculos
    {SPEED_RACEREntities auto_conect=new SPEED_RACEREntities();
        public Vehiculo buscar(int IdVehiculo)
        {
            throw new NotImplementedException();
        }

        public void create(Vehiculo vehiculo)
        {
            throw new NotImplementedException();
        }

        public void Delete(Vehiculo vehiculo)
        {
            throw new NotImplementedException();
        }

        public List<Vehiculo> Lista_de_vehiculos()
        {

            var Lista = auto_conect.Vehiculo.ToList();

            return Lista;
        }

        public void Update(Vehiculo vehiculo)
        {
            throw new NotImplementedException();
        }


    }
}