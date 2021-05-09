using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class van69_Lab10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void radPieChart_CheckedChanged(object sender, EventArgs e)
    {
        mvwMain.SetActiveView(viwPieChart);
    }

    protected void radColumnChart_CheckedChanged(object sender, EventArgs e)
    {
        mvwMain.SetActiveView(viwBarChart);
    }
}