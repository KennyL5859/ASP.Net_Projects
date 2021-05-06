using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class van69_Lab06c : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // if its not post back and there is a Session value
        // select the drop down list, radio button, and listbox that
        // matches to Session value
        if (!Page.IsPostBack && Session["van69_exclamation"] != null)
            ddlExclamations.SelectedValue = (string)Session["van69_exclamation"];

        if (!Page.IsPostBack && Session["van69_adverb"] != null)
            radlAdverbs.SelectedValue = (string)Session["van69_adverb"];

        if (!Page.IsPostBack && Session["van69_noun"] != null)
            lstNouns.SelectedValue = (string)Session["van69_noun"];
    }

    protected void radAdRotator_CheckedChanged(object sender, EventArgs e)
    {
        // sets Ad Rotator view when radio button is selected
        mvwMain.SetActiveView(viwAdRotator);
    }

    protected void radQuickLinks_CheckedChanged(object sender, EventArgs e)
    {
        // sets QuickLinks view when radio button is selected
        mvwMain.SetActiveView(viwQuickLinks);
    }

    protected void radMadLibs_CheckedChanged(object sender, EventArgs e)
    {
        // sets Mad Libs view when radio button is selected
        mvwMain.SetActiveView(viwMadLibs);
    }

    protected void btnGo_Click(object sender, EventArgs e)
    {
        // if a website title is selected, then redirect to that website
        if (ddlLinks.SelectedIndex > 0)
            Response.Redirect(ddlLinks.SelectedValue);
    }

    protected void ddlExclamations_SelectedIndexChanged(object sender, EventArgs e)
    {
        // set session value to drop down list accordingly
        if (ddlExclamations.SelectedIndex > 0)
            Session["van69_exclamation"] = ddlExclamations.SelectedValue;
        else if (ddlExclamations.SelectedIndex == 0)
            Session["van69_exclamation"] = "???";
    }

    protected void radlAdverbs_SelectedIndexChanged(object sender, EventArgs e)
    {
        // set session value to selected radio button
        Session["van69_adverb"] = radlAdverbs.SelectedValue;
    }

    protected void lstNouns_SelectedIndexChanged(object sender, EventArgs e)
    {
        // if there is a selection, set session value to listbox selected value
        if (lstNouns.SelectedIndex != -1)
            Session["van69_noun"] = lstNouns.SelectedValue;
    }
}