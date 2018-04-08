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
public partial class personInfo : System.Web.UI.Page
{
    Operation op = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null) {
            WebMessageBox.Show("对不起，您还没登录！", "login(会员)/Default.aspx");
        }
        else
        {

         DataList1.DataSource = op.SelectMember(Session["username"].ToString());
         DataList1.DataBind();
         DataList2.DataSource = op.SelectMemberAddress(Session["username"].ToString());
         DataList2.DataBind();


        }
       
    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "delete") {
            op.DeleteAddress(Convert.ToInt32(e.CommandArgument.ToString()));
            WebMessageBox.Show("删除成功！");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        op.updateAddress(Convert.ToInt32(TextBox5.Value.Trim()), TextBox1.Value.Trim(), TextBox2.Value.Trim(), Textarea1.Value.Trim(), TextBox3.Value.Trim(), Session["username"].ToString());
        WebMessageBox.Show("修改成功！");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        DataSet ds = op.SelectMemberName(Convert.ToInt32(PersonId.Value.Trim()), Users.Value.Trim());
        if (ds.Tables[0].Rows.Count > 0)
        {
            WebMessageBox.Show("用户名重复，请重新输入!");
        }
        else
        {
            if (Paw.Value.Trim() != Cpaw.Value.Trim())
            {
                WebMessageBox.Show("输入的密码不一致!");
            }
            if (Paw.Value.Trim() == "")
            {

                op.updateMember(Convert.ToInt32(PersonId.Value.Trim()), Users.Value.Trim(), Phone.Value.Trim(), RealName.Value.Trim());
                WebMessageBox.Show("修改成功！","personInfo.aspx");
            }
            else
            {

                op.updateMember(Convert.ToInt32(PersonId.Value.Trim()), Users.Value.Trim(), Phone.Value.Trim(), RealName.Value.Trim(), Cpaw.Value.Trim());
                WebMessageBox.Show("修改成功！", "personInfo.aspx");
            }

        }
    }
    protected void LinkButton20_Click(object sender, EventArgs e)
    {
        Session["UserName"] = null;
        Response.Redirect("index.aspx");
    }
}