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

public partial class background_admit_addAdmit : System.Web.UI.Page
{
    Operation op = new Operation();
    DBClass obj = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ModifyBind();//显示订单状态
            rpBind();//显示订单中商品的详细信息
        }
        DataList1.DataSource = op.SelectOrder(Convert.ToInt32(Request["OrderId"].Trim()));
        DataList1.DataBind();
        DataList2.DataSource = op.SelectOrder(Convert.ToInt32(Request["OrderId"].Trim()));
        DataList2.DataBind();

    }

    public void rpBind()
    {

        string strSql = "select b.id, b.imagename,o.num,o.totalPrice,b.price,o.beizhu ";
        strSql += "from tb_OrderInfo o, tb_Shop b,tb_Detail where tb_Detail.shopID=b.id and  tb_Detail.OrderID='" + Convert.ToInt32(Request["OrderId"].Trim()) + "' and o.orderId=" + Convert.ToInt32(Request["OrderId"].Trim());
        DataTable dsTable = obj.GetDataSetStr(strSql, "tb_Detail");
        this.GridView1.DataSource = dsTable.DefaultView;
        this.GridView1.DataBind();
    }
    public void ModifyBind()
    {
        string strSql = "select isPayment,isReceive from tb_OrderInfo where OrderId=" + Convert.ToInt32(Request["OrderId"].Trim());
        DataTable dsTable = obj.GetDataSetStr(strSql, "tb_OrderInfo");
         this.chkConfirm.Checked = Convert.ToBoolean(dsTable.Rows[0][0].ToString());    //是否已经支付
         this.chkConsignment.Checked = Convert.ToBoolean(dsTable.Rows[0][1].ToString());//是否已收货
        //对复选框按钮的隐藏，订单状态的顺序为
         if (this.chkConfirm.Checked == false)  // c= false
        {
            this.chkConsignment.Disabled = true;//发货复选框按钮隐藏 
            this.chkConfirm.Disabled = true;
        }
        else
        {
            if (this.chkConsignment.Checked == false)
            {
                this.chkConfirm.Disabled = true;   //确认复选框按钮不可用
                //this.chkPigeonhole.Visible = false;//归档复选框按钮隐藏
            }
            else
            {

                this.Button1.Visible = false;//修改按钮不可见            
            }
        }
    }




    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //bool blConfirm = Convert.ToBoolean(this.chkConfirm.Checked); //是否被确认
        bool blSend = Convert.ToBoolean(this.chkConsignment.Checked);//是否已发货

       // 修改订单表中订单状态
        string strSql = "update tb_OrderInfo ";
        strSql += "  set isReceive='" + blSend + "'";
        strSql += "where orderId=" + Convert.ToInt32(Request["OrderId"].Trim());
        SqlCommand myCmd = obj.GetCommandStr(strSql);
        obj.ExecNonQuery(myCmd);
        WebMessageBox.Show("修改成功！");
        //Response.Write("<script>alert('" + blConfirm + "');</script>");
    }


}