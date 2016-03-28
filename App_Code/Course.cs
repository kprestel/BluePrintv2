using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*
    Course Class
    Last update by KP 3/18
    Changes:
        Added Teacher object as an attribute 
        Added courseMaterials as an attribute 
        Added addCourseMaterials method
    ToDo:
        Figure out what we need to do.
        set courseID method 
    Notes:
        courseSection?
*/
public class Course
{
    private int courseID;
    private String courseName;
    private String courseSubject;
    private ArrayList courseRoster;
    private ArrayList courseMaterialsArrayList;
    //private Teacher courseTeacher;
    private static ArrayList courseArrayList = new ArrayList();

    private Course()
    {

    }

    public Course(String courseName, String courseSubject)
    {
        //setCourseID(courseID);
        courseID = getNewCourseID();
        setCourseName(courseName);
        setCourseSubject(courseSubject);
        //setCourseTeacher(courseTeacher);
        this.courseMaterialsArrayList = new ArrayList();
        this.courseRoster = new ArrayList();
    }

    public static void addNewCourse(Course course)
    {
        courseArrayList.Add(course);
    }

    public void addNewCourseMaterial(Object courseMaterial)
    {
        this.courseMaterialsArrayList.Add(courseMaterial);
    }

    public void addStudent(Student student)
    {
        courseRoster.Add(student);
    }

    public int getNewCourseID() // Placeholder 
    {
        int courseID = 0;
        return courseID;
    }

    public ArrayList getCourseRoster()
    {
        return courseRoster;
    }

    //public static void createCourse(Course course)
    //{
    //    courseArrayList.Add(course);
    //}

    public int getCourseID()
    {
        return courseID;
    }
    public String getCourseName()
    {
        return courseName;
    }

    public void setCourseName(String courseName)
    {
        this.courseName = courseName;
    }

    public String getCourseSubject()
    {
        return courseSubject;
    }

    public void setCourseSubject(String courseSubject)
    {
        this.courseSubject = courseSubject;
    }

    //public Teacher getCourseTeacher()
    //{
    //    return courseTeacher;
    //}

    //public void setCourseTeacher(Teacher courseTeacher)
    //{
    //    this.courseTeacher = courseTeacher;
    //}

    public ArrayList getCourseMaterialsArrayList()
    {
        return courseMaterialsArrayList;
    }

    //public void setCourseMaterialsArrayList(ArrayList courseMaterialsArrayList)
    //{
    //    this.courseMaterialsArrayList = courseMaterialsArrayList; 
    //}

}