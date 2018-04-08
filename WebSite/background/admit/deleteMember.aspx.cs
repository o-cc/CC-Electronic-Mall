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
        GridView1.DataSource = op.SelectMember();
        GridView1.DataBind();
        GridView2.DataSource = op.SelectMemberAddress();
        GridView2.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public void gvMemberBind()
    {
        string strSql = "select * from tb_Member";
        DataTable dsTable = obj.GetDataSetStr(strSql, "tb_Member");
        this.GridView1.DataSource = dsTable.DefaultView;
        this.GridView1.DataKeyNames = new string[] { "id" };
        this.GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string strSql = "delete from tb_Member where id=" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        SqlCommand myCmd = obj.GetCommandStr(strSql);
        obj.ExecNonQuery(myCmd);
        gvMemberBind();

    }




    public void gvMemberBind1()
    {
        string strSql = "select * from tb_ReceiverAddress";
        DataTable dsTable1 = obj.GetDataSetStr(strSql, "tb_ReceiverAddress");
        this.GridView2.DataSource = dsTable1.DefaultView;
        this.GridView2.DataKeyNames = new string[] { "receiverId" };
        this.GridView2.DataBind();
    }


    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string strSql = "delete from tb_ReceiverAddress where receiverId=" + Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value.ToString());
        SqlCommand myCmd = obj.GetCommandStr(strSql);
        obj.ExecNonQuery(myCmd);
        gvMemberBind1();
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}