using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class van69_Project3CheckOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
 
    }

    protected void imgBtnCheckout_Click(object sender, ImageClickEventArgs e)
    {       
        // prompt user if either member or movie is not selected
        if (lstMembers.SelectedIndex == -1 || lstMovies.SelectedIndex == -1)
        {
            string message = "You must select a customer and movie in order to check out";
            string script = "alert('" + message + "')";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            return;
        }

        // open sql connection and call AddMovieRental stored procedure
        SqlConnection myConnection;
        SqlCommand myCommand;
        int ra = 0;

        ConnectionStringSettings myConnectString = ConfigurationManager.ConnectionStrings["ConnectionDB01"];
        myConnection = new SqlConnection(myConnectString.ConnectionString);
        myConnection.Open();

        myCommand = new SqlCommand("sp_van69AddMovieRental", myConnection);
        myCommand.CommandType = CommandType.StoredProcedure;

        myCommand.Parameters.Add("@pCardNbr", SqlDbType.VarChar, 6);
        myCommand.Parameters["@pCardNbr"].Value = lstMembers.SelectedValue.ToString();

        myCommand.Parameters.Add("@pMovieNbr", SqlDbType.Decimal, 6);
        myCommand.Parameters["@pMovieNbr"].Value = Convert.ToDecimal(lstMovies.SelectedValue);

        ra = myCommand.ExecuteNonQuery();
        myConnection.Close();
        
        // unchecks the listbox once a movie has been added
        lstMembers.SelectedIndex = -1;
        lstMovies.SelectedIndex = -1;

    }
}