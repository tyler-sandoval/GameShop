using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameShop.DATA.EF//.Metadata
{
    public class ProductStatusMetadata
    {
        public string StatusName { get; set; }
        public string StatusDescription { get; set; }

    }

    [MetadataType(typeof(ProductStatusMetadata))]
    public partial class ProductStatus { }
}
