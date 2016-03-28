using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*
    BlogPost Class
    Last update 3/18 KP
    Changes:
        Made it
    ToDo:
        set postID method (really get new postID)
        more...
    Notes:
        ...
*/
public class BlogPost
{
    private int postID;
    private SysUser postOwner;
    private String postText;
    private DateTime postDate;
    private ArrayList commentArrayList;
    private Object postMedia;  // May cause inheritance/permission problem
    private static ArrayList blogPostArrayList = new ArrayList();

    public BlogPost()
    {

    }

    public BlogPost(SysUser postOwner, String postText, Object postMedia, DateTime postDate)
    {
        setPostOwner(postOwner);
        setPostText(postText);
        setPostMedia(postMedia);
        setPostID(getNewPostID());
        setPostDate(postDate);
        setCommentArrayList(new ArrayList());
    }

    public BlogPost(SysUser postOwner, String postText, DateTime postDate) // Text only post
    {
        setPostOwner(postOwner);
        setPostText(postText);
        setPostID(getNewPostID());
        setPostDate(postDate);
        setCommentArrayList(new ArrayList());
    }

    public static void makeBlogPost(BlogPost blogPost)
    {
        blogPostArrayList.Add(blogPost);
    }

    public static BlogPost findBlogPost(int postID)
    {
        BlogPost blogPost = new BlogPost();
        foreach(BlogPost e in blogPostArrayList)
        {
            if (e.getPostID() == postID)
            {
                blogPost = e;
                break;
            }
            else
            {
                blogPost = null;
            }

        }
        return blogPost;
    }

    //public void addNewComment(String commentContent, User commentOwner)
    //{
    //    this.commentArrayList.Add(new BlogComment(this, commentContent, commentOwner, currentDate));

    //}

    public int getNewPostID() // PLACE HOLDEer
    {
        int postID = 0;
        return postID;
    }

    public Object getPostMedia()
    {
        return postMedia;
    }

    public void setPostMedia(Object postMedia)
    {
        this.postMedia = postMedia;
    }

    public SysUser getPostOwner()
    {
        return postOwner;
    }

    public void setPostOwner(SysUser postOwner)
    {
        this.postOwner = postOwner;
    }

    public String getPostText()
    {
        return postText;
    }

    public void setPostText(String postText)
    {
        this.postText = postText;
    }

    public int getPostID()
    {
        return postID;
    }

    public void setPostID(int postID)
    {
        this.postID = postID;
    }

    public DateTime getPostDate()
    {
        return postDate;
    }
    public void setPostDate(DateTime postDate)
    {
        this.postDate = postDate;
    }

    //public static ArrayList getBlogPostArrayList()
    //{
    //    return blogPostArrayList;
    //}

    public ArrayList getCommentArrayList()
    {
        return commentArrayList;
    }

    public void setCommentArrayList(ArrayList commentArrayList)
    {
        this.commentArrayList = commentArrayList;
    }

    public void addComment(BlogComment blogComment)
    {
        this.commentArrayList.Add(blogComment);
    }

}