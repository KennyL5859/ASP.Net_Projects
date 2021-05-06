using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo17__TryCatch_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDivide_Click(object sender, EventArgs e)
    {
        int dividend;
        int divisor;
        int quotient = 0;

        try
        {
            dividend = Convert.ToInt32(txtDividend.Text);
            divisor = Convert.ToInt32(txtDivisor.Text);
            quotient = dividend / divisor;
            litResult.Text = "The quotient is " + quotient;
        }
        catch (DivideByZeroException ex)
        {
            litResult.Text = "You cannot divide by zero.<br />";
        }
        catch (FormatException ex)
        {
            litResult.Text = "You must enter two numbers.<br />";
        }
        catch (Exception ex)
        {
            litResult.Text = "An error occurred. Contact your administrator";
        }

    }
}