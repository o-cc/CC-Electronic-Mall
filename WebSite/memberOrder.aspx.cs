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
        if (Session["username"] == null)
        {
            WebMessageBox.Show("请登录");
        }
        else {
            pageBind();
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
     

    }
    string strSql;
    public void pageBind()
    {
        strSql = "select * from tb_OrderInfo where ";
        //获取Request["OrderList"]对象的值，确定查询条件
        string strOL = Request["orderId"].Trim();
        switch (strOL)
        {
            case "00"://表示未确定
                strSql += "isPayment=0";
                break;
            case "01"://表示未确定
                strSql += "IsReceive=0";
                break;
            case "10"://表示已完成
                strSql += "IsReceive=1 and isPayment=1";
                break;
            default:
                break;
        }
        strSql += "  order by date Desc";
        //获取查询信息，并将其绑定到GridView控件中
        DataTable dsTable = obj.GetDataSetStr(strSql, "tb_OrderInfo");
        this.GridView1.DataSource = dsTable.DefaultView;
        this.GridView1.DataKeyNames = new string[] { "OrderId" };
        this.GridView1.DataBind();
    }
    public string GetStatus(int IntOrderID)
    {
        string strSql = "select (case isReceive when '0' then '未确认收货' when '1' then '已确认收货' end ) as isReceive";
        strSql += ",(case isPayment when '0' then '未支付订单' when '1' then '已支付订单' end ) as isPayment";

        strSql += "  from tb_OrderInfo where OrderId=" + IntOrderID;
        DataTable dsTable = obj.GetDataSetStr(strSql, "tb_OrderInfo");
        return (dsTable.Rows[0][0].ToString() + "|" + dsTable.Rows[0][1].ToString() + "<Br>");
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {

    }

}