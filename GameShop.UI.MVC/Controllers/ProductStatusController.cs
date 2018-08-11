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
    public class ProductStatusController : Controller
    {
        UnitOfWork uow = new UnitOfWork();

        // GET: ProductStatus
        public ActionResult Index()
        {
            return View(uow.ProductStatusRepository.Get());
        }

        // GET: ProductStatus/Details/5
        public ActionResult Details(byte? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductStatus productStatus = uow.ProductStatusRepository.Find(id);
            if (productStatus == null)
            {
                return HttpNotFound();
            }
            return View(productStatus);
        }

        // GET: ProductStatus/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ProductStatus/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ProductStatusID,StatusName,StatusDescription")] ProductStatus productStatus)
        {
            if (ModelState.IsValid)
            {
                uow.ProductStatusRepository.Add(productStatus);
                uow.Save();
                return RedirectToAction("Index");
            }

            return View(productStatus);
        }

        // GET: ProductStatus/Edit/5
        public ActionResult Edit(byte? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductStatus productStatus = uow.ProductStatusRepository.Find(id);
            if (productStatus == null)
            {
                return HttpNotFound();
            }
            return View(productStatus);
        }

        // POST: ProductStatus/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProductStatusID,StatusName,StatusDescription")] ProductStatus productStatus)
        {
            if (ModelState.IsValid)
            {
                uow.ProductStatusRepository.Update(productStatus);
                uow.Save();
                return RedirectToAction("Index");
            }
            return View(productStatus);
        }

        // GET: ProductStatus/Delete/5
        public ActionResult Delete(byte? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductStatus productStatus = uow.ProductStatusRepository.Find(id);
            if (productStatus == null)
            {
                return HttpNotFound();
            }
            return View(productStatus);
        }

        // POST: ProductStatus/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(byte id)
        {
            uow.ProductStatusRepository.Remove(id);
            uow.Save();
            return RedirectToAction("Index");
        }

    }
}
