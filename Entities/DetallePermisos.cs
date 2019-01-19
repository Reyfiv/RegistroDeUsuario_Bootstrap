using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class DetallePermisos
    {
        [Key]
        public int IdDetalle { get; set; }
        public int ID { get; set; }
        public string Descripcion { get; set; }

        public DetallePermisos(int idDetalle,int id, string descripcion)
        {
            IdDetalle = idDetalle;
            ID = id;
            Descripcion = descripcion;
        }

        public DetallePermisos()
        {
            ID = 0;
            Descripcion = string.Empty;
        }

    }

}
