<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shopInfo(Member).aspx.cs" Inherits="shopInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/cssReset.css">
    <link rel="stylesheet" href="css/css.css">
    <link rel="stylesheet" href="iconfont/iconfont.css">
    <link href="css/shopInfo.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.11.1.js"></script>
    <script src="js/js.js"></script>
    <style type="text/css">
        .datalist1>tbody>tr
        {
            float:left;
        }
        .dl9>tbody>tr
        {
            float:left;
            }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <!--顶部导航-->
    <div class="topbanner">
        <div class="baner-cen">
            <!--logo-->
            <div class="ban-logo">
                <a href="index(Member).aspx">
                    <img id="logo-img" src="image/sprite.head.png" alt="">
                </a>
            </div>
            <!--个人中心购物车-->
            <ul class="ban-r">
                <li class="r-li-r"><a href="buyCar.aspx"><i class="r-li-r-i iconfont icon-gouwuche"></i></a></li>
                <li class="r-li-c">
                    <a href="#" target="_blank"><img src="image/menber2.png" alt="">   </a>
                </li>
                <li class="r-li-l">
                    <input type="text" placeholder="ihponeX">
                    <a href="#"><i class="r-li-l-i iconfont icon-sousuo"></i></a>
                </li>
            </ul>
            <!--导航nav/-->
            <ul class="ban-nav">
                 <li class="ban-nav-li">
                     <a class="ban-nav-li-a" href="#">西西商城</a>
                 </li> 
                 <li class="ban-nav-li">
                     <a class="ban-nav-li-a" href="#">手机</a>
                 </li> 
                 <li class="ban-nav-li">
                     <a class="ban-nav-li-a" href="#">电器城</a>
                 </li> 
                 <li class="ban-nav-li">
                     <a class="ban-nav-li-a" href="#">西西超市</a>
                 </li> 
                 <li class="ban-nav-li">
                     <a class="ban-nav-li-a" href="#">西西生活</a>
                 </li> 
                 <li class="ban-nav-li">
                     <a class="ban-nav-li-a" href="#">有我你更美</a>
                 </li> 
                 <li class="ban-nav-li">
                     <a class="ban-nav-li-a" href="#">智能·配件</a>
                 </li> 
                 <li class="ban-nav-li">
                     <a class="ban-nav-li-a" href="websiteWord.aspx">西西留言</a>
                 </li> 
            </ul>
                <%--<asp:DataList class="datalist1" ID="DataList1" runat="server">
                                <ItemTemplate>
                                      <ul class="ban-nav">
                                        <li class="ban-nav-li">
                                            <a class="ban-nav-li-a" href="#"><%# DataBinder.Eval(Container.DataItem,"typename") %></a>
                                        </li> 
                                       </ul>
                                </ItemTemplate>
                            </asp:DataList>--%>
                   
               
        </div>
     </div>
          <!--这个是个人中心显示-->
    <div class="mem2">
        <asp:Label ID="Label123" runat="server" Text="游客"></asp:Label>你好 
        <br />      
       <a href="#">个人中心</a><br />
        <asp:LinkButton ID="LinkButton20" runat="server" onclick="LinkButton20_Click">退出再见</asp:LinkButton>
     </div> 

    <div class="demo">
    <asp:DataList ID="DataList3" class="datalist3" runat="server" 
            onitemcommand="DataList3_ItemCommand">
        <ItemTemplate>
                <div class="alert">
                    <!--居中-->
                   <div class="alert-cen">
                      <table class="alert-tab">
                          <tr>
                            <td class="alert-td">
                                <asp:LinkButton ID="LinkButton14" runat="server" class="alert-a"  CommandName="detailSee"  Font-Underline=false  CommandArgument =<%#DataBinder.Eval(Container.DataItem, "id")%>>
                             
                                 <div class="alert-img">
                                    <asp:Image class="hot-img border" ID="Image1" runat="server" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "imageurl") %>'  /> 
                                  </div>
                                   <div class="alert-a-div"><%# DataBinder.Eval(Container.DataItem,"imagename") %></div>
                                    <p class="alert-a-p"><%# DataBinder.Eval(Container.DataItem,"price") %></p>
                               </asp:LinkButton>
                              </td>
                            </tr>
                         </table>   
                     </div>
                 </div>           
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList4" class="datalist4" runat="server" 
            onitemcommand="DataList4_ItemCommand">
        <ItemTemplate>
                <div class="alert">
                    <!--居中-->
                   <div class="alert-cen">
                      <table class="alert-tab">
                          <tr>
                            <td class="alert-td">
                                <asp:LinkButton ID="LinkButton15" runat="server"  class="alert-a" CommandName="detailSee"  Font-Underline=false  CommandArgument =<%#DataBinder.Eval(Container.DataItem, "id")%>>
                              
                                 <div class="alert-img">
                                    <asp:Image class="hot-img border" ID="Image1" runat="server" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "imageurl") %>'  />
                                     
                                  </div>
                                   <div class="alert-a-div"><%# DataBinder.Eval(Container.DataItem,"imagename") %></div>
                                    <p class="alert-a-p"><%# DataBinder.Eval(Container.DataItem,"price") %></p>
                               </asp:LinkButton>
                              </td>
                            </tr>
                         </table>   
                     </div>
                 </div>           
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList5" class="datalist5" runat="server" onitemcommand="DataList5_ItemCommand">
        <ItemTemplate>
                <div class="alert">
                    <!--居中-->
                   <div class="alert-cen">
                      <table class="alert-tab">
                          <tr>
                            <td class="alert-td">
                                <asp:LinkButton ID="LinkButton16" runat="server" class="alert-a"  CommandName="detailSee"  Font-Underline=false  CommandArgument =<%#DataBinder.Eval(Container.DataItem, "id")%>>
                              
                                 <div class="alert-img">
                                    <asp:Image class="hot-img border" ID="Image1" runat="server" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "imageurl") %>'  />
                                  </div>
                                   <div class="alert-a-div"><%# DataBinder.Eval(Container.DataItem,"imagename") %></div>
                                    <p class="alert-a-p"><%# DataBinder.Eval(Container.DataItem,"price") %></p>
                               </asp:LinkButton>
                              </td>
                            </tr>
                         </table>   
                     </div>
                 </div>           
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList6" class="datalist6" runat="server" 
            onitemcommand="DataList6_ItemCommand">
        <ItemTemplate>
                <div class="alert">
                    <!--居中-->
                   <div class="alert-cen">
                      <table class="alert-tab">
                          <tr>
                            <td class="alert-td">
                                <asp:LinkButton ID="LinkButton17" runat="server" class="alert-a" CommandName="detailSee"  Font-Underline=false  CommandArgument =<%#DataBinder.Eval(Container.DataItem, "id")%>>
                              
                                 <div class="alert-img">
                                    <asp:Image class="hot-img border" ID="Image1" runat="server" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "imageurl") %>'  />
                                     
                                  </div>
                                   <div class="alert-a-div"><%# DataBinder.Eval(Container.DataItem,"imagename") %></div>
                                    <p class="alert-a-p"><%# DataBinder.Eval(Container.DataItem,"price") %></p>
                               </asp:LinkButton>
                              </td>
                            </tr>
                         </table>   
                     </div>
                 </div>           
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList7" class="datalist7" runat="server" 
            onitemcommand="DataList7_ItemCommand">
        <ItemTemplate>
                <div class="alert">
                    <!--居中-->
                   <div class="alert-cen">
                      <table class="alert-tab">
                          <tr>
                            <td class="alert-td">
                                <asp:LinkButton ID="LinkButton18" runat="server" class="alert-a" CommandName="detailSee"  Font-Underline=false  CommandArgument =<%#DataBinder.Eval(Container.DataItem, "id")%>>
                              
                                 <div class="alert-img">
                                    <asp:Image class="hot-img border" ID="Image1" runat="server" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "imageurl") %>'  />
                                     
                                  </div>
                                   <div class="alert-a-div"><%# DataBinder.Eval(Container.DataItem,"imagename") %></div>
                                    <p class="alert-a-p"><%# DataBinder.Eval(Container.DataItem,"price") %></p>
                               </asp:LinkButton>
                              </td>
                            </tr>
                         </table>   
                     </div>
                 </div>           
        </ItemTemplate>
    </asp:DataList>
    <asp:DataList ID="DataList8" runat="server" class="datalist8" 
            onitemcommand="DataList8_ItemCommand">
    <ItemTemplate>
                <div class="alert">
                    <!--居中-->
                   <div class="alert-cen">
                      <table class="alert-tab">
                          <tr>
                            <td class="alert-td">
                                <asp:LinkButton ID="LinkButton19" runat="server" class="alert-a" CommandName="detailSee"  Font-Underline=false  CommandArgument =<%#DataBinder.Eval(Container.DataItem, "id")%>>
                              
                                 <div class="alert-img">
                                    <asp:Image class="hot-img border" ID="Image1" runat="server" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "imageurl") %>'  />
                                     
                                  </div>
                                   <div class="alert-a-div"><%# DataBinder.Eval(Container.DataItem,"imagename") %></div>
                                    <p class="alert-a-p"><%# DataBinder.Eval(Container.DataItem,"price") %></p>
                              </asp:LinkButton>
                              </td>
                            </tr>
                         </table>   
                     </div>
                 </div>           
        </ItemTemplate>
    </asp:DataList>
    
    </div>

