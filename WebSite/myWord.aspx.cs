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
            WebMessageBox.Show("请登录!");

        }
        else { 
        DataList1.DataSource = op.selectWord(Session["username"].ToString());
        DataList1.DataBind();
        }

    }


}