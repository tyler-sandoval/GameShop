using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameShop.DATA.EF.Repositories
{
    public class ProductCategoryRepository : GenericRepository<ProductCategory>
    {
        public ProductCategoryRepository(DbContext db) : base(db) { }
    }
}
