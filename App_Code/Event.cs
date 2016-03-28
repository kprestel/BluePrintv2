using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Event
/// </summary>
public class Event
{
    public String eventTitle { get; set; } 
    public String eventStartDate { get; set; }
    public String eventEndDate { get; set; }
    public int eventID { get; set; }
    //private bool allDay { get; set; }
    public String eventTopic { get; set; } 

    public Event()
    {
    }

    public Event(String title, String start, int id)
    {
        this.eventTitle = title;
        this.eventStartDate = start;
        //this.eventEndDate = eventEndDate;
        this.eventID = id;
    }

    //public string getEventName()
    //{
    //    return eventName;
    //}

    //public DateTime getEventDate()
    //{
    //    return eventDate;
    //}

    //public String getEventTopic()
    //{
    //    return eventTopic;
    //}

    //public void setEventName(String eventName)
    //{
    //    this.eventName = eventName;
    //}

    //public void setEventDate(DateTime eventDate)
    //{
    //    this.eventDate = eventDate;
    //}

    //public void setEventTopic(String eventTopic)
    //{
    //    this.eventTopic = eventTopic;
    //}

}