<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="login_会员__Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="../iconfont/iconfont.css">
</head>
<body>
    <form id="form1" runat="server">
    <div class="headerbox">
        <div class="header">
            <a href="../index.aspx" alt="西西商城">
                <img src="../image/sprite.head.png" alt="西西商城">
                <span>每天8杯水 给健康加油</span>
            </a>
        </div>
    </div>
    <div class="middlebox">
        <div class="wrap">
            <div class="mid-img"></div>
            <div class="login">
                <ul id="ul">
                    <li class="login-li active">登录</li>
                    <li class="login-li">注册</li>
                </ul>
                <div class="clear"></div>
                <div class="login-content" id="con">
                    <div class="deng">
                        <div class="input-group ">
                            <span class="span1" ><i class="span1-i  iconfont icon-wodejuhuasuan"></i></span>
                          <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="RequiredFieldValidator" ControlToValidate="dengluming"></asp:RequiredFieldValidator>--%>
                            <asp:TextBox ID="dengluming" runat="server" class="input12" placeholder="用户名"></asp:TextBox>
                        </div>
                        <div class="input-group " >
                            <span  class="span1"><i class="span1-i  iconfont icon-wodedingdan"></i></span>
                            
                         <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="RequiredFieldValidator" ControlToValidate="mima"></asp:RequiredFieldValidator>--%>
                            <asp:TextBox ID="mima" runat="server" class="input12" type="password" placeholder="密码"></asp:TextBox>
                        </div>
<%--                        <div class="input-group " >
                            <asp:TextBox ID="TextBox7" runat="server"  class="input1" type="text" placeholder="验证码"></asp:TextBox>
                            <asp:Image ID="Image2" runat="server" class="yanzhen" imageUrl="~/login/CheckCode.aspx"/>
                        </div>--%>
                        <div class="input-group " >
                            <a class="forget" href="#">忘记密码？</a>
                        </div>
                        <div class="clear">
                        </div>

                        <div class="input-group" >
                        
                            <asp:Button ID="Button2" runat="server" Text="登录" onclick="Button2_Click" class="submit"  Height="40px" 
                                Width="238px" 
                                CausesValidation="False" />
                        </div>
                    </div>
                    <div class="deng   login-act">
                        <div class="input-group">
                            <span class="span1" ><i class="span1-i  iconfont icon-shouye"></i>

                                <asp:RegularExpressionValidator ID="phoneNumber" runat="server" 
                                ControlToValidate="shouji" ErrorMessage="请输入正确手机格式" ForeColor="Red" class="prompt" ValidationExpression="((1[3,5,8][0-9])|(14[5,7])|(17[0,6,7,8])|(19[7]))\d{8}"></asp:RegularExpressionValidator>
                            </span>
                            <asp:TextBox ID="shouji" runat="server" class="input12" type="text" placeholder="手机号码"></asp:TextBox>
<%--                            <input class="input12" type="text" placeholder="手机号码">--%>
                        </div>
                        <div class="input-group">
                            <span class="span1" ><i class="span1-i  iconfont icon-wodejuhuasuan"></i>
                                <asp:RegularExpressionValidator ID="memberName" runat="server" 
                                ControlToValidate="yonghuming" ErrorMessage="4-16位(字母,数字,下划线,减号)"  ForeColor="Red" class="prompt prompt2" ValidationExpression="[a-zA-Z0-9_-]{4,16}"></asp:RegularExpressionValidator>
                            </span>
                            <asp:TextBox ID="yonghuming" runat="server" class="input12" placeholder="用户名"></asp:TextBox>
                            <%--<input class="input12" type="text" placeholder="用户名">--%>
                        </div>
                        <div class="input-group " >
                            <span  class="span1"><i class="span1-i  iconfont icon-wodedingdan"></i>
                                <asp:RegularExpressionValidator ID="pwd" runat="server"  
                                ErrorMessage="请至少输入6位密码,1个数字，1个大写，1个小写" ForeColor="Red" class="prompt prompt3" ValidationExpression=".*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z]).*" 
                                ControlToValidate="textboxpwd"></asp:RegularExpressionValidator>
                            </span>
                            <asp:TextBox ID="textboxpwd" runat="server" type="password" class="input12"  placeholder="密码"></asp:TextBox>
                            <%--<input  class="input12" type="password" placeholder="密码">--%>
                        </div>
                        <div class="input-group " >
                            <span  class="span1"><i class="span1-i  iconfont icon-wodedingdan"></i>
                                <asp:RequiredFieldValidator ID="realname" runat="server"  ErrorMessage="请输入姓名" ForeColor="Red" class="prompt " 
                                ControlToValidate="textbox4"></asp:RequiredFieldValidator>
                            </span>
                            <asp:TextBox ID="textbox4" runat="server" type="text" class="input12"  placeholder="真实姓名"></asp:TextBox>
                            <%--<input  class="input12" type="password" placeholder="密码">--%>
                        </div>
