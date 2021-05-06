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

    

</script> 