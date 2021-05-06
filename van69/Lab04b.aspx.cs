/*
Name:         Kenneth Lin
Class:        CIS-2350
Assignment:   Lab #4 Spring 2021
File:         Lab04.aspx.cs
Purpose:      C# code for the webpage event handlers
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class van69_Lab04_Lab04b : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // if there is no Session created, then display ??? and first 
        // radio button value, else display the Session value
        if (Session["van69_exclamation"] != null)
            lblExclamation.Text = (string)Session["van69_exclamation"];
        else
            lblExclamation.Text = "???";

        if (Session["van69_adverb"] != null)
            lblAdverb.Text = ((string)Session["van69_adverb"]).ToLower();
        else
            lblAdverb.Text = "???";

        if (Session["van69_noun"] != null)
            lblNoun.Text = ((string)Session["van69_noun"]).ToLower();
        else
            lblNoun.Text = "???";
    }
}