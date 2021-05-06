using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class van69_Lab06e : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lkbCalculate_Click(object sender, EventArgs e)
    {
        // create variables from textbox values
        int currentOdo = Convert.ToInt32(txtCurrentOdo.Text);
        int previousOdo = Convert.ToInt32(txtPreviousOdo.Text);
        double gasAdded = Convert.ToDouble(txtGasAdded.Text);
        double gasPrice = Convert.ToDouble(txtGasPrice.Text);

        // calculate mpg, fill expense, miles travled, and cost per mile
        double mpg = Math.Round((currentOdo - previousOdo) / gasAdded, 2);
        double fillExp = Math.Round(gasAdded * gasPrice, 2);
        int mileTravled = currentOdo - previousOdo;
        double costPerMile = Math.Round(fillExp / mileTravled, 2);

        // display calculated results on page
        litMilesPerGallon.Text = "Miles per gallon: <b>" + mpg + "</b>";
        litFillExpense.Text = "Your fill expense this time: <b>" + "$" + fillExp
            + "</b>";
        litMilesTraveled.Text = "Miles traveled since last fill: <b>" + mileTravled
            + "</b>";
        litCostPerMile.Text = "Cost per mile: <b>" + "$" + costPerMile + "</b>";

    }

}