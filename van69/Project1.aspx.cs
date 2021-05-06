using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class van69_Project1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void rblTempConvert_SelectedIndexChanged(object sender, EventArgs e)
    {
        // changes the validation range and error message based on 
        // radiobutton selection
        if (rblTempConvert.SelectedIndex == 1)
        {
            rgvtxtStartingTemp.MinimumValue = "-100";
            rgvtxtStartingTemp.MaximumValue = "400";
            rgvtxtEndingTemp.MinimumValue = "-100";
            rgvtxtEndingTemp.MaximumValue = "400";
            rgvtxtStartingTemp.ErrorMessage = "Starting temperature must be between -100 and 400.";
            rgvtxtEndingTemp.ErrorMessage = "Ending temperature must be between -100 and 400.";
        }
    }

    protected void btnGenerate_Click(object sender, EventArgs e)
    {
        string results = "";
        double increment;      

        // is increment textbox is blank, then set it to 1
        // else set it to textbox value
        if (String.IsNullOrWhiteSpace(txtIncrement.Text))
            increment = 1.0;
        else
            increment = Convert.ToDouble(txtIncrement.Text);

        // convert start and end temp to double variables
        double startTemp = Convert.ToDouble(txtStartingTemp.Text);
        double endTemp = Convert.ToDouble(txtEndingTemp.Text);      

        
        if (rblTempConvert.SelectedIndex == 0)
        {
            // if user selects Celsisu to Fahrenheit, then add header below
            results = "Celsius".PadLeft(10) + "Fahrenheit".PadLeft(15) + "\r\n";
            results += "----------" + "----------".PadLeft(15) + "\r\n";

            // loop from start to end by increment and display degrees
            // in celsius and calculated fahrenheit
            for (double i = startTemp; i <= endTemp; i+=increment)
            {
                results += String.Format("{0:#,0.000}", i).PadLeft(10) + 
                    celsiusToFahrenheit(i).PadLeft(15) + "\r\n";
            }
        }
        else
        {
            // if user selects Fahrenheit to Celsius, then add header below
            results = "Fahrenheit".PadLeft(10) + "Celsius".PadLeft(15) + "\r\n";
            results += "----------" + "----------".PadLeft(15) + "\r\n";

            // loop from start to end by increment and display degrees
            // in fahrenheit and calculated celsius
            for (double i = startTemp; i <= endTemp; i+=increment)
            {
                results += String.Format("{0:#,0.000}", i).PadLeft(10) +
                    fahrenheitToCelsius(i).PadLeft(15) + "\r\n";
            }
        }
        
        // set literal to results generated above
        litResults.Text = results;
    }

    private static string celsiusToFahrenheit(double temp)
    {
        // method to convert celsius to fahrenheit 
        double fahrenheit = (temp * 9 / 5) + 32;
        return String.Format("{0:#,0.000}", fahrenheit);
    }

    private static string fahrenheitToCelsius(double temp)
    {
        // method to convert fahrenheit to celsius
        double celsius = (temp - 32) * 5 / 9;
        return String.Format("{0:#,0.000}", celsius);
    }
}