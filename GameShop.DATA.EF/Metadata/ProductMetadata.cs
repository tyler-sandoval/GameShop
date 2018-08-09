using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace GameShop.DATA.EF//.Metadata
{
    public class ProductMetadata
    {
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public Nullable<decimal> Price { get; set; }
        public Nullable<short> UnitsInStock { get; set; }
        public string ProductImage { get; set; }
        public byte ProductStatusID { get; set; }
        public bool IsActive { get; set; }

    }

    [MetadataType(typeof(ProductMetadata))]
    public partial class Product { }
}
