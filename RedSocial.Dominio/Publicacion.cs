using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RedSocial.Dominio
{
    [Table("Publicacion")]
    public class Publicacion
    {
        public int Id { get; set; }

        [MaxLength(50)]
        [Required]
        public string Usuario { get; set; }

        [MaxLength(200)]
        [Required]
        public string Descripcion { get; set; }

        public DateTime FechaPublicacion { get; set; }

        public int MeGusta { get; set; }

        public int MeDigusta { get; set; }

        public int VecesCompartido { get; set; }

        public bool EsPrivada { get; set; }

    }
}
