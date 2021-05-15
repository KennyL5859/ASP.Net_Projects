using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class van69_Project4_CheckIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void imgBtnCheckIn_Click(object sender, ImageClickEventArgs e)
    {
        if (lstMembers.SelectedIndex == -1 || lstRooms.SelectedIndex == -1)
        {
            string message = "You must select a customer and room in order to check in";
            string script = "alert('" + message + "')";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            return;
        }

        // open sql connection and call CheckInGuest stored procedure
        SqlConnection myConnection;
        SqlCommand myCommand;
        int ra = 0;

        ConnectionStringSettings myConnectString = ConfigurationManager.ConnectionStrings["ConnectionDB01"];
        myConnection = new SqlConnection(myConnectString.ConnectionString);
        myConnection.Open();

        myCommand = new SqlCommand("sp_van69CheckInGuest", myConnection);
        myCommand.CommandType = CommandType.StoredProcedure;

        myCommand.Parameters.Add("@pRoomNbr", SqlDbType.VarChar, 3);
        myCommand.Parameters["@pRoomNbr"].Value = lstRooms.SelectedValue.ToString();

        myCommand.Parameters.Add("@pGuestID", SqlDbType.VarChar, 5);
        myCommand.Parameters["@pGuestID"].Value = lstMembers.SelectedValue.ToString();

        ra = myCommand.ExecuteNonQuery();
        myConnection.Close();

        // update the sql datasource in rooms list
        lstRooms.DataBind();
    }
}