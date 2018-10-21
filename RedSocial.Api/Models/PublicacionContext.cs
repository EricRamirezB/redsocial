﻿using RedSocial.Dominio;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace RedSocial.Api.Models
{
    public class PublicacionContext: DbContext
    {
        public PublicacionContext()  : base("PublicacionConnection")
        {

        }

        public DbSet<Publicacion> Publicaciones { get; set; }

    }
}