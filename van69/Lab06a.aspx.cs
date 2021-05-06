using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class van69_Lab06a : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGo_Click(object sender, EventArgs e)
    {
        calMain.VisibleDate = Convert.ToDateTime(ddlMonth.SelectedValue +
            "/1/" + ddlYear.SelectedValue);
    }

    protected void chkMonday_CheckedChanged(object sender, EventArgs e)
    {
        if (chkMonday.Checked)
            calMain.FirstDayOfWeek = FirstDayOfWeek.Monday;
        else
            calMain.FirstDayOfWeek = FirstDayOfWeek.Sunday;
    }
}