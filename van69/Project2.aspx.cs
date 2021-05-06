using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class van69_Project2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void ddlPrimary_SelectedIndexChanged(object sender, EventArgs e)
    {
        // when primary drop down list changes, update the secondary and
        // wards drop down list
        ddlSecondary.DataBind();
        ddlWards.DataBind();
    }

}