using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo62__Viewstate_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGo_Click(object sender, EventArgs e)
    {
        int times = Convert.ToInt32(txtTimes.Text);
        string temp = "";

        for (int i = 0; i < times; i++)
        {
            temp = temp + "--- " + i + " ---\r\n";
            temp = temp + txtText.Text + "\r\n\r\n";
        }

        litResults.Text = temp;
    }
}