using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace GameShop.DATA.EF.Repositories
{
    public class ProductRepository : GenericRepository<Product>
    {
        public ProductRepository(DbContext db) : base(db) { }
    }
}
