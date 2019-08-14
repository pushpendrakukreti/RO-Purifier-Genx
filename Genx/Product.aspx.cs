using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Product : System.Web.UI.Page
{
    //Category local_Category = new Category();
    //SubCategory local_SubCategory = new SubCategory();
    //Products local_product = new Products();
    protected void Page_Load(object sender, EventArgs e)
    {
        //string categoryid = Request.QueryString["category"];
        //string subcategoryid = Request.QueryString["subcategory"];
        //string subsubcategoryid = Request.QueryString["subsubcategory"];
        //if (subcategoryid != null)
        //{
        //    BindProductListBySubcategoryid(categoryid, subcategoryid, subsubcategoryid);
        //}
        //else
        //{
        //    string subcategoryid1 = "0";
        //    string subsubcategoryid1 = "0";
        //    BindProductListByCategoryid(categoryid, subcategoryid1, subsubcategoryid1);
        //}

    }

    //private void BindProductListBySubcategoryid(string categoryid, string subcategoryid, string subsubcategoryid)
    //{
    //    DataTable dt1 = new DataTable();
    //    DataTable dt2 = new DataTable();
    //    try
    //    {
    //        dt1 = local_product.getProductDetailsBySubcategoryid(categoryid, subcategoryid, subsubcategoryid);
    //        if (dt1.Rows.Count > 0)
    //        {
    //            dt2 = local_SubCategory.GetSubCategoryById(subcategoryid);

    //            lblSubcategoryName.Text = Convert.ToString(dt2.Rows[0]["SubName"]);

    //            rpProductList.DataSource = dt1;
    //            rpProductList.DataBind();
    //        }
    //        else
    //        {
    //            lblMessage.Text = "<br/><br/><br/>There Is No Product Found.";
    //            lblMessage.Font.Size = 20;
    //        }
    //    }

    //    catch (Exception ex)
    //    {
    //        throw new Exception(ex.Message);
    //    }
    //}

    //private void BindProductListByCategoryid(string categoryid, string subcategoryid, string subsubcategoryid)
    //{
    //    DataTable dt1 = new DataTable();
    //    DataTable dt2 = new DataTable();
    //    try
    //    {
    //        dt1 = local_product.getProductDetailsBySubcategoryid(categoryid, subcategoryid, subsubcategoryid);
    //        if (dt1.Rows.Count > 0)
    //        {
    //            dt2 = local_Category.getCategoryName(categoryid);

    //            lblSubcategoryName.Text = Convert.ToString(dt2.Rows[0]["CategoryName"]);

    //            rpProductList.DataSource = dt1;
    //            rpProductList.DataBind();
    //        }
    //        else
    //        {
    //            lblMessage.Text = "<br/><br/><br/>There Is No Product Found.";
    //            lblMessage.Font.Size = 20;
    //        }
    //    }

    //    catch (Exception ex)
    //    {
    //        throw new Exception(ex.Message);
    //    }
    //}
}