using System;
using SqlAccess;
using System.Web;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;

public class Category
{
    public int CreateNewCategory(string categoryname)
    {
        try
        {
            string query = "Insert into t_Category (CategoryName) values('" + categoryname + "')";
            object intVal = MySqlDataAccess.ExecuteScalar(MySqlDataAccess.ConnectionString, CommandType.Text, query);
            return Convert.ToInt32(intVal);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public int UpdateCategory(Int32 categoryid, string categoryname)
    {
        try
        {
            string query = "Update t_Category set CategoryName='" + categoryname + "' where CategoryId='" + categoryid + "'";
            object intVal = MySqlDataAccess.ExecuteScalar(MySqlDataAccess.ConnectionString, CommandType.Text, query);
            return Convert.ToInt32(intVal);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getAllCategory()
    {
        try
        {
            string query = "Select CategoryId, CategoryName from t_Category";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public int DeleteCategory(Int32 cagegoryid)
    {
        try
        {
            int success = 0;
            string query = "Delete from t_Category where CategoryId='" + cagegoryid + "'";
            return success = MySqlDataAccess.ExecuteNonQuery(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public string IsCategoryExists(string categoryname, string Update, string categoryid)
    {
        string FLAG = "F";
        DataTable dt = new DataTable();
        if (Update == "N")
            dt = MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, "select CategoryName from t_Category where CategoryName='" + categoryname + "'");
        else
            dt = MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, "select CategoryName from t_Category where CategoryName='" + categoryname + "' AND CategoryId!='"+categoryid+"'");

        if (dt.Rows.Count > 0)
        {
            FLAG = "T";
        }
        return FLAG;
    }
    
    public DataTable getMenuCategory()
    {
        try
        {
            string query = "Select Top 5 CategoryId, CategoryName from t_Category";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getCategoryName(string category)
    {
        try
        {
            string query = "Select CategoryName from t_Category where CategoryId='" + category + "'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getMenuCategoryTop5()
    {
        try
        {
            string query = "Select top 5 CategoryId, CategoryName FROM t_Category";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getMenuSubCategory(string categoryid)
    {
        try
        {
            string query = "Select SubCategoryId, SubName, CategoryId FROM t_SubCategory WHERE CategoryId='" + categoryid + "'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getMenuSubsubCategory(string subcategory)
    {
        try
        {
            string query = "Select MiniCategoryId, MiniName, SubCategoryId, CategoryId FROM t_MiniCategory WHERE SubCategoryId='" + subcategory + "'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getCategoryInFooter()
    {
        try
        {
            string query = "Select top 4 CategoryId, CategoryName from t_Category";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getAllUserEmailid()
    {
        try
        {
            string query = "select UserId, Firstname, Lastname, Emailid from t_User";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
}