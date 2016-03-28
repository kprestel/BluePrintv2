using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
/*
    Transactions Class
    Last update 3/18 KP
    Changes:
        Created
    ToDo:
        link up to DB
    Notes:
        see method
        this is a static class so you can treat it like the Math class
*/
public static class BucksTransaction
{
    public static void buckPurchase(Student student, BucksInvItem item)
    {
        int studentBucks = student.getBucks();
        int itemCost = item.getItemCost();
        // would like to also get qty to update it and give a message if its out of stock
        student.setBucks(studentBucks - itemCost);
        // update DB qty
        // save transaction in the DB
        // Maybe more?       
    }

    public static void giveStudentBucks(Student student, int amountOfBucks)
    {
        int beforeBucks = student.getBucks();
        student.setBucks(beforeBucks + amountOfBucks);
        // who can give bucks?
        // student should also recieve message when they get bucks
    }
}