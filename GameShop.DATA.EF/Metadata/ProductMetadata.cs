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
        [Required(ErrorMessage = "* Required")]
        [StringLength(150, ErrorMessage = "* Product name cannot exceed 150 characters.")]
        [Display(Name = "Product")]
        public string ProductName { get; set; }

        [Display(Name = "Description")]
        [UIHint("MultilineText")]
        [DisplayFormat(NullDisplayText = "N/A")]
        public string ProductDescription { get; set; }

        [DisplayFormat(NullDisplayText = "N/A", DataFormatString = "{0:c}", ApplyFormatInEditMode = true)]
        public Nullable<decimal> Price { get; set; }

        [Display(Name = "Units In Stock")]
        [DisplayFormat(NullDisplayText = "N/A", DataFormatString = "{0:n0}", ApplyFormatInEditMode = true)]
        public Nullable<short> UnitsInStock { get; set; }

        [Display(Name = "Image")]
        [DisplayFormat(NullDisplayText = "Image currently not available")]
        public string ProductImage { get; set; }

        [Display(Name = "Product Status ID")]
        [Required(ErrorMessage = "* Required")]
        public byte ProductStatusID { get; set; }

        [Display(Name = "Is Active?")]
        [Required(ErrorMessage = "* Required")]
        public bool IsActive { get; set; }

    }

    [MetadataType(typeof(ProductMetadata))]
    public partial class Product { }
}
