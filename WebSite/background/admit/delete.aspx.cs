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
        GridView1.DataSource = op.SelectAdmit();
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public void gvMemberBind()
    {
        string strSql = "select * from db_Admit";
        DataTable dsTable = obj.GetDataSetStr(strSql, "dbAdmit");
        this.GridView1.DataSource = dsTable.DefaultView;
        this.GridView1.DataKeyNames = new string[] { "id" };
        this.GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string strSql = "delete from db_Admit where id=" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        SqlCommand myCmd = obj.GetCommandStr(strSql);
        obj.ExecNonQuery(myCmd);
        gvMemberBind();

    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {

    }

}