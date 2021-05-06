using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class van69_Lab06b : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lstAutoMaker_SelectedIndexChanged(object sender, EventArgs e)
    {
        string modelName = lstAutoMaker.SelectedItem.Text + " " + lstAutoMaker.SelectedValue;

        // change literal and hyperlink text based on user selection
        litModel.Text = modelName;
        hypEV.Text = "Click here to see " + modelName + " on Wikipedia";

        // change image and hyperlink url base on user selection
        switch (lstAutoMaker.SelectedItem.Text)
        {
            case "Audi":
                hypEV.NavigateUrl = "https://en.wikipedia.org/wiki/Audi_e-tron_(2018)";
                imgCar.ImageUrl = "Lab03_Images/Audi.jpg";
                break;
            case "BMW":
                hypEV.NavigateUrl = "https://en.wikipedia.org/wiki/BMW_i3";
                imgCar.ImageUrl = "Lab03_Images/BMW.jpg";
                break;
            case "Chevrolet":
                hypEV.NavigateUrl = "https://en.wikipedia.org/wiki/Chevrolet_Bolt";
                imgCar.ImageUrl = "Lab03_Images/Chevy.jpg";
                break;
            case "Ford":
                hypEV.NavigateUrl = "https://en.wikipedia.org/wiki/Ford_Mustang_Mach-E";
                imgCar.ImageUrl = "Lab03_Images/Ford.jpg";
                break;
            case "Honda":
                hypEV.NavigateUrl = "https://en.wikipedia.org/wiki/Honda_Clarity#Electric";
                imgCar.ImageUrl = "Lab03_Images/Honda.jpg";
                break;
            case "Hyundai":
                hypEV.NavigateUrl = "https://en.wikipedia.org/wiki/Hyundai_Kona";
                imgCar.ImageUrl = "Lab03_Images/Hyundai.jpg";
                break;
            case "Mercedes":
                hypEV.NavigateUrl = "https://en.wikipedia.org/wiki/Mercedes-Benz_EQC";
                imgCar.ImageUrl = "Lab03_Images/Mercedes.jpg";
                break;
            case "NIO":
                hypEV.NavigateUrl = "https://en.wikipedia.org/wiki/NIO_EC6";
                imgCar.ImageUrl = "Lab03_Images/NIO.jpg";
                break;
            case "Nissan":
                hypEV.NavigateUrl = "https://en.wikipedia.org/wiki/Nissan_Leaf";
                imgCar.ImageUrl = "Lab03_Images/Nissan.jpg";
                break;
            case "Tesla":
                hypEV.NavigateUrl = "https://en.wikipedia.org/wiki/Tesla_Model_S";
                imgCar.ImageUrl = "Lab03_Images/Tesla.jpg";
                break;
        }
    }
    protected void imbEV_Click(object sender, ImageClickEventArgs e)
    {
        // Redirect user to hyperlink url 
        Response.Redirect(hypEV.NavigateUrl);
    }
}