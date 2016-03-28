using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BasePage
/// </summary>
public class BasePage : System.Web.UI.Page
{
    public BasePage()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    protected override void OnLoadComplete(EventArgs e)
    {
        // Set the page's title, if necessary
        if (string.IsNullOrEmpty(Page.Title) || Page.Title == "Untitled Page")
        {
            // Determine the filename for this page
            string fileName = System.IO.Path.GetFileNameWithoutExtension(Request.PhysicalPath);

            Page.Title = fileName;
        }

        base.OnLoadComplete(e);
    }
    // IMPORTANT - this code sets the master page file when the user logs in to the system


    //protected override void OnPreInit(EventArgs e)
    //{
    //    SetMasterPageFile();
    //    base.OnPreInit(e);
    //}
    //protected virtual void SetMasterPageFile()
    //{
    //    this.MasterPageFile = GetMasterPageFileFromSession();
    //}
    //protected string GetMasterPageFileFromSession()
    //{
    //    if (Session["MyMasterPage"] == null)
    //        return "~/WBLCommonMasterPage.master";
    //    else if (Session["MyMasterPage"] == "Student")
    //    {
    //        return "~/WBLStudentMasterPage.master";
            
    //    }
    //    else if (Session["MyMasterPage"] == "Teacher")
    //    {
    //        return "~/WBLTeacherMasterPage.master";

    //    }
    //    else if (Session["MyMasterPage"] == "Admin")
    //    {
    //        return "~/WBLAdminMasterPage.master";

    //    }
    //    else if (Session["MyMasterPage"] == "Cipher")
    //    {
    //        return "~/WBLCipherMasterPage.master";

    //    }
    //}
}