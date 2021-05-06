using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class van69_Lab08 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // when page loads for first time, assign session with unique value
        if (!IsPostBack)        
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
        
    }

    protected void lkbSend_Click(object sender, EventArgs e)
    {

        if (Session["update"].ToString() == ViewState["update"].ToString())
        {
            // if not refresh, create SQL connection
            SqlConnection myConnection;
            SqlCommand myCommand;
            int ra = 0;

            ConnectionStringSettings myConnectString = ConfigurationManager.ConnectionStrings["ConnectionDB01"];
            myConnection = new SqlConnection(myConnectString.ConnectionString);
            myConnection.Open();

            // enter the parameters for stored procedure and execute non-query
            myCommand = new SqlCommand("sp_van69InsMessages", myConnection);
            myCommand.CommandType = CommandType.StoredProcedure;

            myCommand.Parameters.Add("@pName", SqlDbType.NVarChar, 30);
            myCommand.Parameters["@pName"].Value = txtName.Text;

            myCommand.Parameters.Add("@pMessageText", SqlDbType.NVarChar, 140);
            myCommand.Parameters["@pMessageText"].Value = txtMessage.Text;

            ra = myCommand.ExecuteNonQuery();
            myConnection.Close();

            // clear the textboxes and put cursor on name textbox
            txtName.Text = "";
            txtMessage.Text = "";
            txtName.Focus();

            // refresh and databind the gridview
            grdMessages.DataBind();

            // update the session
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
        }
        else // if page refresh, clear textboxes and update gridview
        {          
            txtName.Text = "";
            txtMessage.Text = "";
            grdMessages.DataBind();
        }
    }

    protected override void OnPreRender(EventArgs e)
    {
        ViewState["update"] = Session["update"];
    }

    protected void lkbCancel_Click(object sender, EventArgs e)
    {
        // clear the textboxes and put cursor on name textbox
        txtName.Text = "";
        txtMessage.Text = "";
        txtName.Focus();
    }

    protected void lkbGo_Click(object sender, EventArgs e)
    {
        // filter gridview to rows where only the name or message contains the text
        // entered in the search textbox
        sqlMessages.SelectCommand = "SELECT [MessageID], [Name], [MessageText], [MessageDate] FROM [van69Messages] WHERE Name LIKE '%" +
            txtSearch.Text + "%' Or MessageText LIKE '%" + txtSearch.Text + "%' ORDER BY [MessageID] DESC"; 
    }

    protected void lkbClear_Click(object sender, EventArgs e)
    {
        // when user clears ths search textbox field, unfilter all gridviews to every row
        // and refresh the gridview to show everything
        txtSearch.Text = "";
        sqlMessages.SelectCommand = "SELECT [MessageID], [Name], [MessageText], [MessageDate] FROM [van69Messages] ORDER BY [MessageID] DESC";
        grdMessages.DataBind();
    }

    protected void grdMessages_PageIndexChanged(object sender, EventArgs e)
    {
        // when page index is changed and the search textbox contains a value,
        // keep the filter on rows where name and message field contains the
        // text from seach textbox field
        if (txtSearch.Text != "")
        {
            sqlMessages.SelectCommand = "SELECT [MessageID], [Name], [MessageText], [MessageDate] FROM [van69Messages] WHERE Name LIKE '%" +
            txtSearch.Text + "%' Or MessageText LIKE '%" + txtSearch.Text + "%' ORDER BY [MessageID] DESC";
        }
    }
}