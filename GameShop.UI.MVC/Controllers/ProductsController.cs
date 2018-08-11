using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using GameShop.DATA.EF;
using System.IO;
using System.Drawing;
using GameShop.UI.MVC.Utilities;

namespace GameShop.UI.MVC.Controllers
{
 
    public class ProductsController : Controller
    {
        UnitOfWork uow = new UnitOfWork();

        // GET: Products
        public ActionResult Index()
        {
            var products = uow.ProductRepository.Get(includeProperties: "ProductStatus");
            return View(products.ToList());
        }

        // GET: Products/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = uow.ProductRepository.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // GET: Products/Create
        [Authorize(Roles = "Admin")]
        public ActionResult Create()
        {
            ViewBag.ProductStatusID = new SelectList(uow.ProductStatusRepository.Get(), "ProductStatusID", "StatusName");
            return View();
        }

        // POST: Products/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [Authorize(Roles = "Admin")]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ProductID,ProductName,ProductDescription,Price,UnitsInStock,ProductImage,ProductStatusID,IsActive")] Product product, HttpPostedFileBase ProductImage)
        {
            if (ModelState.IsValid)
            {
                string imageName = "";

                if (ProductImage != null)
                {
                    string imgExt = Path.GetExtension(ProductImage.FileName).ToLower();
                    string[] allowedExtensions = { ".png", ".jpg", ".jpeg", ".gif" };

                    if (allowedExtensions.Contains(imgExt))
                    {
                        // We can save the image under numerous file names.
                        // To save with the original uploaded image name:
                        imageName = Path.GetFileName(ProductImage.FileName);

                        // To save with a timestamp and original file name:
                        // imageName = DateTime.Now.ToString("yyyyMMddHHmmssfff") + "_" + Path.GetFileName(BookImage.FileName);

                        // To save with a GUID as the file name:
                        // imageName = Guid.NewGuid().ToString() + imgExt;

                        // Set the path on the server to where the image is to be stored
                        string savePath = Server.MapPath("~/Content/assets/images/products/");

                        // This code will upload the image but will not resize or create a thumbnail of the image so we are going
                        // to use a different method to manipulate the images
                        //FileUtilities.UploadFile(savePath, imageName, BookImage);

                        // Convert HttpPostedFileBase to Image type
                        Image convertedImage = Image.FromStream(ProductImage.InputStream);

                        // We are going to resize the images to 500px and make thumbnails that are 100px
                        FileUtilities.ResizeImage(savePath, imageName, convertedImage, 500, 100);
                    }
                }
                product.ProductImage = imageName;
                uow.ProductRepository.Add(product);
                uow.Save();
                return RedirectToAction("Index");
            }

            ViewBag.ProductStatusID = new SelectList(uow.ProductStatusRepository.Get(), "ProductStatusID", "StatusName", product.ProductStatusID);
            return View(product);
        }

        // GET: Products/Edit/5
        [Authorize(Roles = "Admin")]
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = uow.ProductRepository.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            ViewBag.ProductStatusID = new SelectList(uow.ProductStatusRepository.Get(), "ProductStatusID", "StatusName", product.ProductStatusID);
            return View(product);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [Authorize(Roles = "Admin")]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProductID,ProductName,ProductDescription,Price,UnitsInStock,ProductImage,ProductStatusID,IsActive")] Product product)
        {
            if (ModelState.IsValid)
            {
                uow.ProductRepository.Update(product);
                uow.Save();
                return RedirectToAction("Index");
            }
            ViewBag.ProductStatusID = new SelectList(uow.ProductStatusRepository.Get(), "ProductStatusID", "StatusName", product.ProductStatusID);
            return View(product);
        }

        // GET: Products/Delete/5
        [Authorize(Roles = "Admin")]
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = uow.ProductRepository.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Products/Delete/5
        [Authorize(Roles = "Admin")]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Product product = uow.ProductRepository.Find(id);
            string savePath = Server.MapPath("~/Content/assets/products/");
            FileUtilities.DeleteImage(savePath, product.ProductImage);

            uow.ProductRepository.Remove(id);
            uow.Save();
            return RedirectToAction("Index");
        }

    }
}
