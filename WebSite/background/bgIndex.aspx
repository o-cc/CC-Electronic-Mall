<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bgIndex.aspx.cs" Inherits="background_bgIndex" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style type="text/css">
            form
        {
            width:100%;
            height:100%;
         }
            </style>
    <link rel="stylesheet" href="bg_css.css">
    <script src="../js/jquery-1.11.1.js"></script>
    <script src="bg_js.js"></script>
</head>
<body>

    <form id="form1" runat="server">
        <div class="topbox">
    <div class="banner">
        <div class="l">
            <span class="ban-span">西西商城后台管理系统</span>
        </div>
        <div class="r">
            <span>您好</span>:<span><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span>
        </div>
    </div>
</div>
        <div class="content">
    <div class="con-aside l">
                <li class="list-item">管理员
                    <div class="item-box ">
                        <div class="link">
                            <a class="a" href="admit/addAdmit.aspx" target="top">添加管理员</a>
                            <a class="a" href="admit/delete.aspx" target="top">管理员账号管理</a>
                        </div>
                    </div>
                </li>
                <li class="list-item ">用户管理
                    <div class="item-box">
                        <div class="link">
                        <a class="a" href="admit/deleteMember.aspx" target="top">会员账号管理</a>
                        </div>
                    </div>
                </li>
                <li class="list-item ">库存管理
                    <div class="item-box">
                        <div class="link">
                            <a class="a" href="admit/addShop.aspx" target="top">添加商品</a>
                            <a class="a" href="admit/deleteShop.aspx" target="top">管理商品</a>
                        </div>
                    </div>
                </li>
                <li class="list-item ">订单管理
                    <div class="item-box">
                       <div class="link">
                            <a class="a" href="admit/OrderList.aspx?OrderList=00" target="top">未确认订单</a>
                            <a class="a" href="admit/OrderList.aspx?OrderList=01" target="top">已确认订单</a>
                            <a class="a" href="admit/OrderList.aspx?OrderList=10" target="top">未发货订单</a>
                            <a class="a" href="admit/OrderList.aspx?OrderList=11" target="top">已发货订单</a>
                        </div>
                    </div>
                </li>
                <li class="list-item ">系统管理
                    <div class="item-box">
                        <div class="link">
                            <a class="a" href="admit/wordManage.aspx" target="top">留言管理</a>
                         </div>
                    </div>
                </li>
                <li class="list-item">退出系统
                    <div class="item-box ">
                    
                    </div>
                </li>

    </div>
    <div class="contain">
        <div class="con-top">
            <%--<ul class="top-ul">

                <li class="top-item" >
                    <span class="item-span1">管理员</span>
                    <span class="item-span ">×</span>
                </li>
                <li class="top-item" name="用户管理">
                    <span class="item-span1">用户管理</span>
                    <span class="item-span">×</span>
                </li>
                <li class="top-item" name="库存管理">
                    <span class="item-span1">库存管理</span>
                    <span class="item-span">×</span>
                </li>
                <li class="top-item" name="订单管理">
                    <span class="item-span1">订单管理</span>
                    <span class="item-span">×</span>
                </li>
                <li class="top-item" name="系统管理">
                    <span class="item-span1">系统管理</span>
                    <span class="item-span">×</span>
                </li>
            </ul>--%>
        </div>
        <div class="actical">
            <div class="Desktop">西西商城后台系统</div>
             <iframe id="iframe1" name="top" width="100%" height="100%" ></iframe>


        </div>
    </div>
</div>
    </form>
</body>
</html>


