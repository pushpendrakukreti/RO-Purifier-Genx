using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;
using System.Data;
using SqlAccess;
using System.IO;
using System.Drawing.Drawing2D;

public partial class admin_AddProduct : System.Web.UI.Page
{
    Category local_category = new Category();
    SubCategory local_sucategory = new SubCategory();
    Products local_product = new Products();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Convert.ToString(Session["userid"])) && Convert.ToString(Session["logintype"]) =="Admin")
        {
            if (!IsPostBack)
            {
                BindCategory();
                string productid = Request.QueryString["id"];
                if (productid != null)
                {
                    BindProductByProductid(productid);
                }
                
                if (ViewState["ID"] != null)
                {
                    btnAddProduct.Text = "Update";
                   
                }
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
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
            dt = local_sucategory.getSubCategoryInCategoery(category);
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
    private void BindSubSubCategory(string category)
    {
        try
        {
            DataTable dt = new DataTable();
            dt = local_sucategory.getSubSubCategoryInCategoery(category);
            if (dt.Rows.Count > 0)
            {
                ddSubSubCategory.DataSource = dt;
                ddSubSubCategory.DataTextField = "MiniName";
                ddSubSubCategory.DataValueField = "MiniCategoryId";
                ddSubSubCategory.DataBind();
                ddSubSubCategory.Items.Insert(0, "--Select Sub-Category--");
            }
            else
            {
                ddSubSubCategory.Items.Clear();
            }
        }
        catch
        { }
    }

    protected void btnAddProduct_Click(object sender, EventArgs e)
    {
        if (txtProductName.Text.Length > 0)
        {
            if (string.IsNullOrEmpty(Convert.ToString(ViewState["ID"])))
            {
                try
                {
                    string categoryid = Convert.ToString(ddCategory.SelectedValue);
                    Int32 subcategoryid = 0;
                    Int32 subsubcategoryid = 0;
                    if (ddSubCategory.SelectedIndex > 0)
                    {
                        subcategoryid = Convert.ToInt32(ddSubCategory.SelectedValue);
                        if (ddSubSubCategory.SelectedIndex > 0)
                        {
                            subsubcategoryid = Convert.ToInt32(ddSubSubCategory.SelectedValue);
                        }
                    }

                    string name = txtProductName.Text.Trim();
                    string price = txtprice.Text.Trim();

                    string ImageFile = "";
                    if (UploadImage.HasFile)
                    {
                        string imgPath = "~/Upload/images/";
                        string thumbPath = "~/Upload/thumbnails/";

                        ImageFile = Path.GetFileName(Server.MapPath(UploadImage.PostedFile.FileName));
                        ImageFile = ImageFile.Replace(" ", "-");
                        ImageFile = System.DateTime.Now.ToString("yyyyMMddHHmmss") + "-" + ImageFile;
                        thumbPath = thumbPath + ImageFile;
                        System.Drawing.Bitmap bmpUploadedImage = new System.Drawing.Bitmap(UploadImage.PostedFile.InputStream);
                        //System.Drawing.Image objImage = ScaleImage(bmpUploadedImage, 170);

                        System.Drawing.Image objImage = ScaleImage(bmpUploadedImage);
                        objImage.Save(Server.MapPath(thumbPath), ImageFormat.Png);

                        imgPath = imgPath + ImageFile;
                        UploadImage.SaveAs(MapPath(imgPath));
                    }
                    else
                    {
                        ImageFile = "";
                        ImageFile = "";
                    }

                    string description = CKEditor1.Text;
                    //string date = System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                  //  string date = System.DateTime.Now.ToString("dd/mm/yyyy");

                    int success = 0;
                    success = local_product.AddNewProduct(name, price, ImageFile, ImageFile, description, subcategoryid, subcategoryid, categoryid);
                    if (success != 0)
                    {
                        clear();
                        lblMessage.ForeColor = Color.Green;
                        lblMessage.Text = "Product Added Successfully";
                        ViewState["ID"] = null;
                    }
                    else
                    {
                        lblMessage.ForeColor = Color.Red;
                        lblMessage.Text = "Product Addition Failed";
                    }
                    
            }
         
                catch (Exception ex)
                {
                    lblMessage.Text = ex.Message;
                }
            }
            else //Update Product
            {
                try
                {
                    string productid = Request.QueryString["id"];
                    string name = txtProductName.Text.Trim();
                    string price = txtprice.Text.Trim();

                    string ImageFile;
                    if (UploadImage.HasFile)
                    {
                        string imgPath = "~/Upload/images/";
                        string thumbPath = "~/Upload/thumbnails/";

                        ImageFile = Path.GetFileName(Server.MapPath(UploadImage.PostedFile.FileName));
                        ImageFile = ImageFile.Replace(" ", "-");
                        ImageFile = System.DateTime.Now.ToString("yyyyMMddHHmmss") + "-" + ImageFile;
                        thumbPath = thumbPath + ImageFile;
                        System.Drawing.Bitmap bmpUploadedImage = new System.Drawing.Bitmap(UploadImage.PostedFile.InputStream);
                        //System.Drawing.Image objImage = ScaleImage(bmpUploadedImage, 170);

                        System.Drawing.Image objImage = ScaleImage(bmpUploadedImage);
                        objImage.Save(Server.MapPath(thumbPath), ImageFormat.Png);

                        imgPath = imgPath + ImageFile;
                        UploadImage.SaveAs(MapPath(imgPath));
                    }
                    else
                    {
                        ImageFile = lblImage.Text;
                    }

                    string description = CKEditor1.Text;

                    //string date = System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                    string categoryid = Convert.ToString(ddCategory.SelectedValue);
                    Int32 subcategoryid = 0;
                    if (ddSubCategory.SelectedIndex > 0)
                    {
                        subcategoryid = Convert.ToInt32(ddSubCategory.SelectedValue);
                    }

                    int success = 0;
                    success = local_product.UpdateNewProduct(productid, name, price, ImageFile, ImageFile, description, subcategoryid, categoryid);
                    if (success != 0)
                    {
                        clear();
                        ViewState["ID"] = null;
                        btnAddProduct.Text = "Add Product";
                        lblMessage.ForeColor = Color.Green;
                        lblMessage.Text = "Product Updated Successfully";
                        Response.Redirect("~/admin/EditProduct.aspx", false);
                    }
                    else
                    {
                        lblMessage.ForeColor = Color.Red;
                        lblMessage.Text = "Product Update Failed";
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
            lblMessage.Text = "Enter Product Name";
        }
    }

    private void BindProductByProductid(string productid)
    {
        try
        {
            DataTable dt = new DataTable();
            dt = local_product.getProductByProductId(productid);
            if (dt.Rows.Count > 0)
            {
                ddCategory.SelectedValue = Convert.ToString(dt.Rows[0]["Category"]);
                ddSubCategory.SelectedValue = Convert.ToString(dt.Rows[0]["SubCategory"]);
                ddSubSubCategory.SelectedValue = Convert.ToString(dt.Rows[0]["SubSubCategory"]);
                if (ddCategory.SelectedIndex > 0)
                {
                    string category = Convert.ToString(ddCategory.SelectedValue);
                    BindSubCategory(category);
                    
                    if (ddSubCategory.SelectedIndex > 0)
                    {
                        string subcategory = Convert.ToString(ddSubCategory.SelectedValue);
                        BindSubSubCategory(subcategory);
                    }
                }
                txtProductName.Text = Convert.ToString(dt.Rows[0]["Name"]);
                txtprice.Text = Convert.ToString(dt.Rows[0]["Price"]);
                CKEditor1.Text = Convert.ToString(dt.Rows[0]["Description"]);
                lblImage.Text = Convert.ToString(dt.Rows[0]["Image"]);
                ViewState["ID"] = Convert.ToString(dt.Rows[0]["ProductId"]);
            }
        }
        catch
        { }
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
    protected void ddCategory_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (ddSubCategory.SelectedIndex > 0)
        {
            string category = Convert.ToString(ddSubCategory.SelectedValue);
            BindSubSubCategory(category);
        }
        else
        {
            ddSubSubCategory.Items.Clear();
        }
    }

    private void clear()
    {
        txtProductName.Text = "";
        CKEditor1.Text = "";
        if (ddSubCategory.SelectedIndex != -1)
        {
            ddSubCategory.SelectedIndex = 0;
        }
     }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin/EditProduct.aspx");
    }

    public static System.Drawing.Image ScaleImage1(System.Drawing.Image image, int maxImageHeight)
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

    public static System.Drawing.Image ScaleImage(System.Drawing.Image image)
    {
        //var ratio = (double)maxImageHeight / image.Height;
        var newWidth = (int)(475);
        var newHeight = (int)(340);
        var newImage = new Bitmap(newWidth, newHeight);
        using (var g = Graphics.FromImage(newImage))
        {
            g.DrawImage(image, 0, 0, newWidth, newHeight);
        }
        return newImage;
    }
    public static System.Drawing.Image ScaleImage2(System.Drawing.Image image)
    {
        //var ratio = (double)maxImageHeight / image.Height;
        var newWidth = (int)(100);
        var newHeight = (int)(100);
        var newImage = new Bitmap(newWidth, newHeight);
        using (var g = Graphics.FromImage(newImage))
        {
            g.DrawImage(image, 0, 0, newWidth, newHeight);
        }
        return newImage;
    }
}