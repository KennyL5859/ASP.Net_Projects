using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo64__Sessions_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack && Session["van69_color"] != null)
        {
            ddlColor.SelectedValue = (string) Session["van69_color"]; ;
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        Random random = new Random();

        // all session variables need van #
        Session["van69_color"] = ddlColor.SelectedValue;
        Session["van69_random_number"] = random.Next(0, 1000);

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Session["van69_color"] = null;
        Session["van69_random_number"] = null;
    }
}