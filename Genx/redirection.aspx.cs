using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class redirection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string purifierid = Request.QueryString["purifier"];

            if (purifierid == "1")
            {
                Response.Redirect("waterpurifier.aspx");
            }
            else { Response.Redirect("airpurifier.aspx"); }


            Session["id"] = purifierid.ToString();

            //RedirectionPage();

        }
    }

    public void RedirectionPage()
    {
        if (!IsPostBack)
        {
            if (Session["id"].ToString() == "1")
            {
                Response.Redirect("waterpurifier.aspx");
            }
            else
            {
                Response.Redirect("airpurifier.aspx");
            }
        }
    }
}