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
        [Display(Name = "Category ID")]
        [Required(ErrorMessage = "* Category ID cannot be a null field")]
        public int CategoryID { get; set; }

        [Display(Name = "Product ID")]
        [Required(ErrorMessage = "* Product ID cannot be a null field.")]
        public int ProductID { get; set; }
    }

    [MetadataType(typeof(ProductCategoryMetadata))]
    public partial class ProductCategory { }
}
