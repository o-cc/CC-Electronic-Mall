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


public partial class MasterPage : System.Web.UI.MasterPage
{
    Operation op = new Operation();
    DBClass obj = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataList1.DataSource = op.SelectInfo();
        //DataList1.DataBind();

        if (Session["UserName"] == null)
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
        }
        else
        {
            Label123.Text = Session["UserName"].ToString();

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
        }
      
    }

    public void AddressBack(DataListCommandEventArgs e)
    {
        Session["address"] = "";
        Session["address"] = "index.aspx";
        Session["di"] = "";
        Session["di"] = Convert.ToInt32(e.CommandArgument.ToString());
        Response.Redirect("~/shopInfo.aspx?id=" + Convert.ToInt32(e.CommandArgument.ToString()));
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


    /// <summary>
    /// 向购物车中添加新商品
    /// </summary>
    /// <param name="e">
    /// 获取或设置可选参数，
    /// 该参数与关联的 CommandName 
    /// 一起被传递到 Command 事件。
    /// </param> 
    public void AddShopCart(DataListCommandEventArgs e)
    {
        ////if (Session["UserName"] == null)
        ////{
        ////    Response.Redirect("Default.aspx");
        ////}
        ///*判断是否登录*/
        //ST_check_Login();
        //Hashtable hashCar;
        //if (Session["ShopCart"] == null)
        //{
        //    //如果用户没有分配购物车
        //    hashCar = new Hashtable();         //新生成一个
        //    hashCar.Add(e.CommandArgument, 1); //添加一个商品
        //    Session["ShopCart"] = hashCar;     //分配给用户
        //}
        //else
        //{
        //    //用户已经有购物车
        //    hashCar = (Hashtable)Session["ShopCart"];//得到购物车的hash表
        //    if (hashCar.Contains(e.CommandArgument))//购物车中已有此商品，商品数量加1
        //    {
        //        int count = Convert.ToInt32(hashCar[e.CommandArgument].ToString());//得到该商品的数量
        //        hashCar[e.CommandArgument] = (count + 1);//商品数量加1
        //    }
        //    else
        //        hashCar.Add(e.CommandArgument, 1);//如果没有此商品，则新添加一个项
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


    protected void LinkButton20_Click(object sender, EventArgs e)
    {
        Session["UserName"] = null;
        Response.Redirect("index.aspx");
    }
}
