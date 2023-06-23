using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetWebFormAsyncPOC
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Thread.Sleep(15000);
            Session["name"] = "Umar";
            var start = DateTime.Now;
            while (DateTime.Now < start.AddSeconds(10)) 
            {
            
            }

        }
    }
}