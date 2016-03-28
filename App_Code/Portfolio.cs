using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*
    Portfolio Class
    Last update 3/18
    Changes:
        Created
    ToDo:
        Stuff
    Notes:
        Object is just a placehodler 
*/
public class Portfolio
{
    private String bio;
    private ArrayList portfolioMedia;

    public Portfolio()
    {
        setBio("");
        portfolioMedia = new ArrayList();
    }

    public void addPortfolioMedia(Object media)
    {
        this.portfolioMedia.Add(media);
    }

    public String getBio()
    {
        return bio;
    }

    public void setBio(String bio)
    {
        this.bio = bio;
    }

}