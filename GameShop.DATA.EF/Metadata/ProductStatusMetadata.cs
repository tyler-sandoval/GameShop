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
        [Display(Name = "Status")]
        [Required(ErrorMessage = "* Product Status is required")]
        [DisplayFormat(ApplyFormatInEditMode = true)]
        [StringLength(20, ErrorMessage = "* Product status cannot exceed 20 characters.")]
        public string StatusName { get; set; }

        [Display(Name = "Description")]
        [UIHint("MultilineText")]
        [DisplayFormat(NullDisplayText = "N/A", ApplyFormatInEditMode = true)]
        [StringLength(200, ErrorMessage = "* Description cannot exceed 200 characers.")]
        public string StatusDescription { get; set; }

    }

    [MetadataType(typeof(ProductStatusMetadata))]
    public partial class ProductStatus { }
}
