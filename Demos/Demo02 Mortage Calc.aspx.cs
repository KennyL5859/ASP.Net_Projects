using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo02_Mortage_Calc : System.Web.UI.Page
{
    protected void btnCompute_Click(object sender, System.EventArgs e)
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

    protected void rblPeriod_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        litPeriod.Text = rblPeriod.SelectedValue;
    }


    public static double montlyPayment(double monthlyInterestRate, int totalNumberOfMonths, double loanAmount)
    {
        double denominator = Math.Pow((1 + monthlyInterestRate), totalNumberOfMonths) - 1;
        return ((monthlyInterestRate + (monthlyInterestRate / denominator)) * loanAmount);
    }

}