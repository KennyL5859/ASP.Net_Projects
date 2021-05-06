using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo50Process : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        litName.Text = Request.Form["first_name"] + Request.Form["last_name"];
        litEmail.Text = Request.Form["email"];
        litTelephone.Text = Request.Form["telephone"];
        litComments.Text = Request.Form["comments"];
    }
}