using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Demo13__Collections_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtNewItem.Focus();
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        if (lstMain.SelectedIndex >= 0)
            lstMain.Items.RemoveAt(lstMain.SelectedIndex);
    }

    protected void btnRemoveFirst_Click(object sender, EventArgs e)
    {
        if (lstMain.Items.Count > 0)        
            lstMain.Items.RemoveAt(0);           
    }

    protected void btnRemoveLast_Click(object sender, EventArgs e)
    {
        if (lstMain.Items.Count > 0)
            lstMain.Items.RemoveAt(lstMain.Items.Count - 1);
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        lstMain.Items.Add(txtNewItem.Text);
        txtNewItem.Text = "";
        txtNewItem.Focus();
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        lstMain.Items.Clear();
    }
}