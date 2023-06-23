using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetWebFormAsyncPOC
{
    public partial class About : Page
    {
        public string name { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = (string)Session["name"];
            //  name = (string)Session["name"];
        }
    }
}