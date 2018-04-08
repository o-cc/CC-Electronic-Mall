<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="login_Default" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>西西商城后台登陆页面</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <style type="text/css">
    .username1
    {
        
    }
    .img
    {
        width:100px;
        height:47px;
        float:right;
        }
    </style>
</head>
<body>
        <form id="form1" runat="server">
        <!-- contact-form -->
        <div class="message warning">
            <div class="inset">
                <div class="login-head">
                    <a href="../index.aspx"><h1>西西商城后台登陆 </h1></a>
                    <div class="alert-close"></div>
                </div>
                <div class="form">
                    <li>
                        <asp:TextBox ID="TextBox1" runat="server" type="text"  value="Username"  class="username"></asp:TextBox>
                       <%-- <input type="text"  value="Username"  class="username" >--%>
                        <a href="#" class=" icon user"></a>
                    </li>
                    <div class="clear"></div>
                    <li>
                        <asp:TextBox ID="TextBox2" runat="server" type="password" value="Password" class="password"></asp:TextBox>
                        <%--<input type="password" value="Password" class="password" >--%>
                         <a href="#" class="icon lock"></a>
                    </li>
                    
                    <div class="clear"></div>
                    <div style="font-family: 'Droid Sans', sans-serif;width:100%;height:46px;color: #B8B8B8;font-size:20px;outline: none;background: none;
	border:1px solid #ccc;border-radius:7px; position:relative">
                        <asp:TextBox ID="TextBox3" runat="server" style="width:200px;position:absolute; top:0; left:12px;"></asp:TextBox>
                        <asp:Image ID="Image1" class="img" runat="server" imageUrl="~/login/CheckCode.aspx"/>

                    </div>

                    <div class="submit">
                        <asp:Button ID="Button1" runat="server" Text="Sign in"  
                            onclick="Button1_Click"/>
                        <%--<input type="submit"  value="Sign in">--%>
                        <div class="clear"></div>
                    </div>
                   </div>
                </div>
            </div>
        <div class="clear"></div>
        <!--- footer --->
        <div class="footer">
            <p>版权所有©西西商城</p>
        </div>

    <script>

        //需求1：点击alert-close隐藏整个盒子
        var close = document.getElementsByClassName("alert-close")[0];
        var box = document.getElementsByClassName("message warning")[0];
        close.onclick = function () {
            box.style.display = "none";
        }

        //需求2：点击input时 input的value值为空
        var user = document.getElementsByClassName("username")[0];
        var paw = document.getElementsByClassName("password")[0];
        user.onfocus = function () {
            if (this.value === "Username") {
                this.value = "";
            }
        }
        user.onblur = function () {
            if (this.value === "") {
                user.value = "Username";
            }
        }
        paw.onfocus = function () {
            if (this.value === "Password") {
                this.value = "";
            }
        }
        paw.onblur = function () {
            if (this.value === "") {
                this.value = "Password";
            }
        }
    </script>


        </form>


</body>
</html>

