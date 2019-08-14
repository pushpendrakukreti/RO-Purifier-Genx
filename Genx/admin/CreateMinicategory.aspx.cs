using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using SqlAccess;
using System.IO;
using System.Text;
using System.Drawing.Imaging;

public partial class admin_CreateMinicategory : System.Web.UI.Page
{
    Category local_category = new Category();
    SubCategory local_subcategory = new SubCategory();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Convert.ToString(Session["userid"])) && Convert.ToString(Session["logintype"]) == "Admin")
        {
            if (!IsPostBack)
            {
                BindCategory();
                BindSubsubCategory();
                string subcategory = Request.QueryString["sid"];
                if (subcategory != null)
                {
                    BindSubsubCategoryById(subcategory);
                }
                if (ViewState["ID"] != null)
                {
                    btnCreateSubCategory.Text = "Update";
                }
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }


    protected void btnCreateSubCategory_Click(object sender, EventArgs e)
    {
        if (ddCategory.SelectedIndex > 0)
        {
            if (txtSubsubCategory.Text.Length > 0)
            {
                if (string.IsNullOrEmpty(Convert.ToString(ViewState["ID"])))
                {
                    try
                    {
                        string categoryid = Convert.ToString(ddCategory.SelectedValue);
                        string Subcategoryid = Convert.ToString(ddSubCategory.SelectedValue);
                        string SubsubCatName = txtSubsubCategory.Text.Trim();

                        int success = 0;
                        success = local_subcategory.AddSubsubCategory(categoryid, Subcategoryid, SubsubCatName);
                        if (success != 0)
                        {
                            clear();
                            lblMessage.ForeColor = Color.Green;
                            lblMessage.Text = "Sub-sub Category Created Successfully";
                            BindSubsubCategory();
                        }
                        else
                        {
                            lblMessage.ForeColor = Color.Red;
                            lblMessage.Text = "Sub-sub Category Creation Failed";
                        }
                    }
                    catch (Exception ex)
                    {
                        lblMessage.Text = ex.Message;
                    }
                }
                else //Update subcategory
                {
                    try
                    {
                        string categoryid = Convert.ToString(ddCategory.SelectedValue);
                        string Subcategoryid = Convert.ToString(ddSubCategory.SelectedValue);
                        string SubsubCatName = txtSubsubCategory.Text.Trim();
                        Int32 subsubid = Convert.ToInt32(ViewState["ID"]);

                        int success = 0;
                        success = local_subcategory.UpdateSubsubCategory(SubsubCatName, Subcategoryid, categoryid, subsubid);
                        if (success != 0)
                        {
                            clear();
                            lblMessage.ForeColor = Color.Green;
                            lblMessage.Text = "Sub-sub Category Updated Successfully";
                            BindSubsubCategory();
                            ViewState["ID"] = null;
                            btnCreateSubCategory.Text = "Create Sub-sub Category";
                        }
                        else
                        {
                            lblMessage.ForeColor = Color.Red;
                            lblMessage.Text = "Sub-sub Category Update Failed";
                        }
                    }
                    catch (Exception ex)
                    {
                        lblMessage.Text = ex.Message;
                    }
                }
            }
            else
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = "Enter Sub-sub Category Name";
            }
        }
        else
        {
            lblMessage.ForeColor = Color.Red;
            lblMessage.Text = "Select Category Name";
        }
    }


    private void BindCategory()
    {
        try
        {
            DataTable dt = new DataTable();
            dt = local_category.getAllCategory();
            if (dt.Rows.Count > 0)
            {
                ddCategory.DataSource = dt;
                ddCategory.DataTextField = "CategoryName";
                ddCategory.DataValueField = "CategoryId";
                ddCategory.DataBind();
                ddCategory.Items.Insert(0, "--Select Category--");
            }
        }
        catch
        { }
    }

    private void BindSubCategory(string category)
    {
        try
        {
            DataTable dt = new DataTable();
            dt = local_subcategory.getSubCategoryInCategoery(category);
            if (dt.Rows.Count > 0)
            {
                ddSubCategory.DataSource = dt;
                ddSubCategory.DataTextField = "SubName";
                ddSubCategory.DataValueField = "SubCategoryId";
                ddSubCategory.DataBind();
                ddSubCategory.Items.Insert(0, "--Select Sub-Category--");
            }
            else
            {
                ddSubCategory.Items.Clear();
            }
        }
        catch
        { }
    }



    private void clear()
    {
        txtSubsubCategory.Text = "";
        ddSubCategory.SelectedIndex = 0;
    }

    private void BindSubsubCategoryById(string subsubid)
    {
        try
        {
            DataTable dt = new DataTable();
            dt = local_subcategory.GetSubsubCategoryById(subsubid);
            if (dt.Rows.Count > 0)
            {
                ddCategory.SelectedValue = Convert.ToString(dt.Rows[0]["CategoryID"]);
                ddSubCategory.SelectedValue = Convert.ToString(dt.Rows[0]["SubCategoryID"]);
                string category = Convert.ToString(ddCategory.SelectedValue);
                BindSubCategory(category);
                txtSubsubCategory.Text = Convert.ToString(dt.Rows[0]["MiniName"]);
                ViewState["ID"] = Convert.ToString(dt.Rows[0]["MiniCategoryId"]);
            }
        }
        catch
        { }
    }


    private void BindSubsubCategory()
    {
        try
        {
            DataTable dt = new DataTable();
            dt = local_subcategory.GetSubsubCategory();
            if (dt.Rows.Count > 0)
            {
                gvSubCategory.DataSource = dt;
                gvSubCategory.DataBind();
            }
        }
        catch
        { }
    }

    protected void gvSubCategory_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            string id = Convert.ToString(e.CommandArgument);
            Response.Redirect("~/admin/CreateMiniCategory.aspx?sid=" + id);
        }
    }

    protected void gvSubCategory_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ViewState["ID"] = null;
        Response.Redirect("CreateSubsubCategory.aspx");
    }

    protected void DeleteRecord(object sender, EventArgs e)
    {
        try
        {
            int id = int.Parse((sender as Button).CommandArgument);
            int success = 0;
            success = local_subcategory.DeleteSubsubCategory(id);
            if (success != 0)
            {
                lblMessage.ForeColor = Color.Green;
                lblMessage.Text = "Sub-sub Category Deleted";
                BindSubsubCategory();
            }
            else
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = "Sub-sub Category Deltete Failed";
            }
        }
        catch (Exception ex)
        {
            lblMessage.ForeColor = Color.Red;
            lblMessage.Text = ex.Message;
        }
    }



    protected void ddCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddCategory.SelectedIndex > 0)
        {
            string category = Convert.ToString(ddCategory.SelectedValue);
            BindSubCategory(category);
        }
        else
        {
            ddSubCategory.Items.Clear();
        }
    }




    public static System.Drawing.Image ScaleImage(System.Drawing.Image image, int maxImageHeight)
    {
        var ratio = (double)maxImageHeight / image.Height;
        var newWidth = (int)(image.Width * ratio);
        var newHeight = (int)(image.Height * ratio);
        var newImage = new Bitmap(newWidth, newHeight);
        using (var g = Graphics.FromImage(newImage))
        {
            g.DrawImage(image, 0, 0, newWidth, newHeight);
        }
        return newImage;
    }
}