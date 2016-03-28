using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*
    Message Class
        used to create the message object that will be sent a user's inbox
    Last update 3/18 KP
    Changes:
        Created
    ToDo:
        test
        Stuff
    Notes:
        ...
*/
public class Message
{
    private SysUser messageSender;
    private SysUser messageReceiver;
    private int messageID;
    private String messageContents;
    private DateTime messageDate;

    public Message()
    {

    }
    public Message(String messageContents, DateTime messageDate, SysUser messageSender, SysUser messageReceiver)
    {
        setMessageContents(messageContents);
        setMessageDate(messageDate);
        setMessageSender(messageSender);
        setMessageReceiver(messageReceiver);
        this.messageID = getNewMessageID();
    }

    public String getMessageContents()
    {
        return messageContents;
    }

    public int getMessageID()
    {
        return messageID;
    }

    public DateTime getMessageDate()
    {
        return messageDate;
    }
    public SysUser getMessageSener()
    {
        return messageSender;
    }

    public SysUser getMessageReceiver()
    {
        return messageReceiver;
    }

    public void setMessageSender(SysUser messageSender)
    {
        this.messageSender = messageSender;
    }

    public void setMessageReceiver(SysUser messageReceiver)
    {
        this.messageReceiver = messageReceiver;
    }

    public void setMessageContents(String messageContents)
    {
        this.messageContents = messageContents; 
    }

    public void setMessageDate(DateTime messageDate)
    {
        this.messageDate = messageDate;
    }

    public int getNewMessageID()
    {
        int ID = 0;
        return ID;
    }

}