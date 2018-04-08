using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class leaveWord : System.Web.UI.Page
{
    Operation op = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            WebMessageBox.Show("您还没登录，请登录再留言 ");

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            WebMessageBox.Show("您还没登录，请登录再留言 ");
            
        }
        else {
            string use = Session["username"].ToString();
            op.InsertWord(use, leaveIn.Value.Trim(), leaveText.Value.Trim());
            WebMessageBox.Show("留言成功！");

        }
            }
}