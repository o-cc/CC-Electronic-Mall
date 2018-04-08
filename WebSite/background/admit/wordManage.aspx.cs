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
        
        DataList1.DataSource = op.selectBgWord();
        DataList1.DataBind();
        
           
        
    }




    protected void LinkButton2_Command(object sender, CommandEventArgs e)
    {
        //删除
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        bool blConfirm = Convert.ToBoolean(this.chkConfirm.Checked);
        op.updateWord(Convert.ToInt32(Id.Value.Trim()), Textarea2.Value.Trim(), blConfirm, DateTime.Now );
        WebMessageBox.Show("回复成功！");
        //Response.Write("<script>alert('" + blConfirm + "');</script>");
        //Response.Write("<script>alert('" + Convert.ToInt32(Id.Value.Trim()) + "');</script>");
    }



}