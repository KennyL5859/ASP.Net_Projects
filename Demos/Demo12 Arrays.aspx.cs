using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo12_Arrays : System.Web.UI.Page
{
    int[] values = new int[9];
    protected void Page_Load(object sender, EventArgs e)
    {
        values[0] = 1;
        values[1] = 2;
        values[2] = 4;
        values[3] = 8;
        values[4] = 16;
        values[5] = 32;
        values[6] = 64;
        values[7] = 128;
        values[8] = 256;
    }

    protected void ddlIndex_SelectedIndexChanged(object sender, EventArgs e)
    {
        int power = Convert.ToInt32(ddlIndex.SelectedValue);
        int result = values[power];
        litResults.Text = "2 to " + power + " power is " + result;
    }
}