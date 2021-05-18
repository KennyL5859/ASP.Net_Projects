using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Excel = Microsoft.Office.Interop.Excel;



//string message = GuestLists.Count.ToString();
//string script = "alert('" + message + "')";
//ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

public partial class van69_Project4_MemberList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // when page loads for first time, assign session with unique value
        if (!IsPostBack)
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
    }

    protected void imgBtnExcel_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["update"].ToString() == ViewState["update"].ToString())
        {
            List<GuestInfo> GuestLists = new List<GuestInfo>();
            GuestLists = GetGuestsInfo();
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());

            
        }
        else
        {

        }
    }

    private List<GuestInfo> GetGuestsInfo()
    {
        List<GuestInfo> GuestLists = new List<GuestInfo>();
        SqlConnection myConnection;
        SqlCommand myCommand;
        string myConnectString = ConfigurationManager.ConnectionStrings["ConnectionDB01"].ConnectionString;

        // open sql connection and read all available room numbers into RoomsAvailable list
        using (myConnection = new SqlConnection(myConnectString))
        {

            // read room number, guest id, and guest name into list of CheckIn class
            using (myCommand = new SqlCommand("SELECT * FROM van69GuestInfo", myConnection))
            {
                myCommand.CommandType = CommandType.Text;
                myConnection.Open();

                using (SqlDataReader sdr = myCommand.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        GuestLists.Add(new GuestInfo
                        {
                            GuestID = sdr["GuestID"].ToString(),
                            fName = sdr["FirstName"].ToString(),
                            lName = sdr["LastName"].ToString(),
                            address = sdr["StreetAddress"].ToString(),
                            city = sdr["City"].ToString(),
                            state = sdr["StateAbbr"].ToString(),
                            zip = sdr["ZipCode"].ToString(),
                            phoneNbr = sdr["PhoneNbr"].ToString(),
                            dlNbr = sdr["DLNbr"].ToString(),
                            ccNbr = sdr["CCNbr"].ToString(),
                            guestNbr = sdr["NumGuests"].ToString(),
                            email = sdr["Email"].ToString(),
                        }); 
                    }
                }
                myConnection.Close();
            }           
        }

        return GuestLists;
    }

    protected override void OnPreRender(EventArgs e)
    {
        ViewState["update"] = Session["update"];
    }
}