using RedSocial.Api.Models;
using RedSocial.Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace RedSocial.Api.Controllers
{
    public class PublicacionController : ApiController
    {
        [HttpGet]
        public IEnumerable<Publicacion> Get()
        {
            using (PublicacionContext context = new PublicacionContext())
            {
                return context.Publicaciones.ToList();
            }
        }
            
    }
}
