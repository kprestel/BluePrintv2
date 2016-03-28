using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Next_Click(object sender, EventArgs e)
    {
        Response.Redirect("ClassEvalPage3.aspx");
    }
    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("ClassEvalPage1.aspx");
    }
}