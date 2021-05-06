using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo63__Variables_ : System.Web.UI.Page
{
    double num1;
    double num2;
    double answer;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCompute_Click(object sender, EventArgs e)
    {
        num1 = Convert.ToDouble(txtNum1.Text);
        num2 = Convert.ToDouble(txtNum2.Text);
        answer = num1 + num2;

        litAnswer.Text = num1 + " plus " + num2 + " equals " + answer + ".";
    }

    protected void btnDisplay_Click(object sender, EventArgs e)
    {
        litAnswer.Text = num1 + " plus " + num2 + " equals " + answer + ".";
    }
}