<div  class="info-content">
    <div class="info-top">
        <asp:Label ID="Label1" runat="server" Text="Label" class="Label1"></asp:Label>
    </div>
    <div class="info-cent">
        <div class="info-aside">
          <asp:Image ID="ImageMapPhoto" class="shop-img" runat="server" ImageUrl=""/>
        </div>
            <div class="aside-r">
                <div class="aside-input">
                    <div class="shop-name">
                        <asp:Label ID="txtName" runat="server" Text="Label"></asp:Label>
                        <%--<asp:textbox id="txtName" runat="server"></asp:textbox>--%> 
                    </div>
                    <div class="intrdu">
                        <asp:Label ID="txtCategory" runat="server" Text="Label"></asp:Label>
                        <%--<asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>--%>

                    </div>
                    <div class="price">
                        <asp:Label ID="Textbox2" runat="server" Text="Label"></asp:Label>
                        <%--<asp:textbox id="Textbox2" runat="server">0</asp:textbox>--%> 元
                    </div>
                    <div class="sub-date">
                        <span>发布日期：</span>
                        <asp:Label ID="Textbox1" runat="server" Text="Label"></asp:Label>
                        <%--<asp:textbox id="Textbox1" runat="server"></asp:textbox>--%>                    
                    </div>
                </div>
                
                    <br />

                <asp:ImageButton ID="ImageButton1" type="button" runat="server" Text="加入购物车" value="加入购物车" OnClick="btnBack1_Click" class="car" ImageUrl="image/buyCar.jpg" />
               <%-- <asp:LinkButton ID="car"  class="car"  runat="server" OnClick="btnBack1_Click"  >加入购物车</asp:LinkButton>--%>

         </div>
    </div>
   </div>
    <!--脚注-->
    <!--占位div-->
    <div class="placehoder"></div>
    <!--脚注开始-->
    <div class="footer">
        <div class="footer-wrap">
            <ul class="footer-top-ul">
                <li class="footer-top-ul-item">
                    <a href="#">
                        <span  class="footer-top-ul-item-span"><i class="as iconfont icon-tianmaoshunfengbaoyou"></i></span>
                        <span class="footer-top-ul-item-span1">顺丰包邮</span>
                    </a>
                </li>
                <li class="footer-top-ul-item">
                    <a href="#">
                        <span class="footer-top-ul-item-span"><i class="as iconfont icon-7"></i></span>
                        <span class="footer-top-ul-item-span1">七天无理由退货</span>
                    </a>
                </li>
                <li class="footer-top-ul-item">
                    <a href="#">
                        <span class="footer-top-ul-item-span"><i class="as iconfont icon-feijizhong"></i></span>
                        <span class="footer-top-ul-item-span1">15天免费换货</span>
                    </a>
                </li>
                <li class="footer-top-ul-item">
                    <a href="#">
                        <span class="footer-top-ul-item-span"><i class="as iconfont icon-huo"></i></span>
                        <span class="footer-top-ul-item-span1">百强企业 品质保证</span>
                    </a>
                </li>
                <li class="footer-top-ul-item">
                    <a href="#">
                        <span class="footer-top-ul-item-span"><i class="as iconfont icon-shezhi"></i></span>
                        <span  class="footer-top-ul-item-span1">1年免费保修</span>
                    </a>
                </li>
                <li class="footer-top-ul-item">
                    <a href="#">
                        <span class="footer-top-ul-item-span"><i class="as iconfont icon-shouhuodizhi"></i></span>
                        <span class="footer-top-ul-item-span1">520余家售货网店</span>
                    </a>
                </li>
                <li class="footer-top-ul-item">
                    <a href="#">
                        <span class="footer-top-ul-item-span"><i class="as iconfont icon-liwu"></i></span>
                        <span class="footer-top-ul-item-span1">100+城市次日送达</span>
                    </a>
                </li>
                <li class="footer-top-ul-item">
                    <a href="#">
                        <span class="footer-top-ul-item-span"><i class="as iconfont icon-shouye"></i></span>
                        <span class="footer-top-ul-item-span1">上门快修</span>
                    </a>
                </li>
            </ul>
            <div class="footer-right-tel">
                <p class="footer-hotphone">24小时全国服务热线</p>
                <a class=" footer-phone-a" href="#"><i class="ap iconfont icon-wodefankui"></i>
                    <span class="footer-phone-number">400-123-2222</span></a>
                <p>
                    <a href="#" class="zaixiankefu">在线客服</a>
                </p>
            </div>
        </div>
    </div>
    <!--最下方网站说明-->
    <div class="bottom">
        <div class="bottom-cen">
            <div class="bottom-cen-area">
                <p class="fl bottom-logo"><a href="#">西西</a></p>
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
                    <a href="http://www.jsdsgsxt.gov.cn/mbm/ent/elec/view.shtml?cred=Y&siteId=052c2cbca0b64d2b88ac4b7775ff40ce" class="fl">
                        <img src="image/工商网监.jpg" alt="工商网监">
                    </a>
                    <a href="http://odr.jsdsgsxt.gov.cn:8081/mbm/entweb/elec/certView.shtml?siteId=052c2cbca0b64d2b88ac4b7775ff40ce" class="fl">
                        <img src="image/电子执照.png" alt="电子执照">
                    </a>
                    <a href="#" class="fl">
                        <img src="image/可信网站.png" alt="">
                    </a>
                    <a href="#" class="fl">
                        <img src="image/诚信网站.png" alt="">
                    </a>
                    <a href="#" class="fl">
                        <img src="image/金城企业.jpg" alt="">
                    </a>

                </p>
            </div>
        </div>
    </div>
   </form>

</body>
</html>
