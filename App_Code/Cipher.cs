using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*
    Cipher Class
    Last update 3/18 KP
    Changes
        made it
        makeDonation method
    ToDo:
        Things
    Notes:
        ... 
*/
public class Cipher : SysUser
{
    private double totalDonations;
    private String cipherType;

    public Cipher(String address, String addressLine1, String cellNumber,
                  String city, String email, String fName, String homeNumber,
                  String lName, String state, String zip, String cipherType) : base(address, city, email, fName, homeNumber, lName, state, zip, addressLine1, cellNumber)
    {
        setCipherType(cipherType);
    }

    public double getTotalDonations()
    {
        return totalDonations;
    }

    public void setTotalDonations(double totalDonations)
    {
        this.totalDonations = totalDonations;
    }

    public String getCipherType()
    {
        return cipherType;
    }

    public void setCipherType(String cipherType)
    {
        this.cipherType = cipherType;
    }

    public void makeDonation(double donation)
    {
        this.totalDonations += donation;
    }

}