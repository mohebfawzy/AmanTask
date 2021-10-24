using AmanCompany.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmanCompany
{
    public partial class SelecteProducts : System.Web.UI.Page
    {
        AmanEntitie db = new AmanEntitie();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = db.Products.ToList();
            GridView1.DataBind();

        }
    }
}