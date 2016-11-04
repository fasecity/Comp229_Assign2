using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class ThankYouPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = (string)Session["ageval"] + " is your age";
            Label2.Text = (string)Session["nameval"]+" is your name";
            Label3.Text = (string)Session["productval"] + " is your favroite product";
            Label4.Text ="$"+ (string)Session["priceval"] + " is the highest youd pay";
            Label5.Text = (string)Session["emailval"] + " is your email";
           
        }
    }
}