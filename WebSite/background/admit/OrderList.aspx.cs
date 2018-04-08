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
        pageBind();
    }
    string strSql;
    public void pageBind()
    {
        strSql = "select * from tb_OrderInfo where ";
        //获取Request["OrderList"]对象的值，确定查询条件
        string strOL = Request["OrderList"].Trim();
        switch (strOL)
        {
            case "00"://表示未确定
                strSql += "IsConfirm=0";
                break;
            case "01"://表示已确定
                strSql += "IsConfirm=1";
                break;
            case "10": //表示未发货
                strSql += "IsSend=0";
                break;
            case "11"://表示已发货
                strSql += "IsSend=1";
                break;
            case "20": //表示收货人未验收货物
                strSql += "IsEnd=0";
                break;
            case "21": //表示收货人已验收货物
                strSql += "IsEnd=1";
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
        string strSql = "select (case isConfirm when '0' then '未确认' when '1' then '已确认' end ) as isConfirm";
        strSql += ",(case isSend when '0' then '未发货' when '1' then '已发货' end ) as isSend";
        
        strSql += "  from tb_OrderInfo where OrderId=" + IntOrderID;
        DataTable dsTable = obj.GetDataSetStr(strSql, "tb_OrderInfo");
        return (dsTable.Rows[0][0].ToString() + "|" + dsTable.Rows[0][1].ToString() + "<Br>" );
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string strSql = "select * from tb_OrderInfo where  IsConfirm=0  and OrderId=" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        //判断该订单是否已被确认，如果未确认，不能删除该订单
        if (obj.GetDataSetStr(strSql, "tbOrderInfo").Rows.Count > 0)
        {
            //删除订单表中的信息
            string strDelSql = "delete from tb_OrderInfo where OrderId=" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            SqlCommand myCmd = obj.GetCommandStr(strDelSql);
            obj.ExecNonQuery(myCmd);
            //删除订单详细表中的信息
            string strDetailSql = "delete from tb_Detail where OrderID=" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            SqlCommand myDCmd = obj.GetCommandStr(strDetailSql);
            obj.ExecNonQuery(myDCmd);
        }
        else
        {
            WebMessageBox.Show("该订单还未确认，无法删除！");
            return;
        }
        //重新绑定
            pageBind();
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridView1.PageIndex = e.NewSelectedIndex;
        pageBind();
    }
}