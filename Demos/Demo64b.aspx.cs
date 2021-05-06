using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo64b : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        litFavColor.Text = (string) Session["van69_color"];
        litRandom.Text = ((int) Session["van69_random_number"]).ToString();
    }


}