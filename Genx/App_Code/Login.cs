using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using SqlAccess;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Login
/// </summary>
public class chkLogin
{
    public string getuserInfo(string Userid, string password)
    {
        DataTable dt_login = new DataTable();
        string result = "";
        dt_login = MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, "SELECT loginid, username, loginattempt, password, logintype, Mobile, UserId FROM t_login where username='" + Userid + "' OR Mobile='" + Userid + "' and active='A'");
        if (dt_login.Rows.Count > 0 && password == Convert.ToString(dt_login.Rows[0]["password"]))
        {
            if (Convert.ToInt64(dt_login.Rows[0]["loginattempt"]) >= 10)
            {
                result = "Your Account is Disabled, please contact to administrator";
            }
            else
            {
                result = Convert.ToString(dt_login.Rows[0]["loginid"]) + "~" + Convert.ToString(dt_login.Rows[0]["username"]) + "~" + Convert.ToString(dt_login.Rows[0]["logintype"]) + "~" + Convert.ToString(dt_login.Rows[0]["UserId"]);
                string query = @"update t_login set loginattempt = 0 where username='" + Userid + "'";
                object intReturnValue = MySqlDataAccess.ExecuteScalar(MySqlDataAccess.ConnectionString, CommandType.Text, query);
            }
        }
        else
        {
            try
            {
                if (dt_login.Rows.Count > 0)
                {
                    if (Convert.ToInt64(dt_login.Rows[0]["loginattempt"]) >= 3)
                    {
                        result = "Your Account is Disabled, please contact to administrator";
                    }
                    else
                    {
                        string query = @"update t_login set loginattempt =(loginattempt)+1 where username='" + Userid + "'";
                        object intReturnValue = MySqlDataAccess.ExecuteScalar(MySqlDataAccess.ConnectionString, CommandType.Text, query);
                        result = "Invalid username or Password, please try again.";
                    }
                }
                else
                {
                    result = "Invalid username or Password, please try again.";
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        return result;
    }

    public string getUserLogin(string Userid, string password)
    {
        DataTable dt_login = new DataTable();
        string result = "";
        dt_login = MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, "SELECT UserId, Name, Emailid, Password FROM t_User where Emailid='" + Userid + "'");
        if (dt_login.Rows.Count > 0 && password == Convert.ToString(dt_login.Rows[0]["Password"]))
        {
            result = Convert.ToString(dt_login.Rows[0]["UserId"]) + "~" + Convert.ToString(dt_login.Rows[0]["Name"]) + "~" + Convert.ToString(dt_login.Rows[0]["Emailid"]);
        }
        else
        {
            result = "Invalid username or Password, please try again.";
        }
        return result;
    }

    public int CreateNewUser(string name, string password, string gender, string dob, string emailid, string state, string city, string mobile, string active, int role, string logintype)
    {
        try
        {
            int inval = MySqlDataAccess.ExecuteNonQuery(MySqlDataAccess.ConnectionString, CommandType.StoredProcedure, "ProNewCreateUser", new SqlParameter("@Name", name), new SqlParameter("@Password", password), new SqlParameter("@Gender", gender), new SqlParameter("@DOB", dob), new SqlParameter("@Emailid", emailid), new SqlParameter("@State", state), new SqlParameter("@City", city), new SqlParameter("@Mobile", mobile), new SqlParameter("@active", active), new SqlParameter("@role", role), new SqlParameter("@logintype", logintype));
            return Convert.ToInt32(inval);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public string IfUserExists(string mobile, string Update, string loginid)
    {
        string FLAG = "F";
        DataTable dt = new DataTable();
        if (Update == "N")
            dt = MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, "Select UserId,Emailid,Mobile from t_User where Mobile='" + mobile + "'");
        else
            dt = MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, "Select UserId,Emailid,Mobile from t_User where Mobile='" + mobile + "' AND UserId!='" + loginid + "'");

        if (dt.Rows.Count > 0)
        {
            FLAG = "T";
        }
        return FLAG;
    }

    //IfUserPassExists
    public string IfUserPassExists(string username, string password, string Update, string loginid)
    {
        string FLAG = "F";
        DataTable dt = new DataTable();
        if (Update == "N")
            dt = MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, "select LoginID, UserName, Password from t_login where UserName='" + username + "' AND Password='" + password + "'");
        else
            dt = MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, "select LoginID,UserName, Password from t_login where UserName='" + username + "' AND Password='" + password + "' AND LoginID!='" + loginid + "'");

        if (dt.Rows.Count > 0)
        {
            FLAG = "T";
        }
        return FLAG;
    }

    public DataTable GetUserDataById(Int32 Userid)
    {
        try
        {
            string query = @"Select UserId, Name, Password, Gender, DOB, Emailid, State, City, Mobile, RegisterDate from t_Register WHERE Userid='" + Userid + "'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public int UpdatePassword(string newpassword, string loginid)
    {
        try
        {
            string query = "Update t_login set Password='" + newpassword + "' where LoginID='" + loginid + "'";
            object intvalue = MySqlDataAccess.ExecuteScalar(MySqlDataAccess.ConnectionString, CommandType.Text, query);
            return Convert.ToInt32(intvalue);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public DataTable getdataLogin(string username)
    {
        try
        {
            string query = "Select LoginID, UserName, Password from t_login where UserName='" + username + "'";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }


    public DataTable getLoginActiveData()
    {
        try
        {
            string query = "Select LoginID, UserName, Password, Active from t_login order by LoginID desc";
            return MySqlDataAccess.ExecuteDataTable(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public int DeletUser(string userid)
    {
        try
        {
            object intvalue = MySqlDataAccess.ExecuteScalar(MySqlDataAccess.ConnectionString, CommandType.StoredProcedure, "ProDeleteUser", new SqlParameter("@userid", userid));
            return Convert.ToInt32(intvalue);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public int UpdatePasswordAdmin(string newpassword, string loginid)
    {
        try
        {
            string query = "Update t_login set Password='" + newpassword + "' where LoginID='" + loginid + "'";
            return MySqlDataAccess.ExecuteNonQuery(MySqlDataAccess.ConnectionString, CommandType.Text, query);
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

}