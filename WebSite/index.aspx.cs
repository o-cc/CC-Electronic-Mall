using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Collections;

public partial class index : System.Web.UI.Page
{
    Operation op = new Operation();
    DBClass obj = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataList3.DataSource = op.SelectImage("手机", 5);
        DataList3.DataBind();
        DataList4.DataSource = op.SelectImage("电器城", 5);
        DataList4.DataBind();
        DataList5.DataSource = op.SelectImage("西西超市", 5);
        DataList5.DataBind();
        DataList6.DataSource = op.SelectImage("西西生活", 5);
        DataList6.DataBind();
        DataList7.DataSource = op.SelectImage("有我你更美", 5);
        DataList7.DataBind();
        DataList8.DataSource = op.SelectImage("智能硬件", 5);
        DataList8.DataBind();

        midImage.DataSource = op.SelectImage("pimage", 5);
        midImage.DataBind();

        DataList9.DataSource = op.SelectImage("手机", 10);
        DataList9.DataBind();
        DataList10.DataSource = op.SelectImage("电器城", 10);
        DataList10.DataBind();
        DataList11.DataSource = op.SelectImage("西西超市", 10);
        DataList11.DataBind();
        DataList12.DataSource = op.SelectImage("西西生活", 10);
        DataList12.DataBind();
        DataList13.DataSource = op.SelectImage("智能硬件", 10);
        DataList13.DataBind();
        DataList14.DataSource = op.SelectImage("有我你更美", 10);
        DataList14.DataBind();
        DataList15.DataSource = op.SelectImage("办公设备", 10);
        DataList15.DataBind();
        DataList16.DataSource = op.SelectImage("西西商城", 10);
        DataList16.DataBind();

        DataList17.DataSource = op.SelectNewInfo(10);
        DataList17.DataBind();


        Phone.DataSource = op.SelectPhone(10);
        Phone.DataBind();

        Life.DataSource = op.SelectImage("西西生活",10);
        Life.DataBind();

        Electric.DataSource = op.SelectImage("电器城", 10);
        Electric.DataBind();

        Beauty.DataSource = op.SelectImage("有我你更美", 10);
        Beauty.DataBind();
    }

    public void AddressBack(DataListCommandEventArgs e)
    {
        Session["address"] = "";
        Session["address"] = "index.aspx";
        Session["di"] = "";
        Session["di"] = Convert.ToInt32(e.CommandArgument.ToString());
        Response.Redirect("~/shopInfo.aspx?id=" + Convert.ToInt32(e.CommandArgument.ToString())); //传递并跳转值到shopInfo
    }
    protected void DataList17_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
        //else if (e.CommandName == "buy")
        //{
        //    AddShopCart(e);
        //}
    }





    protected void Phone_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void Life_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void Electric_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void Beauty_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void midImage_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void DataList9_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void DataList10_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void DataList11_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void DataList12_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void DataList13_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void DataList14_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void DataList15_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void DataList16_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void DataList4_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void DataList5_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void DataList6_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void DataList7_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
    protected void DataList8_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "detailSee")
        {
            AddressBack(e);
        }
    }
}