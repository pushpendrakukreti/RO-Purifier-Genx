using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using SqlAccess;
using System.IO;
using System.Net;
using System.Text;
using System.Web.Script.Serialization;
using System.Collections.Specialized;
using System.Web.UI.HtmlControls;
using System.Drawing;


public partial class admin_AdminPage : System.Web.UI.MasterPage
{
    Category local_category = new Category();
    SubCategory local_sucategory = new SubCategory();
    Products local_product = new Products();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        BindLoginLogout();
        if (!string.IsNullOrEmpty(Session["userid"] as string))
        {
            string UserId = Session["userid"].ToString();
            BindUsername();
        }
    }

    private void BindLoginLogout()
    {
        if (!string.IsNullOrEmpty(Session["UserId"] as string))
        {
            lnkLogin.Text = "<i class='fa fa-sign-out'></i> Logout";
        }
        else
        {
            lnkLogin.Text = "<i class='fa fa-lock'></i> Login";
        }
    }
    protected void lnkLogin_Click(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Session["UserId"] as string))
        {
            lnkLogin.Text = "<i class='fa fa-sign-out'></i> Logout";
            Session.Abandon();
            Session.Clear();
            Response.Redirect("../default.aspx", false);
        }
        else
        {
            lnkLogin.Text = "<i class='fa fa-lock'></i> Login";
            Response.Redirect("~/admin/login.aspx", false);
        }
    }

    private void BindUsername()
    {
        lblUser.Text = "Hello Admin";
    }

    //private void BindUsername(string userid)
    //{
    //    try
    //    {
    //        DataTable dt = new DataTable();
    //        dt = local_category.getUserName(userid);
    //        if (dt.Rows.Count > 0)
    //        {
    //            lblUser.Text = "Hello Admin" /*+ Convert.ToString(dt.Rows[0]["Name"])*/;
    //        }
    //    }
    //    catch
    //    { }
    //}
}
