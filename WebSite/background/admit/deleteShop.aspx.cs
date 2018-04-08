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
    static int CheckType = -1;
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = op.SelectAllShop();
        GridView1.DataBind();
    }

    public void gvMemberBind()
    {
        string strSql = "select * from tb_Shop";
        DataTable dsTable = obj.GetDataSetStr(strSql, "tb_Shop");
        this.GridView1.DataSource = dsTable.DefaultView;
        this.GridView1.DataKeyNames = new string[] { "id" };
        this.GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        string strSql = "select count(*) from tb_Shop where id =  " + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        SqlCommand cmd = obj.GetCommandStr(strSql);
        if (Convert.ToInt32(obj.ExecScalar(cmd)) < 0)
        {
            WebMessageBox.Show("您已删除了最后一条！请添加商品");
        }
        else
        {
            string strSql1 = "delete from tb_Shop where id=" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            SqlCommand myCmd = obj.GetCommandStr(strSql1);
            obj.ExecNonQuery(myCmd);
            gvMemberBind();
        }
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        switch (CheckType)
        {
            case -1:
                this.gvMemberBind();
                break;
            case 0:
                GridView1.DataSource = op.SelectAllShop();
                break;
            case 1:
                GridView1.DataSource = op.SelectAllShop();
                break;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        op.updateShop(  Convert.ToInt32( receiver.Text.Trim()),typeName.Value.Trim(), url.Value.Trim(), imagename.Text.Trim(),Price.Text.Trim(),typeName.Value.Trim(),dizhi.Value.Trim());
        WebMessageBox.Show("更新成功！");
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
}