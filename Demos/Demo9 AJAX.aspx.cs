using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo9_AJAX : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            lblDate.Text = DateTime.Now.ToString("M/dd/yyyy");
        }
    }

    protected void lkbShowCal_Click(object sender, EventArgs e)
    {
        if (hidShowCalFlag.Value == "1")
        {
            calSelectDate.Visible = false;
            lkbShowCal.Text = "Show Calendar";
            hidShowCalFlag.Value = "0";
        }
        else
        {
            calSelectDate.Visible = true;
            lkbShowCal.Text = "Hide Calendar";
            hidShowCalFlag.Value = "1";
        }
    }

    protected void calSelectDate_SelectionChanged(object sender, EventArgs e)
    {
        lblDate.Text = calSelectDate.SelectedDate.ToString("M/dd/yyyy");
    }
}