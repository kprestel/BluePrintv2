using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*
    BucksInvItem Class
        will hold the buckInv objects 
        bucksTransaction class will be used to process and track transactions 
    Last update 3/18 KP
    Changes:
        Created
    ToDo:
        Stuff
    Notes:
        thinking about the best way to do this. the problem is how it will be updated and interact with DB
        also would be cool to be able to get qtyOnHand and update that amount with every transaction 
*/
public class BucksInvItem
{
    private int itemID;
    private String itemName;
    private int itemCost;
    private static ArrayList invArrayList = new ArrayList();

    public BucksInvItem()
    {

    }

    public BucksInvItem(String itemName, int itemCost, int itemID)
    {
        setItemCost(itemCost);
        setItemName(itemName);
        setItemID(itemID);
    }

    public static void addBucksInvItem(BucksInvItem item)
    {
        invArrayList.Add(item);
    }

    public String getItemName()
    {
        return itemName;
    }

    public int getItemCost()
    {
        return itemCost;
    }
    
    public int getItemID()
    {
        return itemID;
    }

    public void setItemName(String itemName)
    {
        this.itemName = itemName;
    }

    public void setItemCost(int itemCost)
    {
        this.itemCost = itemCost;
    }

    public void setItemID(int itemID)
    {
        this.itemID = itemID;
    }
}