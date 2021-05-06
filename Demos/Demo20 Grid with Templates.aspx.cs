using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo20_Grid_with_Templates : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void grdBooks_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int row = Convert.ToInt32(e.CommandArgument);
        GridViewRow selectedRow = grdBooks.Rows[row];
        string isbn = selectedRow.Cells[1].Text;

        if (e.CommandName == "Library")
        {
            Response.Redirect("http://www.worldcat.org/search?qt=worldcat_org_all&q=" + isbn);
        }
        else if (e.CommandName == "Sell")
        {
            Response.Redirect("http://www.bookfinder.com/buyback/search/#" + isbn);
        }
        else if (e.CommandName == "Search")
        {
            Response.Redirect("http://www.google.com/search?q=" + isbn);
        }
    }
}