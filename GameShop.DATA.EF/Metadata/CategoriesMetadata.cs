using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameShop.DATA.EF//.Metadata
{
    public class CategoriesMetadata
    {
        [Required(ErrorMessage = "* Required")]
        [StringLength(100, ErrorMessage = "* Category name cannot exceed 100 characters.")]
        [Display(Name = "Category")]
        [DisplayFormat(ApplyFormatInEditMode = true)]
        public string CategoryName { get; set; }

        [UIHint("MultilineText")]
        [Display(Name = "Description")]
        [StringLength(200, ErrorMessage = "* Category description cannot exceed 200 characters.")]
        public string CategoryDescription { get; set; }

    }

    [MetadataType(typeof(CategoriesMetadata))]
    public partial class Category { }
}
