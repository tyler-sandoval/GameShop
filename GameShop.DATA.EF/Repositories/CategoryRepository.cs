using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GameShop.DATA.EF.Repositories
{
    public class CategoryRepository : GenericRepository<Category>
    {
        public CategoryRepository(DbContext db) : base(db) { }
    }
}
