using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo36c : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["ZipCode"] != null)
        {
            litZipCode.Text = Request.Cookies["ZipCode"].Value;
            hypWeather.NavigateUrl = "http://www.weather.com/weather/today/"
                + Request.Cookies["ZipCode"].Value;
        }
        else
        {
            litZipCode.Text = "Unknown";
            hypWeather.NavigateUrl = "http://www.weather.com/";
        }

        if (Request.Cookies["FavColor"] != null)
        {
            tabFavColor.BackColor = System.Drawing.ColorTranslator.FromHtml(Request.Cookies["FavColor"].Value);
        }
        else
        {
            tabFavColor.BackColor = System.Drawing.ColorTranslator.FromHtml("White");
        }

        
    }
}