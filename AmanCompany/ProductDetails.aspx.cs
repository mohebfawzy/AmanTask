using AmanCompany.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmanCompany
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<Product> GetProduct([QueryString("Id")] int? id)
        {
            var db = new AmanEntitie();
            IQueryable<Product> poduct = db.Products;
            if (id.HasValue && id > 0)
            {
                poduct = poduct.Where(p => p.Id == id);
            }
            else
            {
                poduct = null;
            }
            return poduct;
        }
    }
}