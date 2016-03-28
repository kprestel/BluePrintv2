using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*
    Teacher Class
    Last update 3/18
    Changes:
        Created
        added method to give student bucks
        added method to add course material 
        added method to add a course taught (so a teacher can teach multiple classes)
            this will actually probably be moved to the admin class
        added method to message all students in a specific class
    ToDo:
        Stuff
    Notes:
        customize msg to students? 
*/
public class Teacher: SysUser
{
    private String subjectTaught;
    private ArrayList coursesTaughtArrayList;
    // private Course courseTaught;
    
    public Teacher()
    {

    }

    public Teacher(String address, String addressLine1, String cellNumber,
                   String city, String email, String fName,
                   String homeNumber, String lName, String state,
                   String zip, String subjectTaught) : base(address, city, email, fName, homeNumber, lName, state, zip, addressLine1, cellNumber)
    {
        setSubjectTaught(subjectTaught);
        this.coursesTaughtArrayList = new ArrayList();
    }

    public void addCourseTaught(Course course)
    {
        this.coursesTaughtArrayList.Add(course);
    }

    public void addCourseMaterial(Object courseMaterial, int courseID)
    {
        foreach(Course e in coursesTaughtArrayList)
        {
            if(e.getCourseID() == courseID)
            {
                e.addNewCourseMaterial(courseMaterial);
                break;
            }
        }
    }

    public void sendClassMsg(String msg, int courseID)
    {
        foreach (Course e in coursesTaughtArrayList)
        {
            if (e.getCourseID() == courseID)
            {
                ArrayList roster = new ArrayList();
                roster = e.getCourseRoster();
                foreach(Student s in roster)
                {
                    sendMsg(msg, s);
                }
                break;
            }
        }
    }
    public void giveStudentBucks(Student student, int amountOfBucks)
    {
        BucksTransaction.giveStudentBucks(student, amountOfBucks);
        String msg = this.getfName() + " " + this.getlName() + " has given you " + amountOfBucks.ToString() + "bucks!";
        sendMsg(msg, student);
    }

    public String getSubjectTaught()
    {
        return subjectTaught;
    }

    public void setSubjectTaught(String subjectTaught)
    {
        this.subjectTaught = subjectTaught;
    }
}