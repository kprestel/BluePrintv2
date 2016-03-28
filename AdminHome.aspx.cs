using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ManageUsers_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageUser.aspx"); 
    }
    protected void ManageCourses_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageCourse.aspx");
    }

    protected void ManageEvalutions_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageEvaluations.aspx");
    }
    protected void ManageBucks_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageBucks.aspx");
    }
    protected void ManageCommunity_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageCommunity.aspx");
    }
    protected void ManageEvents_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageEvents.aspx");
    }
    protected void ManageReports_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageReports");
    }
    protected void ManagePortfolios_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManagePorfolio");
    }
}