using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using GameShop.DATA.EF;

namespace GameShop.UI.MVC.Controllers
{
    [Authorize(Roles = "Admin")]
    public class ProductCategoriesController : Controller
    {
        UnitOfWork uow = new UnitOfWork();

        // GET: ProductCategories
        public ActionResult Index()
        {
            return View(uow.ProductCategoryRepository.Get());
        }

        // GET: ProductCategories/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductCategory productCategory = uow.ProductCategoryRepository.Find(id);
            if (productCategory == null)
            {
                return HttpNotFound();
            }
            return View(productCategory);
        }

        // GET: ProductCategories/Create
        public ActionResult Create()
        {
            ViewBag.CategoryID = new SelectList(uow.CategoryRepository.Get(), "CategoryID", "CategoryName");
            ViewBag.ProductID = new SelectList(uow.ProductRepository.Get(), "ProductID", "ProductName");
            return View();
        }

        // POST: ProductCategories/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ProductCategoryID,CategoryID,ProductID")] ProductCategory productCategory)
        {
            if (ModelState.IsValid)
            {
                uow.ProductCategoryRepository.Add(productCategory);
                uow.Save();
                return RedirectToAction("Index");
            }

            ViewBag.CategoryID = new SelectList(uow.CategoryRepository.Get(), "CategoryID", "CategoryName", productCategory.CategoryID);
            ViewBag.ProductID = new SelectList(uow.ProductRepository.Get(), "ProductID", "ProductName", productCategory.ProductID);
            return View(productCategory);
        }

        // GET: ProductCategories/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductCategory productCategory = uow.ProductCategoryRepository.Find(id);
            if (productCategory == null)
            {
                return HttpNotFound();
            }
            ViewBag.CategoryID = new SelectList(uow.CategoryRepository.Get(), "CategoryID", "CategoryName", productCategory.CategoryID);
            ViewBag.ProductID = new SelectList(uow.ProductRepository.Get(), "ProductID", "ProductName", productCategory.ProductID);
            return View(productCategory);
        }

        // POST: ProductCategories/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProductCategoryID,CategoryID,ProductID")] ProductCategory productCategory)
        {
            if (ModelState.IsValid)
            {
                uow.ProductCategoryRepository.Update(productCategory);
                uow.Save();
                return RedirectToAction("Index");
            }
            ViewBag.CategoryID = new SelectList(uow.CategoryRepository.Get(), "CategoryID", "CategoryName", productCategory.CategoryID);
            ViewBag.ProductID = new SelectList(uow.ProductRepository.Get(), "ProductID", "ProductName", productCategory.ProductID);
            return View(productCategory);
        }

        // GET: ProductCategories/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductCategory productCategory = uow.ProductCategoryRepository.Find(id);
            if (productCategory == null)
            {
                return HttpNotFound();
            }
            return View(productCategory);
        }

        // POST: ProductCategories/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            uow.ProductCategoryRepository.Remove(id);
            uow.Save();
            return RedirectToAction("Index");
        }

    }
}
