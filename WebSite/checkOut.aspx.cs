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
using System.Text.RegularExpressions;

public partial class checkOut : System.Web.UI.Page
{
    Operation op = new Operation();
    CommonClass ccObj = new CommonClass();
    DBClass dbObj = new DBClass();
    string strSql;
    DataTable dtTable;
    Hashtable hashCar;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string name =Session["username"].ToString().Trim();
        Address.DataSource = op.SelectAdrss(name);
        Address.DataBind();
        

        if (!IsPostBack)
        {
            /*判断是否登录*/
            ST_check_Login();
            if (Session["ShopCart"] == null)
            {
                ////如果没有购物，则给出相应信息，并隐藏按钮
                //this.labMessage.Text = "您还没有购物！";
                //this.labMessage.Visible = true;        //显示提示信息
                //this.lnkbtnCheck.Visible = false;      //隐藏“前往服务台”按钮
                //this.lnkbtnClear.Visible = false;      //隐藏“清空购物车”按钮
                //this.lnkbtnContinue.Visible = false;   //隐藏“继续购物”按钮
                WebMessageBox.Show("您还没有购物车", "buyCar.aspx");
            }
            else
            {
                hashCar = (Hashtable)Session["ShopCart"]; //获取其购物车
                if (hashCar.Count == 0)
                {
                //    //如果没有购物，则给出相应信息，并隐藏按钮
                //    //this.labMessage.Text = "您购物车中没有商品！";
                //    //this.labMessage.Visible = true;        //显示提示信息
                //    //this.lnkbtnCheck.Visible = false;      //隐藏“前往服务台”按钮
                //    //this.lnkbtnClear.Visible = false;      //隐藏“清空购物车”按钮
                //    //this.lnkbtnContinue.Visible = false;   //隐藏“继续购物”按钮
                    WebMessageBox.Show("您还没有购物车","buyCar.aspx");

                }
                else
                {
                //设置购物车内容的数据源
                dtTable = new DataTable();
                DataColumn column1 = new DataColumn("No");        //序号列
                DataColumn column2 = new DataColumn("id");    //商品ID代号
                DataColumn column3 = new DataColumn("imagename");  //商品名称
                DataColumn column4 = new DataColumn("Num");       //数量
                DataColumn column5 = new DataColumn("price");     //单价
                DataColumn column6 = new DataColumn("totalPrice");//总价
                dtTable.Columns.Add(column1);  //添加新列            
                dtTable.Columns.Add(column2);
                dtTable.Columns.Add(column3);
                dtTable.Columns.Add(column4);
                dtTable.Columns.Add(column5);
                dtTable.Columns.Add(column6);
                DataRow row;
                //对数据表中每一行进行遍历，给每一行的新列赋值
                foreach (object key in hashCar.Keys)
                {
                    row = dtTable.NewRow();
                    row["id"] = key.ToString();
                    row["Num"] = hashCar[key].ToString();
                    dtTable.Rows.Add(row);
                }
                //计算价格
                DataTable dstable;
                int i = 1;
                float price;//商品单价
                int count;  //商品数量
                float totalPrice = 0; //商品总价格
                foreach (DataRow drRow in dtTable.Rows)
                {
                    strSql = "select imagename,price from tb_Shop where id=" + Convert.ToInt32(drRow["id"].ToString());
                    dstable = dbObj.GetDataSetStr(strSql, "tb_Shop");
                    drRow["No"] = i;//序号
                    drRow["imagename"] = dstable.Rows[0][0].ToString();//商品名称
                    drRow["price"] = (dstable.Rows[0][1].ToString());//单价
                    price = float.Parse(dstable.Rows[0][1].ToString());//单价
                    count = Int32.Parse(drRow["Num"].ToString());
                    drRow["totalPrice"] = price * count; //总价
                    totalPrice += price * count; //计算合价
                    i++;
                }
                this.labTotalPrice.Text =   totalPrice.ToString();  //显示所有商品的价格
                this.gvShopCart.DataSource = dtTable.DefaultView;   //绑定GridView控件
                this.gvShopCart.DataKeyNames = new string[] { "id" };
                this.gvShopCart.DataBind();
            }
            }

        }

    }
    public void ST_check_Login()
    {

        if ((Session["UserName"] == null))
        {
            Response.Write("<script>alert('对不起！您不是会员，请先注册！');location='login(会员)/Default.aspx'</script>");
            Response.End();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       string use = users.Value.Trim();
      // WebMessageBox.Show("'" + use + "'");
       //Response.Write("<script>alert('" + use + "');</script>");
       //Response.Write("<script>alert('" + Session["username"] + "');</script>");
       //Response.Write("<script>alert('" + Session["UserName"] + "');</script>");
       if (Session["username"].ToString() == use)
       {
           op.InsertAddress(receiver.Text.Trim(), phone.Text.Trim(), dizhi.Value.Trim(), bianma.Text.Trim(), users.Value.Trim());
           WebMessageBox.Show("添加成功", "checkOut.aspx");
       }
       else
       {
           WebMessageBox.Show("用户名不匹配");
       }

    }

    protected void gvShopCart_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void gvShopCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        hashCar = (Hashtable)Session["ShopCart"];//获取其购物车
        //从Hashtable表中，将指定的商品从购物车中移除，其中，删除按钮(lnkbtnDelete)的CommandArgument参数值为商品ID代号
        int id = Convert.ToInt32(gvShopCart.DataKeys[e.RowIndex].Value);
        hashCar.Remove(id);
        Session["ShopCart"] = hashCar; //更新购物车
        Response.Redirect("checkOut.aspx");
    }
    protected void txtNum_TextChanged(object sender, EventArgs e)
    {
        hashCar = (Hashtable)Session["ShopCart"];  //获取其购物车
        foreach (GridViewRow gvr in this.gvShopCart.Rows)
        {

            TextBox otb = (TextBox)gvr.FindControl("txtNum"); //找到用来输入数量的TextBox控件 
            int count = Int32.Parse(otb.Text);//获得用户输入的数量值
            string id = gvr.Cells[1].Text;//得到该商品的ID代
            hashCar[id] = count;//更新hashTable表

        }
        Session["ShopCart"] = hashCar;//更新购物车
        //bind();

    }




    protected void Button2_Click(object sender, EventArgs e)
    {
        //执行插入
            string receiverName = this.TextBox1.Value.Trim();       //收货人姓名
            string receiverPhone = this.TextBox2.Value.Trim();     //手机
            string sendTime = this.TextBox4.Value.Trim();
            string sendType = this.TextBox5.Value.Trim();
            string receiverAddress = this.Textarea1.Value.Trim();//收货人详细地址
            string users = this.Text1.Value.Trim();
            string totalPrice = this.Text2.Value.Trim();
            string num = this.Text3.Value.Trim(); //总数，字符串格式
            string bianma = this.TextBox3.Value.Trim();
            int IntTotalNum = int.Parse(this.Text3.Value.Trim());     //商品总数
            string beizhu = this.Text4.Value.Trim(); 
            int IntOrderID = op.InsertOrder(receiverName, receiverPhone, sendTime, sendType, receiverAddress, users, totalPrice, num, bianma,beizhu);
            int IntshopID; //商品ID
            
            foreach (GridViewRow gvr in this.gvShopCart.Rows)
            {
                IntshopID = int.Parse(gvr.Cells[1].Text);
                
                op.InsertDetail(IntshopID, IntTotalNum, IntOrderID, float.Parse(totalPrice));
            }
            
            WebMessageBox.Show("成功下单！");
        }

    
 
    protected void Address_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}