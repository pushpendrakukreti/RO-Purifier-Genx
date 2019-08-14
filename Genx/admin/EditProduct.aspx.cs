using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SqlAccess;
using System.Drawing;

public partial class admin_EditProduct : System.Web.UI.Page
{
    Products local_product = new Products();
    Category local_category = new Category();
    SubCategory local_subcategory = new SubCategory();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Convert.ToString(Session["userid"])) && Convert.ToString(Session["logintype"]) == "Admin")
        {
            if (!IsPostBack)
            {
                BindgvProduct();
                if (Session["Category"] != null)
                {
                    string category = Session["Category"].ToString();
                    BindgvProductByCategory(category);
                }
                BindCategories();
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    private void BindgvProduct()
    {
        try
        {
            DataTable dt = new DataTable();
            dt = local_product.getProdtucts();
            if (dt.Rows.Count > 0)
            {
                gvProduct.DataSource = dt;
                gvProduct.DataBind();
            }
            else
            {
                gvProduct.DataSource = null;
                gvProduct.DataBind();
            }
        }
        catch
        { }
    }
    
    private void BindCategories()
    {
        DataTable dt = new DataTable();
        try
        {
            dt = local_category.getAllCategory();
            if (dt.Rows.Count > 0)
            {
                ddCategory.DataSource = dt;
                ddCategory.DataTextField = "CategoryName";
                ddCategory.DataValueField = "CategoryId";
                ddCategory.DataBind();
                ddCategory.Items.Insert(0, "Select Category");
            }
        }
        catch
        { }
    }
    
    /// <summary>
    /// 
    /// </summary>
    /// <param name="categoryid"></param>
    private void BindgvProductByCategory(string categoryid)
    {
        try
        {
            DataTable dt = new DataTable();
            dt = local_product.getProdtuctsByCateogyides(categoryid);
            if (dt.Rows.Count > 0)
            {
                gvProduct.DataSource = dt;
                gvProduct.DataBind();
            }
        }
        catch
        { }
    }
    protected void gvProduct_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            Response.Redirect("~/admin/AddProduct.aspx?id=" + e.CommandArgument);
        }
        if (e.CommandName == "Delete")
        {
            string productid = Convert.ToString(e.CommandArgument);
            local_product.DeleteProduct(productid);
            BindgvProduct();
        }
        
    }

    protected void gvProduct_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
    }
    protected void gvProduct_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvProduct.PageIndex = e.NewPageIndex;
        if (ddCategory.SelectedIndex > 0)
        {
            string categoryid = Convert.ToString(ddCategory.SelectedValue);
            BindgvProductByCategory(categoryid);
        }
        else
        {
            BindgvProduct();
        }
    }

    protected void ddCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddCategory.SelectedIndex > 0)
        {
            string categoryid = Convert.ToString(ddCategory.SelectedValue);
            BindgvProductByCategory(categoryid);
            Session["Category"] = categoryid;
        }
    }
}