using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*
    Parent class
    Last update 3/18 KP
    Changes:
        Made it 
    ToDo:
        Things
    Notes:
        ... 
*/
public class Parent : SysUser
{
    private String childName;

    public Parent(String address, String addressLine1, String cellNumber,
                  String city, String email, String fName,
                  String homeNumber, String lName, String state,
                  String zip, String childName) : base(address, city, email, fName, homeNumber, lName, state, zip, addressLine1, cellNumber)
    {
        setChildName(childName);
    }

    public String getChildName()
    {
        return childName;
    }

    public void setChildName(String childName)
    {
        this.childName = childName;
    }


}