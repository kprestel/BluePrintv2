using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BlogComment
/// </summary>
public class BlogComment
{
    private int commentID;
    //private BlogPost blogPost;
    private String commentContent;
    private SysUser commentOwner;
    private DateTime commentDate;

    public BlogComment()
    {
    }

    public BlogComment(String commentContent, SysUser commentOwner, 
        DateTime commentDate)
    {
        //setBlogPost(blogPost);
        setCommentContent(commentContent);
        setCommentOwner(commentOwner);
        setCommentDate(commentDate);
        //setCommentID()
    }

    //public BlogPost getBlogPost()
    //{
    //    return blogPost;
    //}

    //public void setBlogPost(BlogPost blogPost)
    //{
    //    this.blogPost = blogPost;
    //}

    public String getCommentContent()
    {
        return commentContent;
    }

    public void setCommentContent(String commentContent)
    {
        this.commentContent = commentContent;
    }

    public SysUser getCommentOwner()
    {
        return commentOwner;
    }

    public void setCommentOwner(SysUser commentOwner)
    {
        this.commentOwner = commentOwner;
    }

    public DateTime getCommentDate()
    {
        return commentDate;
    }

    public void setCommentDate(DateTime commentDate)
    {
        this.commentDate = commentDate;
    }

    public int getCommentID()
    {
        return commentID;
    }

    public void setCommentID(int commentID)
    {
        this.commentID = commentID;
    }
}