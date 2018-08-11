using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameShop.DATA.EF.Repositories
{
    public class ProductStatusRepository : GenericRepository<ProductStatus>
    {
        public ProductStatusRepository(DbContext db) : base(db) { }
    }
}
