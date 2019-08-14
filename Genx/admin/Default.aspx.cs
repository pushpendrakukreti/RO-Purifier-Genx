using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SqlAccess;
using System.Text;
using System.Drawing;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Globalization;
using System.Threading;


public partial class admin_AdminPanel : System.Web.UI.Page
{
    Products local_product = new Products();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Convert.ToString(Session["userid"])) && Convert.ToString(Session["logintype"]) == "Admin")
        {
            if (!IsPostBack)
            {
                
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void lnkExecutive_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageExecutive.aspx", false);
    }
    protected void lnkUserEnquiry_Click(object sender, EventArgs e)
    {
        Response.Redirect("Enquiry.aspx", false);
    }
    protected void lnkPersonalLoan_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManagePersonalLoan.aspx", false);
    }
    protected void lnkHomeLoan_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageHomeLoan.aspx", false);
    }
    protected void lnkCarLoan_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageCarLoan.aspx", false);
    }
    protected void lnkEducationLoan_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageEducationLoan.aspx", false);
    }
    protected void lnkPropertyLoan_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManagePropertyLoan.aspx", false);
    }
    protected void lnkCreditCardLoan_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageCreditCardLoan.aspx", false);
    }
    protected void lnkGroupLoan_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageGroupLoan.aspx", false);
    }

}