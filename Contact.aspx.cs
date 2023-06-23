using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace AspNetWebFormAsyncPOC
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["age"] = 32;
            string name = (string)Session["name"];

            var start = DateTime.Now;
            //while (DateTime.Now < start.AddSeconds(2))
            //{

            //}

        }


        [WebMethod(enableSession:false)]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string GetNameAfter2Sec()
        {

            var start = DateTime.Now;
            while (DateTime.Now < start.AddSeconds(3))
            {

            }
            return "Umar Shareef";
        }
    }
}