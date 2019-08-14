using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using SqlAccess;
using System.Data.SqlClient;
using System.Collections;

/// <summary>
/// Summary description for Products
/// </summary>
public class Products
{
    //home page 
    public DataTable getProdtuctsBySubCategory(string subcategory)
    {
        try
        {
            string query = @"Select t_Product.ProductId, Name, [Description], Price, [Image], Thumbnail, SKUCode, Discount FROM t_Product INNER JOIN t_ProductCategory ON t_Product.ProductId=t_ProductCategory.ProductId 
            WHERE t_ProductCategory.SubCategoryId='" + subcategory + "' order by t_Product.ProductId desc";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    //admin
    public DataTable getProdtucts()
    {
        try
        {
            string query = @"Select ProductId, Name, Price, [Description], [Image], Thumbnail FROM t_Product order by ProductId desc";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    public DataTable getProdtuctsByCateogyides(string categoryid)
    {
        try
        {
            string query = @"Select p.ProductId,  p.Name, [Description], [Image], Thumbnail FROM t_Product p inner join t_ProductCategory pc on p.ProductId= pc.ProductId where pc.CategoryId='"+ categoryid + "'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getProdtuctsByCatidndproid(string categoryid, string productid)
    {
        try
        {
            string query = @"Select p.ProductId,  p.Name, [Description], [Image], Thumbnail, pc.CategoryId FROM t_Product p inner join t_ProductCategory pc on p.ProductId= pc.ProductId where pc.CategoryId='" + categoryid + "' And p.ProductId='"+ productid + "'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getProdtuctsByProductId(string productid)
    {
        try
        {
            string query = @"select p.ProductId, Name, [Description], Price,convert(decimal(18,2), Price - (Price * Discount)/100)as discoutprice, [Image], Thumbnail, (case when IsActive=1 then 'Active' when IsActive=0 then 'Not Active' end)as Active, 
SKUCode, Discount, DateAdded, Brand, Modelno, Capacity, Producttype, q.Quantity FROM t_Product p inner join t_Quantity q on p.ProductId= q.ProductId where p.ProductId='" + productid + "'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public int AddNewProduct(string name, string price, string image, string thumbnail, string description, Int32 subsubcategoryid, Int32 subcategoryid, string categoryid)
    {
        try
        {
            int success = 0;
            success = MySqlDataAccess.ExecuteNonQuery(MySqlDataAccess.ConnectionString, CommandType.StoredProcedure, "ProAddProduct", new SqlParameter("@Name", name), new SqlParameter("@Price", price), new SqlParameter("@Image", image), new SqlParameter("@Thumbnail", thumbnail), new SqlParameter("@Description", description), new SqlParameter("@SubSubCategoryId", subsubcategoryid), new SqlParameter("@SubCategoryId", subcategoryid), new SqlParameter("@CategoryId", categoryid));
            return success;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getProductByProductId(string Productid)
    {
        try
        {
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.StoredProcedure, "ProGetProductById", new SqlParameter("@ProductId", Productid));
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    
    public DataTable getProductDescriptionById(string Productid)
    {
        try
        {
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.StoredProcedure, "ProGetProductDescriptionById", new SqlParameter("@ProductId", Productid));
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public int UpdateNewProduct(string productid, string name, string price, string image, string thumbnail, string description, Int32 subcategoryid, string categoryid)
    {
        try
        {
            int success = 0;
            success = MySqlDataAccess.ExecuteNonQuery(MySqlDataAccess.ConnectionString, CommandType.StoredProcedure, "ProUpdateProduct", new SqlParameter("@ProductId", productid), new SqlParameter("@Price", price), new SqlParameter("@Name", name), new SqlParameter("@Image", image), new SqlParameter("@Thumbnail", thumbnail), new SqlParameter("@Description", description), new SqlParameter("@Subcategoryid", subcategoryid), new SqlParameter("@CategoryId", categoryid));
            return success;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    public int DeleteProduct(string Productid)
    {
        try
        {
            int result;
            result = MySqlDataAccess.ExecuteNonQuery(MySqlDataAccess.ConnectionString, CommandType.StoredProcedure, "ProDeleteProduct", new SqlParameter("@ProductId", Productid));
            return result;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getProductDescriptionImg(string productid)
    {
        try
        {
            string query = @"Select ProductId, Thumbnail, [Image], BackImage, LeftImage, RightImage FROM t_Product where ProductId='" + productid + "'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getDefaultProducts()
    {
        try
        {
            string query = @"Select ProductId, Name, [Description], Price, [Image], Thumbnail FROM t_Product";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    
    public DataTable getProductCategory()
    {
        try
        {
            string query = @"Select c.CategoryID, c.CategoryName, count(p.ProductId) as product FROM t_Category c inner JOIN t_ProductCategory p ON c.CategoryId=p.CategoryId GROUP BY c.CategoryID, c.CategoryName";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    //Product Details

     public DataTable getSubCategoryNameById(string subcategoryid)
    {
        try
        {
            string query = @"Select p.ProductId, p.Name, Image, Thumbnail, Description, SubCategoryId FROM t_Product p inner join t_ProductCategory pc on p.ProductId=pc.ProductId where pc.SubCategoryId='" + subcategoryid + "'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

     public DataTable getAllProductCategoryList()
    {
        try
        {
            //string query = @"Select ProductId, Name, Price, Image, Thumbnail, Description, DateAdded from t_Product";
            string query = @"Select distinct top 10 a.ProductId, a.Name, a.Thumbnail,  v.SubCategoryId from t_Product a, t_ProductCategory v where a.Productid = v.Productid order by a.Name";

            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getProductDetailsBySubcategoryid(string categoryid, string subcategoryid, string subsubcategoryid)
    {
        try
        {
            string query = @"Select p.ProductId, p.Name, Image, Thumbnail, Description, CategoryId, SubCategoryId FROM t_Product p inner join t_ProductCategory pc on p.ProductId=pc.ProductId where pc.CategoryId='" + categoryid + "' And pc.SubCategoryId='" + subcategoryid+ "' And pc.SubSubCategoryId order by p.ProductId desc";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getProductDetailsByProductid(string productid)
    {
        try
        {
            //string query = @"Select ProductId, Name, Image, Thumbnail, Description FROM t_Product Where ProductId='" + productid + "'";
            string query = @"Select p.ProductId,  p.Name, [Description], [Image], Thumbnail, pc.CategoryId, pc.SubCategoryId, Subname FROM t_Product p inner join t_ProductCategory pc on p.ProductId= pc.ProductId inner join t_SubCategory s on s.SubCategoryId= pc.SubCategoryId where pc.ProductId='"+ productid + "'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    // For Gallery Page

    public DataTable getProductDetailsForGallery1()
    {
        try
        {
            string query = @"Select TOP 3 p.ProductId, p.Name, Image, Thumbnail, Description, SubCategoryId FROM t_Product p inner join t_ProductCategory pc on p.ProductId=pc.ProductId where pc.SubCategoryId='1'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getProductDetailsForGallery2()
    {
        try
        {
            string query = @"Select TOP 3 p.ProductId, p.Name, Image, Thumbnail, Description, SubCategoryId FROM t_Product p inner join t_ProductCategory pc on p.ProductId=pc.ProductId where pc.SubCategoryId='2'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getProductDetailsForGallery3()
    {
        try
        {
            string query = @"Select TOP 3 p.ProductId, p.Name, Image, Thumbnail, Description, SubCategoryId FROM t_Product p inner join t_ProductCategory pc on p.ProductId=pc.ProductId where pc.SubCategoryId='7'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
}