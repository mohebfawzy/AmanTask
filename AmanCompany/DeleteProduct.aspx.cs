using AmanCompany.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmanCompany
{
    public partial class DeleteProduct : System.Web.UI.Page
    {
        AmanEntitie db = new AmanEntitie();
        protected void Page_Load(object sender, EventArgs e)
        {

            var name  = Request.QueryString["Name"];
            LabDelete.Text = name;
        }

        protected void ConfirmDelete_Click(object sender, EventArgs e)
        {
            var id =int.Parse(Request.QueryString["Id"]) ;
            var product = db.Products.Find(id);
            db.Products.Remove(product);
            db.SaveChanges();
            Response.Redirect("SelecteProducts.aspx");
        }
    }
}