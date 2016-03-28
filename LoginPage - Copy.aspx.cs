using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Authentication;
using System.Security.Cryptography;
using System.Configuration;

public partial class LoginPage : BasePage
{
    #region PageLoad
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    #endregion
    #region Apply Click 
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserRegistration.aspx");

        //if ((string)Session["MemberType"] == "Student")
        //{
        //    Login.DestinationPageUrl = "~/WebPage/Student_WebPages/WBLStudentProfile.aspx";
        //}
    }
    #endregion
    #region Authenticate 
    protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string userName = Login.UserName;
        string password = Login.Password;
        Session["MemberType"] = "";
        Session["MemberID"] = "";

        String pwHash = "";
        e.Authenticated = false;

        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        SqlConnection sc = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = sc;
        cmd.CommandText = "Select * from Member where Email = @Email";
        cmd.Parameters.AddWithValue("@Email", Login.UserName);
        sc.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            pwHash = reader["PasswordHash"].ToString();
            Session["MemberType"] = reader["MemberType"].ToString();
            Session["MemberID"] = reader["MemberID"].ToString();

        }
        bool verify = SimpleHash.verifyHash(password, pwHash);
        e.Authenticated = verify;

        Session["loggedIn"] = e.Authenticated.ToString();

        if (e.Authenticated)
        {
            setDestinationPage();
        }

    }
    #endregion

    private void setDestinationPage()
    {
        if ((string)Session["MemberType"] == "Student")
        {
            Login.DestinationPageUrl = "~/WebPages/Student_WebPages/WBLStudentProfile.aspx";
        }

        else if ((string)Session["MemberType"] == "Teacher")
        {
            Login.DestinationPageUrl = "~/WebPages/Teacher_WebPages/WBLTeacherProfile.aspx";
        }

        else if ((string)Session["MemberType"] == "Admin")
        {
            Login.DestinationPageUrl = "~/WebPages/Admin_WebPages/WBLAdminHomePage.aspx";
        }
    }
}
