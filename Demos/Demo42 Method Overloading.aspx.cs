using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo42_Method_Overloading : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnCheckPrime1_Click(object sender, EventArgs e)
    {
        CheckAndUpdateLabelIfPrime(txtNumber1.Text);
    }

    protected void btnCheckPrime2_Click(object sender, EventArgs e)
    {
        CheckAndUpdateLabelIfPrime(txtNumber2.Text);
    }

    private void CheckAndUpdateLabelIfPrime(string number)
    {
        if (Demo42Prime.IsPrime(Convert.ToInt32(number)))
            litResults.Text = number + " is prime";
        else
            litResults.Text = number + " is not prime";

  

       
        
        

    }


}