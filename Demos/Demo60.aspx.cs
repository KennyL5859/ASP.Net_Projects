using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Demos_Demo60 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) // If page loads for first time
        {
            // Assign the Session["update"] with unique value
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());

            // Set status label control
            lblStatus.Text = "HTTP Get";
            lblStatus.ForeColor = Color.FromName("Blue");
        }
    }

    protected void btnButton_Click(object sender, EventArgs e)
    {
        // If page not Refreshed
        if (Session["update"].ToString() == ViewState["update"].ToString())
        {
            // Set status label control
            lblStatus.Text = "HTTP Post: Legitimate Button Press";
            lblStatus.ForeColor = Color.FromName("Green");

            // After the event/ method, again update the session 
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
        }
        else // If Page Refreshed
        {
            // Set status label control
            lblStatus.Text = "HTTP Post: Browser Refresh";
            lblStatus.ForeColor = Color.FromName("Red");
        }
    }

    protected override void OnPreRender(EventArgs e)
    {
        ViewState["update"] = Session["update"];
    }
}