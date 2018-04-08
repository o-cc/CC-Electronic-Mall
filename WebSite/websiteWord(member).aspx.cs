using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class websiteWord_member_ : System.Web.UI.Page
{
    Operation op = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataList1.DataSource = op.selectWord();
        DataList1.DataBind();
    }
}