<%--                      <div class="input-group " >
                            <span  class="span1"><i class="span1-i  iconfont icon-wodedingdan"></i>
                                <asp:RequiredFieldValidator ID="sex" runat="server"  ErrorMessage="性别" ForeColor="Red" class="prompt " 
                                ControlToValidate="textbox5"></asp:RequiredFieldValidator>
                            </span>
                            <asp:TextBox ID="textbox5" runat="server" type="text" class="input12"  placeholder="性别"></asp:TextBox>
                            <input  class="input12" type="password" placeholder="密码">
                        </div>--%>
                        <%--<div class="input-group " >
                            <span  class="span1"><i class="span1-i  iconfont icon-wodedingdan"></i>
                                <asp:RequiredFieldValidator ID="address" runat="server"  ErrorMessage="请输入地址" ForeColor="Red" class="prompt " 
                                ControlToValidate="textbox6"></asp:RequiredFieldValidator>
                            </span>
                            <asp:TextBox ID="textbox6" runat="server" type="text" class="input12"  placeholder="地址"></asp:TextBox>
                            
                        </div>--%>
                        <div class="input-group " >
                            
                            <asp:TextBox ID="TextBox3" runat="server"  class="input1" type="text" placeholder="验证码"></asp:TextBox>
                            <asp:Image ID="Image1" runat="server" class="yanzhen" imageUrl="~/login/CheckCode.aspx"/>
                            <%--<input class="input1" type="password" placeholder="验证码">--%>
                           <%-- <span>dfasdfasdf</span>--%>

                        </div>

                        <div class="input-group" >
<%--                            <asp:Button ID="Button2" runat="server" Text="注册" class="submit"  Height="40px" Width="238px"
                               onclick="Button2_Click" />--%>
                            <asp:Button ID="Button1" runat="server" Text="注册" class="submit"  Height="40px" 
                                Width="238px" onclick="Button1_Click" />
                            <%--<input class="submit" type="submit" value="注册">--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom">
        <div class="bottom-cen">
            <div class="bottom-cen-area">
                <p class="fl bottom-logo"><a href="../index.html">西西</a></p>
                <p class="fl bottom-content">
                    <a href="#" target="_blank">隐私政策</a>
                    <a href="#" target="_blank">服务协议</a>
                    Copyright © 2012-2017 OC集团 版权所有 保留一切权利 <br>公安备案
                    <a href="#"> 苏公网安备3201140******号</a><em>|</em>
                    <a href="#"> 苏ICP备*****号-6</a><em>|</em>
                    增值电信业务经营许可证：苏B2-20130048号<em>|</em> <br>
                    网络文化经营许可证:
                    <a href="#">苏网文[2015] *****号</a>
                </p>
                <p class=" bottom-img">
                    <a href="#" class="fl">
                        <img src="../image/工商网监.jpg" alt="工商网监">
                    </a>
                    <a href="#">
                        <img src="../image/电子执照.png" alt="电子执照">
                    </a>
                    <a href="#" class="fl">
                        <img src="../image/可信网站.png" alt="">
                    </a>
                    <a href="#" class="fl">
                        <img src="../image/诚信网站.png" alt="">
                    </a>
                    <a href="#" class="fl">
                        <img src="../image/金城企业.jpg" alt="">
                    </a>

                </p>
            </div>
        </div>
    </div>

    <script >
        var ul = document.getElementById("ul");
        var lis = ul.children;
        var con = document.getElementById("con");
        lis[0].onclick = function () {
            this.className = "login-li active";
            lis[1].className = "login-li";
            con.children[1].className = "deng login-act";
            con.children[0].className = "deng";
        }
        lis[1].onclick = function () {
            this.className = "login-li active";
            lis[0].className = "login-li";
            con.children[0].className = "deng login-act";
            con.children[1].className = "deng";
        }
//        function Button3_onclick() {
//        string check = "";
//            string check = Request.Cookies["CheckCode"].Value;
//            if (check != TextBox7.Text.Trim())
//                WebMessageBox.Show("验证码错误！");
//            if (op.login(dengluming.Text.Trim(), mima.Text.Trim()).Tables[0].Rows.Count > 0)
//            {
//                Session.Add("users", dengluming.Text.Trim());
//                Response.Redirect("../index.aspx");
//            }
//            else
//            {
//                WebMessageBox.Show("用户名或密码不正确", "Default.aspx");
//            }
//        }

    </script>
    </form>
</body>
</html>

