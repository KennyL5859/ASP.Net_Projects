using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class van69_Lab07 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGo_Click(object sender, EventArgs e)
    {
        // when user selects "All" states, then change the SQL command to 
        // find all cities and no state filter
        if (ddlStates.SelectedIndex == 0)
        {
            sqlZipCode.SelectCommand = "SELECT * FROM [ZipCodes] WHERE ([City] LIKE '%' + @CITY + '%') ORDER BY [ZipCode]";
        }
    }
}