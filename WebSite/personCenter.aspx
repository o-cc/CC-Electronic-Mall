<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="personCenter.aspx.cs" Inherits="PersonCenter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="person-cen">
          
        <div class="person-aside">
            <div class="order">
                <p class="aside-t">订单中心</p>
                <a href="memberOrder.aspx?orderId=00" target="content" class="aside-a occ">待支付订单</a>
                <a href="memberOrder.aspx?orderId=01" target="content" class="aside-a occ">待收货订单</a>
                <a href="memberOrder.aspx?orderId=10" target="content" class="aside-a occ">已完成订单</a>
            </div>
            <div class="order">
                <p class="aside-t">个人中心</p>
                <a href="personInfo.aspx" target="_blank" class="aside-a">修改个人信息</a>
            </div>
            <div class="order">
                <p class="aside-t">留言管理</p>
                <a href="leaveWord.aspx" target="_blank" class="aside-a">点我留言</a>
                <a href="myWord.aspx" target="content" class="aside-a w">我的留言</a>
            </div>
        </div>
        <div class="person-content">
            <div class="first-show">
                <div class="show-order">
                    <div class="icon-1">
                        <img src="image/待支付订单.png"  alt="待支付订单" />
                        <span class="icon-1-span"> 待支付的订单  </span> 
                        <a href="memberOrder.aspx?orderId=00" target="content" class="icon-1-a">查看待支付的订单></a>
                    </div>
                    <div class="icon-2">
                        <img src="image/待收货订单.png"  alt="待收货订单" />
                        <span class="icon-1-span"> 待收货的订单  </span> 
                        <a href="memberOrder.aspx?orderId=01"  target="content" class="icon-1-a">查看待收货的订单></a>
                    </div>
                    
            </div>
                <div class="placehoder-per"></div>
                <div class="per-info-reset">
                <div class="show-order">
                    <div class="icon-1">
                        <img src="image/Person_photo.jpg"  alt="个人信息" />
                        <span class="icon-1-span"> 欢迎您 
                            <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
                        </span> 
                        
                        <a href="personInfo.aspx" target=_blank style="color:#ff6700;" class="icon-1-a">查看个人信息></a>
                    </div>          
            </div>
            </div>
            </div>
                <iframe id="iframe1" name="content" width="100%" height="100%" class="iframe"></iframe>
        </div>
                
    </div>




    </div>
</asp:Content>

