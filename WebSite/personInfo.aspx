<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personInfo.aspx.cs" Inherits="personInfo" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
    <link href="css/personInfo.css" rel="stylesheet" type="text/css" />
	<style></style>
</head>
<body>

    <form id="form1" runat="server">
    <div class="screen1" >
        <div class="di">
             <div class="add-info1 ">
                <div class="guanbi1">
                    <span>修改收货信息</span><span class="right1">×</span>
                </div>
                <div class="info">
                      <div class="alert-add" style="display:none;">
                         <span class="l">ID</span>
                         <input type="text" runat="server" ID="TextBox5"  value="id" ReadOnly />
                      </div>
                     <div class="alert-add">
                         <span class="l">收货人：</span>
                         <input type="text" ID="TextBox1" runat="server" />
                    
                    </div>
                    <div class="alert-add">
                        <span class="l">联系方式：</span>
                    
                        <input type="text" ID="TextBox2" runat="server"  />
                    </div>
                    <div class="alert-add">
                        <span class="o">收货地址：</span>
                        <textarea runat="server" class="dizhi1" name="dizhi" placeholder="收货人地址 " ID="Textarea1"></textarea>
                     </div>
                    <div class="alert-add">
                         <span class="l">邮政编码：</span>
                         <input type="text" runat="server" ID="TextBox3"  />
                    </div>

                <div class="clear"></div>
                <div class="alert-add bom">
                    <asp:Button ID="Button2" runat="server" Text="确认并修改"  class="btn1" 
                        style="margin-left:112px;" onclick="Button2_Click" CausesValidation="False"/>
                </div>
                <div class="clear"></div>
                <div class="alert-add">
                </div>
                </div>
            </div>
        </div>
        <div class="yh">
            <div class="add-info1 ">
                <div class="guanbi1">
                    <span>修改个人信息</span><span class="right1">×</span>
                </div>
                <div class="info">
                      <div class="alert-add" style="display:none;">
                         <span class="l">ID</span>
                         <input type="text" runat="server" ID="PersonId"  value="id" ReadOnly />
                      </div>
                     <div class="alert-add">
                         <span class="l">用户名：</span>
                         <input type="text" ID="Users" runat="server" />
                    
                    </div>
                    <div class="alert-add">
                        <span class="l">联系方式：</span>
                    
                        <input type="text" ID="Phone" runat="server"  />
                    </div>
                    <div class="alert-add">
                        <span class="l">真实姓名：</span>
                         <input type="text" ID="RealName" runat="server"  />
                     </div>
                    <div class="alert-add">
                        <span class="mima" style="width:100%;">点击修改密码</span>
                     </div>
                     <div class="alert-add ou" style="opacity:0">
                        <span class="mima" style="width:100%;">点我合上</span>
                     </div>
                    <div class="mima-hide">
                        <div class="alert-add">
                         <span class="l">新密码</span>
                         <input type="password" runat="server" ID="Paw"  />
                        </div>
                        <div class="alert-add">
                         <span class="l">请确认密码：</span>
                         <input type="password" runat="server" ID="Cpaw"  />
                            <span class="hide-mima" style="color:Red;font-size:14px;display:none;">密码不一致</span>
                        </div>
                    </div>
                    

                <div class="clear"></div>
                <div class="alert-add bom">
                    <asp:Button ID="Button1" runat="server" Text="确认并修改"  class="btn1" 
                        style="margin-left:112px;" onclick="Button1_Click" CausesValidation="False"/>
                </div>
                <div class="clear"></div>
                <div class="alert-add">
                </div>
                </div>
            </div>
        </div>   
        </div>	
	<div class="person-info">
		<div class="info-con">
			<div class="info-top">
				<div class="xixi l" style="line-height:100px;">西西账号</div>
				<div class="r out"><asp:LinkButton ID="LinkButton20" runat="server" onclick="LinkButton20_Click" style="text-decoration:none;color:#ccc;">退出</asp:LinkButton></div>
			</div>
			<div class="info-title">
					<span class="info-info l">个人信息</span>
				</div>
			<div class="info-cont">
				<div class="cont-top h">
				<div class="xixi color ">基础资料</div>
					<div class="base-info">
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                <p style="display:none;">id:<span class="info-span"><%# DataBinder.Eval(Container.DataItem,"id")%></span></p>
                                <p>用户名:  <span class="info-span"><%# DataBinder.Eval(Container.DataItem,"users")%></span></p>
						        <p>手机:    <span class="info-span"><%# DataBinder.Eval(Container.DataItem,"phone")%></span></p>
						        <p>真实姓名:<span class="info-span"><%# DataBinder.Eval(Container.DataItem,"realname")%></span></p>
						        <p>注册日期:<span class="info-span"><%# DataBinder.Eval(Container.DataItem,"date")%></span></p>
                            </ItemTemplate>
                        </asp:DataList>
                        
                        <a href="#" class="btn">编辑</a>
					</div>
					<div class="bom-color"></div>
				</div>
				<div class="cont-top">
				<div class="xixi color">我的收货地址</div>
					<div class="base-info margin-l">
                        <asp:DataList ID="DataList2" class="datalist2" runat="server" 
                            onitemcommand="DataList2_ItemCommand">
                        <ItemTemplate>
                            <div class="address">
                            <div class="hide"><%# DataBinder.Eval(Container.DataItem,"receiverId")%></div>
                                <p>收货人:  <span class="add-b"><%# DataBinder.Eval(Container.DataItem,"receiverName")%></span></p>
						        <p>联系方式:<span class="add-b"><%# DataBinder.Eval(Container.DataItem,"receiverPhone")%></span></p>
						        <p>收货地址:</p>
                                <p class="add-b"><%# DataBinder.Eval(Container.DataItem,"receiverAddress")%></p>
						        <p>邮政编码:<span class="add-b"><%# DataBinder.Eval(Container.DataItem,"bianma")%></span></p>
                           
                                <a href="#" class="addr-btn oc">修改 </a>
                            <asp:LinkButton ID="LinkButton3" class="addr-btn r" runat="server" CommandName="delete" CommandArgument =<%#DataBinder.Eval(Container.DataItem, "receiverId")%>>删除</asp:LinkButton>
                            </div>

                            </ItemTemplate>
                        </asp:DataList>
					</div>
				</div>

			</div>
		</div>
	</div>
    <div class="footer">
    </div>

