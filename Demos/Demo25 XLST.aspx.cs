using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo25_XLST : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddlViewSelector_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlViewSelector.SelectedValue == "CD")        
            mvwMain.SetActiveView(viwCdCollection);        
        else        
            mvwMain.SetActiveView(viwStates);
        
    }
}