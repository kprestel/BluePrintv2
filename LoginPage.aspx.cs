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

public partial class LoginPage : System.Web.UI.Page
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
    }
    #endregion
    #region Authenticate 
    protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string userName = Login.UserName;
        string password = Login.Password;

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
        while(reader.Read())
        {
            pwHash = reader["PasswordHash"].ToString();
        }
        bool verify = SimpleHash.verifyHash(password, pwHash);
        e.Authenticated = verify;

        Session["loggedIn"] = e.Authenticated.ToString();

    }
    #endregion
}
