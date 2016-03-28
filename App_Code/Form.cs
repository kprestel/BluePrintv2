using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Form
/// </summary>
public class Form
{
    private int formID;
    private SysUser user;

    public Form()
    {
    }

    public Form(SysUser user)
    {

    }

    public int getFormID()
    {
        return formID;
    }

    public SysUser getUser()
    {
        return user;
    }

    public void setFormID(int formID)
    {
        this.formID = formID;
    }

    public void setUser(SysUser user)
    {
        this.user = user;
    }
}