using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class background_admit_delete : System.Web.UI.Page
{
    Operation op = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        if (users.Text.Trim() == "") {
            WebMessageBox.Show("不能为空");
        }
        op.InsertAdmit(users.Text.Trim(), password.Text.Trim(), realname.Text.Trim(), phone.Text.Trim());
        WebMessageBox.Show("添加成功");
    }
}