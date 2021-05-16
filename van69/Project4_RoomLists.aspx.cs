using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class van69_Project4_RoomLists : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        // create a list of rooms available and all rooms in hotel
        List<int> RoomsAvailable = new List<int>();
        List<int> AllRoomsList = new List<int>();

        // create a list of CheckIn class
        List<CheckIn> CheckedInRooms = new List<CheckIn>();

        // list that contains all the room numbers
        AllRoomsList.AddRange(new int[] {101, 110, 115, 165, 205, 211, 255, 269, 302,
                                        305, 331, 358, 402, 409, 485, 490, 515, 525,
                                        555, 596, 605, 620, 630, 699});


        SqlConnection myConnection;
        SqlCommand myCommand;
        string myConnectString = ConfigurationManager.ConnectionStrings["ConnectionDB01"].ConnectionString;

        // open sql connection and read all available room numbers into RoomsAvailable list
        using (myConnection = new SqlConnection(myConnectString))
        {
            using (myCommand = new SqlCommand("SELECT RoomNbr FROM van69RoomAvailView", myConnection))
            {           
                myCommand.CommandType = CommandType.Text;
                myConnection.Open();

                using (SqlDataReader sdr = myCommand.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        RoomsAvailable.Add(Convert.ToInt32(sdr["RoomNbr"]));       
                    }
                }

                myConnection.Close();
            }

            // read room number, guest id, and guest name into list of CheckIn class
            using (myCommand = new SqlCommand("SELECT RoomNbr, GuestID, FullName FROM van69CheckInView", myConnection))
            {
                myCommand.CommandType = CommandType.Text;
                myConnection.Open();

                using (SqlDataReader sdr = myCommand.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        CheckedInRooms.Add(new CheckIn
                        {
                            RoomNbr = Convert.ToInt32(sdr["RoomNbr"]),
                            GuestID = sdr["GuestID"].ToString(),
                            GuestName = sdr["FullName"].ToString()
                        });
                    }
                }
                myConnection.Close();
            }

        }


        //string x = CheckedInRooms.Count.ToString();
        //string message = x.ToString();
        //string script = "alert('" + message + "')";
        //ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

        //string test = "f" + "302";
        //HtmlTableCell lbl = (HtmlTableCell)FindControlRecursive(Page, test);
        //lbl.BgColor = "blue";


        for (int i = 0; i < AllRoomsList.Count; i++)
        {
            // if room is available, make is light blue
            if (RoomsAvailable.Contains(AllRoomsList[i]))
            {
                string RoomID = "f" + AllRoomsList[i].ToString();
                HtmlTableCell td = (HtmlTableCell)FindControlRecursive(Page, RoomID);
                td.BgColor = "#03dffc";
            }
            // make is red and display the current occupant name
            else
            {
                string RoomID = "f" + AllRoomsList[i].ToString();
                int roomNbr = AllRoomsList[i];
                HtmlTableCell td = (HtmlTableCell)FindControlRecursive(Page, RoomID);         
                var CheckInObj = CheckedInRooms.FirstOrDefault(x => x.RoomNbr == roomNbr);
                td.BgColor = "#e6296e";
                td.InnerHtml = roomNbr.ToString() + "<br/>" + CheckInObj.GuestName;
            }
        }
        
    }

    // find the controls on page recursively 
    private Control FindControlRecursive(Control rootControl, string controlID)
    {
        if (rootControl.ID == controlID) return rootControl;

        foreach (Control controlToSearch in rootControl.Controls)
        {
            Control controlToReturn = FindControlRecursive(controlToSearch, controlID);
            if (controlToReturn != null) return controlToReturn;
        }
        return null;
    }


}