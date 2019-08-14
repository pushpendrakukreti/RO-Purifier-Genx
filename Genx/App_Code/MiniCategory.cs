using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using SqlAccess;
using System.Data.SqlClient;

/// <summary>
/// Summary description for MiniCategory
/// </summary>
public class MiniCategory
{
    public int AddMiniCategory(string categoryid, string subname)
    {
        try
        {
            int success = 0;
            success = MySqlDataAccess.ExecuteNonQuery(MySqlDataAccess.ConnectionString, CommandType.StoredProcedure, "MiniAddSubCategory", new SqlParameter("@CategoryId", categoryid), new SqlParameter("@SubName", subname));
            return success;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    public int UpdateSubCategory(Int32 subcategoryid, string subname, Int32 categoryid)
    {
        try
        {
            int success = 0;
            success = MySqlDataAccess.ExecuteNonQuery(MySqlDataAccess.ConnectionString, CommandType.StoredProcedure, "ProUpdateMiniCategory", new SqlParameter("@SubCategoryId", subcategoryid), new SqlParameter("@SubName", subname), new SqlParameter("@Categoryid", categoryid));
            return success;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getAllSubCategory()
    {
        try
        {
            string query = @"Select MiniCategoryId, (select SubCategoryName from t_SubCategory where SubCategoryId=t_MiniCategory.SubCategoryId)as SubCategory, MiniName from t_MiniCategory";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable GetSubCategoryById(string subcategoryid)
    {
        try
        {
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.StoredProcedure, "ProGetMiniCategoryById", new SqlParameter("@SubCategoryId", subcategoryid));
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
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.StoredProcedure, "ProGetMiniById", new SqlParameter("@ProductId", Productid));
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public int DeleteSubCategory(string subcategoryid)
    {
        try
        {
            int success = 0;
            string query = "Delete from t_MiniCategory where MenuCategoryId='" + subcategoryid + "'";
            success = MySqlDataAccess.ExecuteNonQuery(MySqlDataAccess.ConnectionString, CommandType.Text, query);
            return success;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getSubCategoryInCategoery(string categoryid)
    {
        try
        {
            string query = "Select MiniCategoryId, SubCategoryId, MiniName from t_MiniCategory where SubCategoryId='" + categoryid + "'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
}