using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*
    Student Class
    Last update 3/18
    Changes:
        Created
        added studentPortfolio attribute 
    ToDo:
        Stuff
    Notes:
        best way to keep track of each student's disciplines?
*/
public class Student : SysUser
{

    private int age;
    private int bucks;
    private String classLevel;
    //private String[] discplineArray;
    //private Portfolio studentPortfolio;
    //private String gender;
    //private String ethnicity;
    // unsure how much data is needed to store in program
    public Student() : base()
    {

    }
    public Student(String address, String city,
                String email, String fName, String homeNumber,
                String lName, String state, String zip, String addressLine1, String cellNumber, 
                int age, int bucks, string classLevel) : base(address,city,email,fName,homeNumber,lName,state,zip,addressLine1,cellNumber)
    {
        setAge(age);
        setBucks(bucks);
        setClassLevel(classLevel);
        //setStudentPortfolio(new Portfolio());
    }

    public Student(String email, String pwd) : base(email,pwd)
    {

    }

    //public Portfolio getStudentPortfolio()
    //{
    //    return studentPortfolio;
    //}

    //public void setStudentPortfolio(Portfolio studentPortfolio)
    //{
    //    this.studentPortfolio = studentPortfolio;
    //}

    public int getAge()
    {
        return age;
    }

    public void setAge(int age)
    {
        this.age = age;
    }

    public int getBucks()
    {
        return bucks;
    }

    public void setBucks(int bucks)
    {
        this.bucks = bucks;
    }

    public String getClassLevel()
    {
        return classLevel;
    }

    public void setClassLevel(String classLevel)
    {
        this.classLevel = classLevel;
    }


}
