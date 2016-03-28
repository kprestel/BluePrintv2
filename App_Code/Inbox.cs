using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*
    Inbox Class
        each user will have an inbox object 
    Last update 3/18 KP
    Changes:
        Created
    ToDo:
        Stuff
    Notes:
        Still thinking about best design for this whole messanger thing
        sort method?
*/
public class Inbox
{
    private ArrayList msgArrayList;

    public Inbox()
    {
        
        
    }

    public ArrayList getMsgArrayList()
    {
        return msgArrayList;

    }

    public Message findMsg(int msgID)
    {
        Message msg = new Message();
        foreach(Message e in msgArrayList)
        {
            if(e.getMessageID() == msgID)
            {
                msg = e;
                break;
            }
            else
            {
                msg = null;
            }
        }
        return msg;
    }

    public void addNewMsg(Message msg)
    {
        this.msgArrayList.Add(msg);
    }

}
