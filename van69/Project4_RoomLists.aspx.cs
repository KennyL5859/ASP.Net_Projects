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
using System.Net.Mail;
using System.Net;
using System.IO;


//string x = CheckedInRooms.Count.ToString();
//string message = x.ToString();
//string script = "alert('" + message + "')";
//ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

public class CheckIn
{
    public int RoomNbr { get; set; }
    public string GuestID { get; set; }
    public string GuestName { get; set; }

    public CheckIn()
    {
    }
}

public class Customer
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string RoomNbr { get; set; }
    public string EmailAddr { get; set; }

    public Customer()
    {

    }
}

public partial class van69_Project4_RoomLists : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // when page loads for first time, assign session with unique value
        if (!IsPostBack)
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());

        UpdateRoomGrids();
   
    }

    protected void grdCheckInMembers_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (Session["update"].ToString() == ViewState["update"].ToString())
        {
            List<Customer> customerLists = new List<Customer>();
            customerLists = LoadCustListFromSQL();            

            int row = Convert.ToInt32(e.CommandArgument);
            GridViewRow selectedRow = grdCheckInMembers.Rows[row];
            Customer selectedCustomer = customerLists[row];

            if (e.CommandName == "CheckOut")
            {
                CheckOutRooms(selectedCustomer);                
                grdCheckInMembers.DataBind();
                Response.Redirect(Request.RawUrl);
            }

            // update the session
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());          
        
        }
        else
        {
            grdCheckInMembers.DataBind();
        }
    }

    private void UpdateRoomGrids()
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


        RoomsAvailable = GetAvailRoomNbrs();
        CheckedInRooms = GetCheckedInRoomsInfo();


        // loop thru all rooms, if available make blue else make red and put occupant name
        for (int i = 0; i < AllRoomsList.Count; i++)
        {
            if (RoomsAvailable.Contains(AllRoomsList[i]))
            {
                string RoomID = "f" + AllRoomsList[i].ToString();
                HtmlTableCell td = (HtmlTableCell)FindControlRecursive(Page, RoomID);
                td.BgColor = "#03dffc";
            }
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

    private List<int> GetAvailRoomNbrs()
    {
        List<int> RoomsAvailable = new List<int>();
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
        }
        return RoomsAvailable;
    }

    private List<CheckIn> GetCheckedInRoomsInfo()
    {
        List<CheckIn> CheckedInRooms = new List<CheckIn>();
        SqlConnection myConnection;
        SqlCommand myCommand;
        string myConnectString = ConfigurationManager.ConnectionStrings["ConnectionDB01"].ConnectionString;

        // open sql connection and read all available room numbers into RoomsAvailable list
        using (myConnection = new SqlConnection(myConnectString))
        {       

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
        return CheckedInRooms;
    }

    private List<Customer> LoadCustListFromSQL()
    {
        List<Customer> customerLists = new List<Customer>();

        SqlConnection myConnection;
        SqlCommand myCommand;
        string myConnectString = ConfigurationManager.ConnectionStrings["ConnectionDB01"].ConnectionString;

        // load customer contact view into a list of customer objects
        using (myConnection = new SqlConnection(myConnectString))
        {
            using (myCommand = new SqlCommand("SELECT FirstName, LastName, RoomNbr, Email FROM van69GuestContactView", myConnection))
            {
                myCommand.CommandType = CommandType.Text;
                myConnection.Open();

                using (SqlDataReader sdr = myCommand.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customerLists.Add(new Customer
                        {
                            FirstName = sdr["FirstName"].ToString(),
                            LastName = sdr["LastName"].ToString(),
                            RoomNbr = sdr["RoomNbr"].ToString(),
                            EmailAddr = sdr["Email"].ToString()
                        });
                    }
                }
                myConnection.Close();
            }
        }
        return customerLists;
    }

    protected override void OnPreRender(EventArgs e)
    {
        ViewState["update"] = Session["update"];
    }

    private void CheckOutRooms(Customer selectedCustomer)
    {
        SqlConnection myConnection;
        SqlCommand myCommand;
        string myConnectString = ConfigurationManager.ConnectionStrings["ConnectionDB01"].ConnectionString;

        using (myConnection = new SqlConnection(myConnectString))
        using (myCommand = myConnection.CreateCommand())
        {
            myConnection.Open();
            myCommand.CommandText = "DELETE FROM van69CheckIn WHERE RoomNbr = @RoomNbr";
            myCommand.Parameters.AddWithValue("@RoomNbr", selectedCustomer.RoomNbr);
            myCommand.ExecuteNonQuery();
        }
    }

    //private void SendEmail(Customer customer)
    //{
    //    // if there is no email for customer, then warn the user
    //    if (customer.EmailAddr == "")
    //    {
    //        string message = "This is no email for this customer";
    //        string script = "alert('" + message + "')";
    //        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
    //        return;
    //    }

    //    // dictionary with floor level words
    //    Dictionary<int, string> FloorLevels = new Dictionary<int, string>();
    //    FloorLevels.Add(1, "1st");
    //    FloorLevels.Add(2, "2nd");
    //    FloorLevels.Add(3, "3rd");
    //    FloorLevels.Add(4, "4th");
    //    FloorLevels.Add(5, "5th");
    //    FloorLevels.Add(6, "6th");     

    //    // write subject and get floor number in words
    //    string subject = "Checked in to room " + customer.RoomNbr;
    //    int floorNbr = Convert.ToInt32(customer.RoomNbr.ToCharArray()[0].ToString());
    //    string floorWord = FloorLevels[floorNbr];

    //    // message body
    //    string body = customer.FirstName + "," + "<br/><br/>" + 
    //        "Welcome to Holiday Inn Express, you have checked into room " + customer.RoomNbr + "."
    //        + " Room " + customer.RoomNbr + " is located on the " + floorWord + " floor.<br/>" +
    //        "Thank you for choosing Holiday Inn Express and we hope you enjoy your stay."
    //        + "<br/><br/><br/>" + "Best Regards," + "<br/>" + "Holiday Inn Express" + "<br/>"
    //        + "1-888-586-5869";

    //    string to = customer.EmailAddr;
    //    string from = "holidayinncheckin@gmail.com";
    //    MailMessage msg = new MailMessage(from, to);

    //    msg.Subject = subject;
    //    msg.Body = body;
    //    msg.IsBodyHtml = true;
    //    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
    //    System.Net.NetworkCredential credential =
    //        new System.Net.NetworkCredential("holidayinncheckin@gmail.com", "dnya xanj zjbn yoer");

    //    client.EnableSsl = true;
    //    client.UseDefaultCredentials = false;
    //    client.Credentials = credential;

    //    // try sending the email, prompt user if there is an error
    //    try
    //    {
    //        client.Send(msg);
    //    }
    //    catch (Exception ex)
    //    {
    //        string error = "Error sending message, call your administrator";
    //        string script2 = "alert('" + error + "')";
    //        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script2, true);
    //        return;
    //    }

    //    // prompt user if email successfully sent
    //    string success = "Email successfully sent";
    //    string script3 = "alert('" + success + "')";
    //    ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script3, true);
    //}
}