</form>
    <script src="js/jquery-1.11.1.js"></script>
    <script type="text/javascript">

        $(function () {

            for (var i = 0; i < $(".oc").length; i++) {
                $(".oc").eq(i).click(function () {
                    $(".screen1").show();
                    $(".yh").hide();
                    $(".di").show();
                    //给各个input绑定值
                    //获取地址id
                    $("#TextBox5").val($(this).siblings("div").eq(0).text());
                    $("#TextBox1").val($(this).siblings("p").eq(0).children("span").text()); //收货人
                    $("#TextBox2").val($(this).siblings("p").eq(1).children("span").text()); //phone
                    $("#Textarea1").val($(this).siblings("p").eq(3).text()); //地址
                    $("#TextBox3").val($(this).siblings("p").eq(4).children("span").text()); //编码
                });
            }
            $(".guanbi1").click(function () {
                $(".screen1").hide();
            });

            //点击合上打开密码
            $(".mima").click(function () {
                $(".mima-hide").show();
                $(this).hide();
                $(".ou").css("opacity", "1");
            });
            $(".ou").click(function () {
                $(this).css("opacity", "0");
                $(".mima-hide").hide();
                $(".mima").show();
            });


            //判断密码是否一致
            $("#Cpaw").on("input", function () {
                if ($("#Cpaw").val() != $("#Paw").val()) {
                    $(".hide-mima").show();
                    $("#Button1").attr("disabled", "disabled");
                } else {
                    $(".hide-mima").hide();
                    $("#Button1").removeAttr("disabled");
                }
            });
            $("#Paw").on("input", function () {
                if ($("#Cpaw").val() != $("#Paw").val()) {
                    $(".hide-mima").show();
                    $("#Button1").attr("disabled", "disabled");
                } else {
                    $(".hide-mima").hide();
                    $("#Button1").removeAttr("disabled");
                }
            });
            //密码结束
            $(".btn").click(function () {
                $(".screen1").show();
                $(".yh").show();
                $(".di").hide();

                var spans = $("#DataList1").find("span");
                $("#PersonId").val(spans.eq(0).text().trim());
                $("#Users").val(spans.eq(1).text().trim());
                $("#Phone").val(spans.eq(2).text().trim());
                $("#RealName").val(spans.eq(3).text().trim());
            })


        });

    </script>
</body>
</html>
