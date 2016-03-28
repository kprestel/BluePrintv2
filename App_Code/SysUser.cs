using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/*
    User Class
    Last update 3/18 KP
    Changes:
        Created
        Optional attributes
        added inbox attribute 
        added sendMsg()
        added userFormArrayList
        added methods to make blog posts and comment on them 
    ToDo:
        Stuff
    Notes:
        ...
*/

public class SysUser
{
    private int userID;
    private String fName = "";
    private String lName = "";
    private String address = "";
    private String addressLine1 = ""; // can be empty
    private String city = "";
    private String state = "";
    private String zip = ""; // easier to work with
    private String cellNumber = ""; // can be empty
    private String homeNumber = "";
    private String email = "";
    private String pwd = "";
    private Inbox userInbox;
    private Portfolio userPortfolio;
    private ArrayList userFormArrayList;
    private static ArrayList userArrayList = new ArrayList();

    public SysUser()
    {

    }

    public SysUser(String email, String pwd) // for testing
    {
        setUserID();
        setEmail(email);
        setPwd(pwd);
        setUserInbox(new Inbox());
        setUserPortfolio(new Portfolio());

    }
    public SysUser(String address, String city,
                String email, String fName, String homeNumber,
                String lName, String state, String zip,
                String addressLine1 = null, String cellNumber = null) // Full constructor
    {
        setUserID();
        setAddress(address);
        setAddressLine1(addressLine1);
        setCellNumber(cellNumber);
        setCity(city);
        setEmail(email);
        setfName(fName);
        setHomeNumber(homeNumber);
        setlName(lName);
        setState(state);
        setZip(zip);
        setUserInbox(new Inbox());
        setUserPortfolio(new Portfolio());
    }

    public static void createUser(SysUser user)
    {
        userArrayList.Add(user);
    }

    public static SysUser findUser(int userID)
    {
        SysUser user = new SysUser();
        foreach (SysUser e in userArrayList)
        {
            if (e.getUserID() == userID)
                user = e;
            else
                user = null;
        }
        return user;
    }

    public void sendMsg(String msgContents, SysUser msgReceiver)
    {
        /*
            currently would be called like 
            User.findUser(int).sendMsg(string, findUser(int));
                i guess thats not that bad.  
                will keep thinking on this one.
        */
        DateTime currentDate = DateTime.Now;
        msgReceiver.userInbox.addNewMsg(new Message(msgContents, currentDate, this, msgReceiver));
    }

    public void makeTextBlogPost(String postText)
    {
        DateTime currentDate = DateTime.Now;
        BlogPost.makeBlogPost(new BlogPost(this, postText, currentDate));
    }

    public void makeMediaBlogPost(String postText, Object postMedia)
    {
        DateTime currentDate = DateTime.Now;
        BlogPost.makeBlogPost(new BlogPost(this, postText, postMedia, currentDate));
    }

    public void makeBlogComment(int postID, String commentContent)
    {
        DateTime currentDate = DateTime.Now;
        BlogPost.findBlogPost(postID).addComment(new BlogComment(commentContent, this, currentDate));
    }

    public void addPortfolioMedia(Object media)
    {
        this.userPortfolio.addPortfolioMedia(media);
    }

    public void setUserID()
    {
        int newUserID = 0; // if something goes wrong then the ID will be 0
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        SqlConnection sc = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = sc;
        cmd.CommandText = "select Max(MemberID) as Max from Member";
        sc.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            reader.Read();
            try
            {
                newUserID = int.Parse(reader["Max"].ToString());
            }
            catch
            {
                throw;
            }
        }
        this.userID = newUserID;
        sc.Close();
    }

    public String getAddress()
    {
        return address;
    }

    public void setAddress(String address)
    {
        this.address = address;
    }

    public String getAddressLine1()
    {
        return addressLine1;
    }

    public void setAddressLine1(String addressLine1)
    {
        this.addressLine1 = addressLine1;
    }

    public String getCellNumber()
    {
        return cellNumber;
    }

    public void setCellNumber(String cellNumber)
    {
        this.cellNumber = cellNumber;
    }

    public String getCity()
    {
        return city;
    }

    public void setCity(String city)
    {
        this.city = city;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public String getfName()
    {
        return fName;
    }

    public void setfName(String fName)
    {
        this.fName = fName;
    }

    public String getHomeNumber()
    {
        return homeNumber;
    }

    public void setHomeNumber(String homeNumber)
    {
        this.homeNumber = homeNumber;
    }

    public String getlName()
    {
        return lName;
    }

    public void setlName(String lName)
    {
        this.lName = lName;
    }

    public String getState()
    {
        return state;
    }

    public void setState(String state)
    {
        this.state = state;
    }

    public int getUserID()
    {
        return userID;
    }

    public String getZip()
    {
        return zip;
    }

    public void setZip(String zip)
    {
        this.zip = zip;
    }

    public ArrayList getUserArrayList()
    {
        return userArrayList;
    }

    public Inbox getUserInbox()
    {
        return userInbox;
    }

    public void setUserInbox(Inbox userInbox)
    {
        this.userInbox = userInbox;
    }

    public Portfolio getUserPortfolio()
    {
        return userPortfolio;
    }

    public void setUserPortfolio(Portfolio userPortfolio)
    {
        this.userPortfolio = userPortfolio;
    }

    public ArrayList getUserFormArrayList()
    {
        return userFormArrayList;
    }

    public void addUserForm(Form form)
    {
        this.userFormArrayList.Add(form);
    }

    public String getPwd()
    {
        return pwd;
    }

    public void setPwd(String pwd)
    {
        this.pwd = pwd;
    }
}