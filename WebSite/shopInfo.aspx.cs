using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class shopInfo : System.Web.UI.Page
{
    Operation op = new Operation();
    DBClass dbObj = new DBClass();
    CommonClass ccObj = new CommonClass();
    GoodsClass gcObj = new GoodsClass();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        GetGoodsInfo();
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

    public void GetGoodsInfo()
    {
        string strSql = "select * from tb_Shop where id=" + Convert.ToInt32(Request["id"].Trim());
        SqlCommand myCmd = dbObj.GetCommandStr(strSql);
        DataTable dsTable = dbObj.GetDataSetStr(strSql, "tb_Shop");

        this.txtName.Text = dsTable.Rows[0]["imagename"].ToString();

        this.txtCategory.Text = dsTable.Rows[0]["introduct"].ToString();
        this.Textbox2.Text = dsTable.Rows[0]["price"].ToString();
        this.Label1.Text = dsTable.Rows[0]["imagename"].ToString();
        this.ImageMapPhoto.ImageUrl = dsTable.Rows[0]["imageurl"].ToString();

        this.Textbox1.Text = dsTable.Rows[0]["date"].ToString();
    }

    public void ST_check_Login()
    {

        if (Session["UserName"] == null)
        {
            Response.Write("<script>alert('对不起！您不是会员，请先注册！');location='login(会员)/Default.aspx'</script>");
            Response.End();
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

   //点击加入购物车
    protected void btnBack1_Click(object sender, ImageClickEventArgs e)
    {
        /*判断是否登录*/
        ST_check_Login();
        Hashtable hashCar;
        if (Session["ShopCart"] == null)
        {
            //如果用户没有分配购物车
            hashCar = new Hashtable();         //新生成一个
            hashCar.Add(Session["di"], 1); //添加一个商品
            Session["ShopCart"] = hashCar;     //分配给用户
        }
        else
        {
            //用户已经有购物车
            hashCar = (Hashtable)Session["ShopCart"];//得到购物车的hash表
            if (hashCar.Contains(Session["di"]))//购物车中已有此商品，商品数量加1
            {
                int count = Convert.ToInt32(hashCar[Session["di"]].ToString());//得到该商品的数量
                hashCar[Session["di"]] = (count + 1);//商品数量加1
            }
            else
                hashCar.Add(Session["di"], 1);//如果没有此商品，则新添加一个项
        }
        //Response.Redirect("~/buyCar.aspx?id=" + Session["di"]);  
        WebMessageBox.Show("添加成功");
    }

    //退出再见按钮
    protected void LinkButton20_Click(object sender, EventArgs e)
    {
        Session["UserName"] = null;
        Response.Redirect("index.aspx");
    }
}