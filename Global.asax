<%@ Application Language="C#" %>


<script runat="server">

    void Application_AcquireRequestState(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.Private);
    }

    void Application_PostRequestHandlerExecute(object sender, EventArgs e)
    {

        if (Response.ContentType.IndexOf("text/html") != -1)
            Response.ContentType = "application/xhtml+xml; charset=utf-8";
    }

    /*
    // fires right before yellow screen of death
    void Application_Error(object sender, EventArgs e)
    {
        Exception ex = Server.GetLastError();

        string msg = "Application Error\r\n";
        msg += "Page: " + Request.ServerVariables["PATH_INFO"] +"\r\n";
        msg += "Errir: " + ex.ToString() +"\r\n";

        WriteToLog(msg);

        Response.Write("We encountered an internal error. Our staff has been notified.");
        Response.Flush();
        Response.End();
    }

    // write to log file
    void WriteToLog(string s)
    {
        string LogName = Server.MapPath("~/") + "EventLog" + DateTime.Now.ToString("yyyyMMdd") + ".txt";

        System.IO.StreamWriter w = System.IO.File.AppendText(LogName);

        w.Write("\r\n\r\n");
        w.Write("-------------------------------------------------\r\n");
        w.Write("Date: " + DateTime.Now.ToString("MMM d yyyy, HH:mm:ss") + "\r\n");
        w.Write(s);

        w.Close();
    }

    */


</script> 