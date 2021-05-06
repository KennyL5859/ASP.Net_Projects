using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class van69_Lab06d : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCompute_Click(object sender, EventArgs e)
    {
        // SAMPLE RESULTS:  
        //    $400,000 at 6.5% for 30 years = $2523.81 
        //    $100,000 at 6.0% for 30 years = $599.55 

        // Should use decimal for money, but for now we will use double

        // Specify constant value - 12 payments per year
        const int PAYMENTS_PER_YEAR = 12;

        // Variable declaration and calculation
        double principal = Convert.ToDouble(txtPrincipal.Text);
        double monthlyRate = Convert.ToDouble(txtIntRate.Text) / 100 / PAYMENTS_PER_YEAR;
        int payPeriods;

        if (rblPeriod.SelectedValue == "years")
            payPeriods = Convert.ToInt32(txtPeriods.Text) * PAYMENTS_PER_YEAR;
        else
            payPeriods = Convert.ToInt32(txtPeriods.Text);

        double costPerMonth = montlyPayment(monthlyRate, payPeriods, principal);

        //Display Results
        litResult.Text = "Your mortgage payment per month is $" + String.Format("{0:0.00}", Math.Round(costPerMonth, 2));
    }

    protected void rblPeriod_SelectedIndexChanged(object sender, EventArgs e)
    {
        litPeriod.Text = rblPeriod.SelectedValue;

        if (rblPeriod.SelectedValue == "months")
        {
            rgvtxtPeriods.MinimumValue = "12";
            rgvtxtPeriods.MaximumValue = "1188";
            rgvtxtPeriods.ErrorMessage = "Mortgage length must be between 12 and 1188";
        }
        else
        {
            rgvtxtPeriods.MinimumValue = "1";
            rgvtxtPeriods.MaximumValue = "99";
            rgvtxtPeriods.ErrorMessage = "Mortgage length must be between 1 and 99";
        }
    }

    public static double montlyPayment(double monthlyInterestRate, int totalNumberOfMonths, double loanAmount)
    {
        double denominator = Math.Pow((1 + monthlyInterestRate), totalNumberOfMonths) - 1;
        return ((monthlyInterestRate + (monthlyInterestRate / denominator)) * loanAmount);
    }
}