using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*
    Admin Class
    Last update 3/18 KP
    Changes:
        give students bucks method
        addCourse method so the admin can create course
        assignTeacher to a coruse to assign a teacher to a course
    ToDo:
        stuff
    Notes
        ...
*/
public class Adminstrator : SysUser
{
    private String adminPosition;

    public Adminstrator(String address, String addressLine1, String cellNumber,
                        String city, String email, String fName,
                        String homeNumber, String lName, String state,
                        String zip, String adminPosition) : base(address, city, email, fName, homeNumber, lName, state, zip, addressLine1, cellNumber)
    {
        setAdminPosition(adminPosition);
    }

    public void giveStudentBucks(Student student, int amountOfBucks)
    {
        BucksTransaction.giveStudentBucks(student, amountOfBucks);
        String msg = this.getfName() + " " + this.getlName() + " has given you " + amountOfBucks.ToString() + "bucks!";
        sendMsg(msg, student);
    }

    public void addCourse(Course course)
    {
        Course.addNewCourse(course);
    }

    public void assignCourseTeacher(int userID, Course course)
    {
        ArrayList userArrayList = new ArrayList();
        userArrayList = getUserArrayList();
        foreach(SysUser e in userArrayList)
        {
            if(e.getUserID() == userID)
            {
                Teacher teacher = new Teacher();
                teacher = (Teacher)e;
                teacher.addCourseTaught(course);
                break;
            }
        }
    }

    public String getAdminPosition()
    {
        return adminPosition;
    }

    public void setAdminPosition(String adminPosition)
    {
        this.adminPosition = adminPosition;
    }


}