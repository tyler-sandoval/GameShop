using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;

namespace GameShop.UI.MVC.Utilities
{
    public class FileUtilities
    {
        public static void UploadFile(string savePath, string fileName, HttpPostedFileBase file)
        {
            file.SaveAs(savePath + fileName);
        }//end UploadFile()

        public static void DeleteFile(string path)
        {
            // get info about the specified file
            FileInfo file = new FileInfo(path);

            // check if the file exists
            if (file.Exists)
            {
                // If so delete the file
                file.Delete();
            }
        }//end DeleteFile()

        public static void ResizeImage(string savePath, string fileName, Image image, int maxImgSize, int maxThumbSize)
        {
            // Get new proportional image dimensions based off current image size and maxImageSize
            int[] newImageSizes = GetNewSize(image.Width, image.Height, maxImgSize);

            // Resize the image to the parameter values
            Bitmap newImage = DoResizeImage(newImageSizes[0], newImageSizes[1], image);

            // Save the new image to path and fileName from parameters
            newImage.Save(savePath + fileName);

            // Calculate proportional size for thumbnails
            int[] newThumbSizes = GetNewSize(newImage.Width, newImage.Height, maxThumbSize);

            // Create the thumbnail
            Bitmap newThumb = DoResizeImage(newThumbSizes[0], newThumbSizes[1], image);

            // Save the thumbnail with t_ prefix in savePath
            newThumb.Save(savePath + "t_" + fileName);

            // Clean up our service (free up memory)
            newImage.Dispose();
            newThumb.Dispose();
            image.Dispose();
        }

        public static int[] GetNewSize(int imgWidth, int imgHeight, int maxImgSize)
        {
            // Calc which dimension is being changed most and use as aspect ratio for sides
            float ratioX = (float)maxImgSize / (float)imgWidth;
            float ratioY = (float)maxImgSize / (float)imgHeight;
            float ratio = Math.Min(ratioX, ratioY);

            // Calc aspect ratio
            int[] newImgSizes = new int[2];
            newImgSizes[0] = (int)(imgWidth * ratio);
            newImgSizes[1] = (int)(imgHeight * ratio);

            // Return sizes
            return newImgSizes;
        }

        public static Bitmap DoResizeImage(int imgWidth, int imgHeight, Image image)
        {
            // Convert current format to RBG
            Bitmap newImage = new Bitmap(imgWidth, imgHeight, PixelFormat.Format24bppRgb);

            // Apply transparency if image format supports it
            newImage.MakeTransparent();

            // Set screen resolution of img to 72 dpi
            newImage.SetResolution(72, 72);

            // Perform the resize
            using (Graphics graphics = Graphics.FromImage(newImage))
            {
                graphics.CompositingQuality = CompositingQuality.HighQuality;
                graphics.InterpolationMode = InterpolationMode.HighQualityBicubic;
                graphics.SmoothingMode = SmoothingMode.HighQuality;
                graphics.DrawImage(image, 0, 0, imgWidth, imgHeight);
            }

            // Return newly resized img
            return newImage;
        }

        public static void DeleteImage(string path, string imgName)
        {
            // Retrieve info on img and tnails
            FileInfo fullImg = new FileInfo(path + imgName);
            FileInfo thumbImg = new FileInfo(path + "t_" + imgName);

            // Check to see if images exist, and if so delete them
            if (fullImg.Exists)
            {
                fullImg.Delete();
            }

            if (thumbImg.Exists)
            {
                thumbImg.Delete();
            }
        }
    }
}