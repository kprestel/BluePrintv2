using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Valid
/// </summary>
public static class Valid
{
    public static bool isTextEmpty(Object e)
    {
        bool valid = true;
        if (string.IsNullOrEmpty(e.ToString()))
            valid = false;
        return valid;
    }
   
}