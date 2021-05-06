using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Demos_Demo16_Stored_Procedure : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection myConnection;
        SqlCommand myCommand;
        int ra = 0;

        ConnectionStringSettings myConnectString = ConfigurationManager.ConnectionStrings["ConnectionDB01"];
        myConnection = new SqlConnection(myConnectString.ConnectionString);
        myConnection.Open();

        myCommand = new SqlCommand("sp_van69UpdEmpLastName", myConnection);
        myCommand.CommandType = CommandType.StoredProcedure;

        myCommand.Parameters.Add("@pEmpId", SqlDbType.Decimal, 8);
        myCommand.Parameters["@pEmpId"].Value = txtEmpId.Text;

        myCommand.Parameters.Add("@pLastName", SqlDbType.VarChar, 30);
        myCommand.Parameters["@pLastName"].Value = txtLastName.Text;

        ra = myCommand.ExecuteNonQuery();
        myConnection.Close();

        txtEmpId.Text = "";
        txtLastName.Text = "";
        txtEmpId.Focus();

        grdEmployees.DataBind();
        
    }
}