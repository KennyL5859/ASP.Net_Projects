using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

/*
Name:         Kenneth Lin
Class:        CIS-2350
Assignment:   Lab #2 Spring 2021
File:         Lab02.aspx.cs
Purpose:      C# code for the webpage event handlers
*/

public partial class van69_Lab02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        // update the label with the text from textbox
        lblDisplayText.Text = txtUserEntry.Text;
    }

    protected void ddlForeColor_SelectedIndexChanged(object sender, EventArgs e)
    {
        // change text forecolor when selected index changes
        lblDisplayText.ForeColor = Color.FromName(ddlForeColor.SelectedValue);
    }

    protected void ddlBackgroundColor_SelectedIndexChanged(object sender, EventArgs e)
    {
        // change text background color when selected index changes
        lblDisplayText.BackColor = Color.FromName(ddlBackgroundColor.SelectedValue);
    }

    protected void ddlFontSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        // changes font size when selected index changes
        lblDisplayText.Font.Size = FontUnit.Parse(ddlFontSize.SelectedValue);
    }

    protected void chkBold_CheckedChanged(object sender, EventArgs e)
    {
        // changes the font to bold or not
        lblDisplayText.Font.Bold = chkBold.Checked;
    }

    protected void chkItalicized_CheckedChanged(object sender, EventArgs e)
    {
        // changes the font to italic or not
        lblDisplayText.Font.Italic = chkItalicized.Checked;
    }

    protected void chkVisible_CheckedChanged(object sender, EventArgs e)
    {
        // changes visibility of text
        lblDisplayText.Visible = chkVisible.Checked;
    }
}