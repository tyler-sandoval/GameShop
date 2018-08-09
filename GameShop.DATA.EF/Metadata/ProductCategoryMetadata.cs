using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace GameShop.DATA.EF//.Metadata
{
    public class ProductCategoryMetadata
    {
        public int CategoryID { get; set; }
        public int ProductID { get; set; }
    }

    [MetadataType(typeof(ProductCategoryMetadata))]
    public partial class ProductCategory { }
}
