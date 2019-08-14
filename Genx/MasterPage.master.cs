using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MasterPage : System.Web.UI.MasterPage
{
    Category local_category = new Category();
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCategoryMenu();
    }

    private void BindCategoryMenu()
    {
        try
        {
            DataTable dt = new DataTable();
            dt = local_category.getMenuCategory();
            if (dt.Rows.Count > 0)
            {
                rpMenuCategory.DataSource = dt;
                rpMenuCategory.DataBind();
            }
        }
        catch
        { }
    }

    protected void Menu_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            Repeater rplist = (Repeater)e.Item.FindControl("rpSubCategory");
            DataRowView drow = e.Item.DataItem as DataRowView;
            string categoryid = drow.Row.ItemArray[0].ToString();
            DataTable dt = new DataTable();
            dt = local_category.getMenuSubCategory(categoryid);
            if (dt.Rows.Count > 0)
            {
                rplist.DataSource = dt;
                rplist.DataBind();
            }
        }
        catch
        { }
    }

    protected void menu_ItemDataBound2(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            Repeater rplist2 = (Repeater)e.Item.FindControl("Subsubcagergory2");
            DataRowView drow2 = e.Item.DataItem as DataRowView;
            string subcategoryid = drow2.Row.ItemArray[0].ToString();
            DataTable dt2 = new DataTable();
            dt2 = local_category.getMenuSubsubCategory(subcategoryid);
            if (dt2.Rows.Count > 0)
            {
                rplist2.DataSource = dt2;
                rplist2.DataBind();
            }
        }
        catch
        { }
    }

    protected void searchresult_Click(object sender, EventArgs e)
    {
        if (searchproduct.Text=="A")
        {
            Response.Redirect("airpurifier.aspx");
        }
        else if (searchproduct.Text=="a")
        {
            Response.Redirect("airpurifier.aspx");
        }
        else if (searchproduct.Text=="Genx Air")
        {
            Response.Redirect("airpurifier.aspx");
        }
        else if (searchproduct.Text=="genx air")
        {
            Response.Redirect("airpurifier.aspx");
        }
        else if (searchproduct.Text=="genx")
        {
            Response.Redirect("product.aspx");
        }
        else if (searchproduct.Text=="Genx")
        {
            Response.Redirect("product.aspx");
        }
        else if (searchproduct.Text=="GENX")
        {
            Response.Redirect("product.aspx");
        }
        else if (searchproduct.Text.EndsWith("air purifier"))
        {
            Response.Redirect("airpurifier.aspx");
        }
        else if (searchproduct.Text.EndsWith("Air Purifier"))
        {
            Response.Redirect("airpurifier.aspx");
        }
        else
        {
            Response.Redirect("waterpurifier.aspx");
        }
    }
}
