using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using SqlAccess;
using System.Data.SqlClient;

/// <summary>
/// Summary description for SubCategory
/// </summary>
public class SubCategory
{
    public int AddSubCategory(string categoryid, string subname)
    {
        try
        {
            int success = 0;
            success = MySqlDataAccess.ExecuteNonQuery(MySqlDataAccess.ConnectionString, CommandType.StoredProcedure, "ProAddSubCategory", new SqlParameter("@CategoryId", categoryid), new SqlParameter("@SubName", subname));
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
            success = MySqlDataAccess.ExecuteNonQuery(MySqlDataAccess.ConnectionString, CommandType.StoredProcedure, "ProUpdateSubCategory", new SqlParameter("@SubCategoryId", subcategoryid), new SqlParameter("@SubName", subname), new SqlParameter("@Categoryid", categoryid));
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
            string query = @"Select SubCategoryId, (select CategoryName from t_Category where CategoryId=t_SubCategory.CategoryId)as Category, SubName from t_SubCategory";
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
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.StoredProcedure, "ProGetSubCategoryById", new SqlParameter("@SubCategoryId", subcategoryid));
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
            string query = "Delete from t_SubCategory where SubCategoryId='" + subcategoryid + "'";
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
            string query = "Select SubCategoryId, CategoryId, SubName from t_SubCategory where CategoryId='" + categoryid + "'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    /********Sub sub category***************/

    public int AddSubsubCategory(string categoryid, string subcategoryid, string subsubname)
    {
        try
        {
            string query = "insert into t_MiniCategory(CategoryId, SubCategoryId, MiniName) " +
                "values('" + categoryid + "','" + subcategoryid + "', '" + subsubname + "')";
            return MySqlDataAccess.ExecuteNonQuery(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public int UpdateSubsubCategory(string subsubname, string subcategoryid, string categoryid, Int32 subsubId)
    {
        try
        {
            string query = "update t_MiniCategory set MiniName='" + subsubname + "', SubCategoryID='" + subcategoryid + "', CategoryID='" + categoryid + "' where MiniCategoryId=" + subsubId + "";
            return MySqlDataAccess.ExecuteNonQuery(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable GetSubsubCategoryById(string subsubid)
    {
        try
        {
            string query = @"SELECT MiniCategoryId, MiniName, SubCategoryId, CategoryId FROM t_MiniCategory
	WHERE MiniCategoryId='" + subsubid + "'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable GetSubsubCategory()
    {
        try
        {
            string query = @"SELECT MiniCategoryId, MiniName,(select SubName from t_SubCategory where SubCategoryId= t_MiniCategory.SubCategoryID) as subcategory,(select CategoryName from t_Category where CategoryId= t_MiniCategory.CategoryId) as category FROM t_MiniCategory order by MiniCategoryId DESC";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public int DeleteSubsubCategory(int subsubid)
    {
        try
        {
            string query = "delete from t_MiniCategory where MiniCategoryId='" + subsubid + "'";
            return MySqlDataAccess.ExecuteNonQuery(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    public DataTable getSubSubCategoryInCategoery(string categoryid)
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