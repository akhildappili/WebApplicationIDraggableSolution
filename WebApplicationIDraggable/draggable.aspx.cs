using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationIDraggable
{
    public partial class draggable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterClientScriptInclude("jquery", Page.ResolveUrl("~/Scripts/jquery-3.4.1.js"));
        }
    }
}