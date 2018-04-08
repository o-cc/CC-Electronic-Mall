<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addAdmit.aspx.cs" Inherits="background_admit_delete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bg_css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="admit">
    <div class="add-admit">
                        <div id="add-title">添加管理员:</div>
                        <div class="info">
                            <span class="in-span">管理员名：</span>
                           
                            <asp:TextBox ID="users" runat="server" class="ad-input"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="memberName" runat="server" 
                                ControlToValidate="users" ErrorMessage="4-16位(字母,数字,下划线,减号)"  ForeColor="Red" class="prompt prompt2" ValidationExpression="[a-zA-Z0-9_-]{4,16}"></asp:RegularExpressionValidator>
                            <%--<input type="text" class="ad-input">--%>
                        </div>
                        <div class="info">
                            <span class="in-span">密码：</span>
                            
                            <asp:TextBox ID="password" runat="server" class="ad-input"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="pwd" runat="server"  
                                ErrorMessage="请至少输入6位密码,1个数字，1个大写，1个小写" ForeColor="Red" class="prompt prompt3" ValidationExpression=".*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z]).*" 
                                ControlToValidate="password"></asp:RegularExpressionValidator>
                            <%--<input type="text" class="ad-input">--%>
                        </div>
                        <div class="info">
                            <span class="in-span">真实姓名：</span>
                            <asp:TextBox ID="realname" runat="server" class="ad-input"></asp:TextBox>
                            <%--<input type="text" class="ad-input">--%>
                        </div>
                        <div class="info">
                            <span class="in-span">手机：</span>
                            <asp:TextBox ID="phone" runat="server" class="ad-input"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="phoneNumber" runat="server" 
                                ControlToValidate="phone" ErrorMessage="请输入正确手机格式" ForeColor="Red" class="prompt" ValidationExpression="((1[3,5,8][0-9])|(14[5,7])|(17[0,6,7,8])|(19[7]))\d{8}"></asp:RegularExpressionValidator>
                            <%--<input type="text" class="ad-input">--%>
                        </div>
                        <asp:Button ID="submit" runat="server" Text="添加" class="sbm" 
                            onclick="submit_Click" />
                        <%--<input type="submit" class="sbm">--%>
                    </div>
    
        </div>
    </div>
    </form>
</body>
</html>
