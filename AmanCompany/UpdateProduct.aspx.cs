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
    public partial class UpdateProduct : System.Web.UI.Page
    {
        AmanEntitie db = new AmanEntitie();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var id = int.Parse(Request.QueryString["Id"]);
                var product = db.Products.Find(id);
                textName.Text = product.Name;
                TextPrice.Text = product.price.ToString();
                txtWieght.Text = product.ProductWeight.ToString();
                txtType.Text = product.Product_Type;
                TxtDate.Text = product.DelivaryDate.ToString();
                TextQuantity.Text = product.Quantity.ToString();
                
               
            }
            

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
            var id =int.Parse( Request.QueryString["Id"]);
            var product = db.Products.Find(id);
            product.Name = textName.Text;
            product.price = double.Parse(TextPrice.Text);
            product.ProductWeight = double.Parse(txtWieght.Text);
            product.Product_Type = txtType.Text;
            product.DelivaryDate = DateTime.Parse(TxtDate.Text);
            product.Quantity = int.Parse(TextQuantity.Text);
            product.Image = strImage;
            db.SaveChanges();
            Response.Redirect("SelecteProducts.aspx");

        }
    }
}