using AmanCompany.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace AmanCompany
{
    public partial class CreateProducts : System.Web.UI.Page
    {
        AmanEntitie db = new AmanEntitie();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            string imageServerPath = string.Empty;
            string imageFolderPath = "~/ImageStorage/";
            string imageFilename = string.Empty;
            if (FileUpload1.HasFile)
            {
                string fileExtention = System.IO.Path.GetExtension(FileUpload1.FileName);
                string[] allowExtentions = { ".jpg", ".gif", ".png" };
               
                bool isValidFile = false;
                
                    for (int i = 0; i < allowExtentions.Length; i++)
                    {
                        if (fileExtention.ToLower() == allowExtentions[i])
                        {
                            isValidFile = true;
                            break;
                        }
                    }
                    if (isValidFile)
                    {
                        
                            imageFilename = Path.GetFileName(FileUpload1.FileName);
                            imageServerPath = string.Format("{0}{1}", Server.MapPath(imageFolderPath), imageFilename);
                            FileUpload1.SaveAs(imageServerPath);

                        
                   }
               
            }

            var strImage = String.Format("{0}{1}", imageFolderPath, imageFilename);
            //................
            Product product = new Product()
            {
                Name = textName.Text,
                price = double.Parse(TextPrice.Text),
                ProductWeight = double.Parse(txtWieght.Text),
                Product_Type = txtType.Text,
                DelivaryDate = DateTime.Parse(TxtDate.Text),
                Quantity = int.Parse(TextQuantity.Text),
                Image = String.Format("{0}{1}", imageFolderPath, imageFilename)
            };
            db.Products.Add(product);
            db.SaveChanges();
            //StartUpLoad();
            Response.Redirect("SelecteProducts.aspx");
        }
        //for upload pictures
        //private void StartUpLoad()
        //{
        //    //get the file name of the posted image  
        //    string imgName = FileUpload1.FileName;
        //    //sets the image path  
        //    string imgPath = "ImageStorage/" + imgName;
        //    //get the size in bytes that  

        //    int imgSize = FileUpload1.PostedFile.ContentLength;

        //    //validates the posted file before saving  
        //    if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
        //    {
        //        // 10240 KB means 10MB, You can change the value based on your requirement  
        //        if (FileUpload1.PostedFile.ContentLength > 10240)
        //        {
        //            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);
        //        }
        //        else
        //        {
        //            //then save it to the Folder  
        //            FileUpload1.SaveAs(Server.MapPath(imgPath));
        //            Image1.ImageUrl = "~/" + imgPath;
        //            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
        //        }

        //    }
    
        
    }
}