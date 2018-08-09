﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameShop.DATA.EF//.Metadata
{
    public class CategoriesMetadata
    {
        public string CategoryName { get; set; }
        public string CategoryDescription { get; set; }

    }

    [MetadataType(typeof(CategoriesMetadata))]
    public partial class Category { }
}