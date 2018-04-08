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

public partial class background_bgIndex : System.Web.UI.Page
{
    Operation op = new Operation();
    DBClass obj = new DBClass();
    protected void Page_Load(object sender, EventArgs e)
    {



        string user = Convert.ToString(Session["user"]); //登录页面存取Session["user"]值
        if (op.Logon(user).Tables[0].Rows.Count == 0)
            WebMessageBox.Show("请登录后方可进入后台", "../login/Login.aspx");
        else
            Label1.Text = Session["user"].ToString();

    }

    public void Page_Exit()
    {
        Session["users"] = "";
        Response.Write("bgIndex.aspx");
    }

   


}