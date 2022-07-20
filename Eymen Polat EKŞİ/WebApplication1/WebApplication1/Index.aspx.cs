using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IndexMetot();
            }
        }
        protected void IndexMetot()
        {

        }
        protected void btnGiris_onClick(object sender, EventArgs e)
        {
            Response.Redirect("GirisYap.aspx");
        }
        protected void btnUyelik_onClick(object sender, EventArgs e)
        {
            Response.Redirect("UyeOl.aspx");
        }

    }
}