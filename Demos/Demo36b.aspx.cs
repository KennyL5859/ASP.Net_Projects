using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo36b : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        HttpCookie zipCookie = new HttpCookie("ZipCode", txtZipCode.Text);
        zipCookie.Expires = DateTime.Now.AddYears(1);
        Response.Cookies.Add(zipCookie);

        HttpCookie favColor = new HttpCookie("FavColor", ddlFavColor.SelectedValue);
        favColor.Expires = DateTime.Now.AddYears(1);
        Response.Cookies.Add(favColor);

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtZipCode.Text = "";
        ddlFavColor.SelectedIndex = -1;
    }
}