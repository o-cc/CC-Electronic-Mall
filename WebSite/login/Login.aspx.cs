using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_Default : System.Web.UI.Page
{
    Operation op = new Operation();
    Random rnd = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
           //Label1.Text = RandNum().ToString() ;
        string xx = TextBox1.Text.Trim();
        Session["user"] = xx;

    }
    public string RandNum() {
        string StrChar = "1,2,3,4,5,6,7,8,9,0,q,w,e,r,t,y,u,i,o,p,a,s,d,f,g,h,j,k,l,z,x,c,v,b,n,m";//,Q,W,E,R,T,Y,U,I,O,P,A,S,D,F,G,H,J,K,L,Z,X,C,V,B,N,M
        string[] VcArry = StrChar.Split(',');
        string check = "";
        for (int i = 0; i < 4; i++)
        {
            int t = rnd.Next(35);
            check += VcArry[t];
        }
        return check;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string check = Request.Cookies["CheckCode"].Value;
        if (check != TextBox3.Text.Trim())
            WebMessageBox.Show("验证码错误！");

        if (op.login(TextBox1.Text, TextBox2.Text.Trim()).Tables[0].Rows.Count > 0)
        {
            Session.Add("users", TextBox1.Text.Trim());
            Response.Redirect("../background/bgIndex.aspx");
        }
        else {
            WebMessageBox.Show("用户名或密码不正确","login.aspx");
        }
    }


    public string GeneratCheckCode()
    {
        char code;
        int num;
        string check = "";
        for (int i = 0; i < 4; i++)//加循环成四个随机数
        {
            num = rnd.Next();

            if (num % 2 == 0)//生成一个随机字母加数字
            {
                code = Convert.ToChar(Convert.ToInt32('0') + num % 10);
            }
            else
                code = Convert.ToChar(Convert.ToInt32('A') + num % 26);
            check += code;//组合四个随机数成验证码

        }
        return check;
    }

}