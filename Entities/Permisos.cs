
using System.ComponentModel.DataAnnotations;


namespace Entities
{
    public class Permisos
    {
        [Key]
        public int ID { get; set; }
        public string Descripcion { get; set; }

        public Permisos()
        {
            ID = 0;
            Descripcion = string.Empty;
        }
    }
}
