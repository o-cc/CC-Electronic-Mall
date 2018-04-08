using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_会员__Default : System.Web.UI.Page
{
    Operation op = new Operation();
    Random rnd = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["username"] = null;
        string xx = dengluming.Text.Trim();
        if (xx == "")
        {
            Session["UserName"] = null;
            
        }
        else {
            Session["UserName"] = xx;
            
        }
        
    }

    public string RandNum()
    {
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        string user = yonghuming.Text.Trim();
        if (op.SelectInfo(user).Tables[0].Rows.Count != 0)
            WebMessageBox.Show("用户名已存在，请重新输入用户名");
        
        string check = Request.Cookies["CheckCode"].Value;
        if (check != TextBox3.Text.Trim())
            WebMessageBox.Show("验证码错误！");
        op.InsertMember(shouji.Text.Trim(), yonghuming.Text.Trim(), textboxpwd.Text.Trim(), textbox4.Text.Trim());
        WebMessageBox.Show("注册成功", "Default.aspx");
    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["ShopCart"] = null;
        Session["username"] = dengluming.Text.Trim();
        if (op.memberLogin(dengluming.Text.Trim(), mima.Text.Trim()).Tables[0].Rows.Count > 0)
        {
            Session.Add("users", dengluming.Text.Trim());
           // string a= Session["users"].ToString();
            
            Response.Redirect("../index(Member).aspx");
        }
        else
        {
            WebMessageBox.Show("用户名或密码不正确", "Default.aspx");
        }
        
    }
}