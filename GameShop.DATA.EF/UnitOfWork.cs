using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GameShop.DATA.EF.Repositories;


namespace GameShop.DATA.EF
{
    public class UnitOfWork
    {
        public GameShopEntities context = new GameShopEntities();

        private CategoryRepository _categoryRepository;
        public CategoryRepository CategoryRepository
        {
            get
            {
                if (this._categoryRepository == null)
                {
                    this._categoryRepository = new CategoryRepository(context);
                }
                return _categoryRepository;
            }
        }

        private ProductCategoryRepository _productCategoryRepository;
        public ProductCategoryRepository ProductCategoryRepository
        {
            get
            {
                if (this._productCategoryRepository == null)
                {
                    this._productCategoryRepository = new ProductCategoryRepository(context);
                }
                return _productCategoryRepository;
            }
        }

        private ProductRepository _productRepository;
        public ProductRepository ProductRepository
        {
            get
            {
                if (this._productRepository == null)
                {
                    this._productRepository = new ProductRepository(context);
                }
                return _productRepository;
            }
        }

        private ProductStatusRepository _productStatusRepository;
        public ProductStatusRepository ProductStatusRepository
        {
            get
            {
                if (this._productStatusRepository == null)
                {
                    this._productStatusRepository = new ProductStatusRepository(context);
                }
                return _productStatusRepository;
            }
        }

        public void Save()
        {
            context.SaveChanges();
        }

        private bool disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    context.Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

    }
}
