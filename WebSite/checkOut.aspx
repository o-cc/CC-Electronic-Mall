<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="checkOut.aspx.cs" Inherits="checkOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div class="screen">
        <div class="add-info">
            <div class="guanbi">
                <span>添加收货地址</span><span class="right">×</span>
            </div>
            <div class="info">
                <div class="alert-add1">
                    
                    <asp:TextBox ID="receiver" runat="server" placeholder="收货人姓名 "></asp:TextBox>
                    
                    
                    <asp:TextBox ID="phone" runat="server" placeholder="收货人手机 "></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="必填项" ControlToValidate="receiver" Font-Size="14px" class="span1"
                        ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="请输入正确手机格式" ControlToValidate="phone" Font-Size="14px" 
                        ForeColor="Red" class="span2" 
                        ValidationExpression="((1[3,5,8][0-9])|(14[5,7])|(17[0,6,7,8])|(19[7]))\d{8}"></asp:RegularExpressionValidator>
                </div>
                <div class="alert-add1">
                    <textarea runat="server" class="dizhi" name="dizhi" style=" width:412px; height:70px;"  placeholder="收货人地址 " ID="dizhi"></textarea>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="必填项" Font-Size="14px" ForeColor="Red" ControlToValidate="dizhi" class="span3"></asp:RequiredFieldValidator>
                </div>
                <div class="clearfix"></div>
                <div class="alert-add1">
                    <asp:TextBox ID="bianma" runat="server"  placeholder="邮政编码 "></asp:TextBox>

                    <input type="text" runat="server" ID="users"  placeholder="您的用户名 " class="r" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="请输入正确邮政编码" ControlToValidate="bianma" Font-Size="14px" 
                        ForeColor="Red" class="span4" ValidationExpression="[1-9][0-9]{5}"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="users" ErrorMessage="必填项" Font-Size="14px" ForeColor="Red" class="span5"></asp:RequiredFieldValidator>
                </div>
                <div class="alert-add1">
                    
                    <asp:Button ID="Button1" runat="server" Text="添加"  class="btn" 
                        style="margin-left:112px;" onclick="Button1_Click"/>
                </div>
            </div>
        </div>
    </div>
    <div class="screen1 " >
            <div class="add-info1 ">
                <div class="guanbi1">
                    <span>确认收货信息</span><span class="right1">×</span>
                </div>
                <div class="info">
                     <div class="alert-add">
                         <span class="l">收货人姓名：</span>
                         <input type="text" ID="TextBox1" runat="server"   ReadOnly />
                    <%--<asp:TextBox ID="TextBox1" runat="server"  ReadOnly></asp:TextBox>--%>
                    </div>
                    <div class="alert-add">
                        <span class="l">收货人手机：</span>
                    <%--<asp:TextBox ID="TextBox2" runat="server"  ReadOnly></asp:TextBox>--%> 
                    <input type="text" ID="TextBox2" runat="server"   ReadOnly />
                    </div>
                     <div class="alert-add">
                            <span class="l">配送时间:</span>
                            <input type="text" ID="TextBox4" runat="server"  value="不限送货时间：周一至周日" ReadOnly />
                            <%--<asp:TextBox ID="TextBox4" runat="server" value="不限送货时间：周一至周日" ReadOnly></asp:TextBox>--%>
                      </div>
                      <div class="alert-add">
                            <span class="l">配送方式:</span>
                            <%--<asp:TextBox  runat="server" value="快递配送（免运费）" ReadOnly></asp:TextBox>--%>
                          <input type="text" runat="server" ID="TextBox5"  value=" 快递配送（免运费）" ReadOnly />
                      </div>
                     <div class="clearfix"><span class="l o">配送地址：</span></div>
                    
                     <textarea runat="server" class="dizhi1" name="dizhi" style=" width:412px; height:70px;"  placeholder="收货人地址 " readonly ID="Textarea1"></textarea>
                     <div class="alert-add">
                         <span class="l">收货人邮政编码：</span>
                    <%--<asp:TextBox ID="TextBox3" runat="server"   ReadOnly></asp:TextBox>--%>
                         <input type="text" runat="server" ID="TextBox3"  ReadOnly />
                    </div>
                    <div class="alert-add">
                        <span class="l">您的用户名：</span>
                    <input type="text" runat="server" ID="Text1"  placeholder="您的用户名 " class="r" ReadOnly/>              
                    </div>
                    
                        <div class="alert-add">
                        <div id="bianji">
<%--                            <span class="shop-id1">商品ID：</span>
                            <input type="text" runat="server" ID="Text4"  placeholder="商品 " class="r" ReadOnly/> 
                            <div class="clear"></div>
                            <span class="show-name1">商品名：</span>
                            <input type="text" runat="server" ID="Text3"  placeholder="商品 " class="r" ReadOnly/>  --%>           
                        </div>
                    </div>
                    <div class="clear"></div>
                     <div class="alert-add">
                         <div>
                         <span class="l">总价：</span>                         
                         </div>
                         
                    <input type="text" runat="server" ID="Text2"  placeholder="总价 " class="r" ReadOnly/>           
                </div>
                      <div class="alert-add">
                         <div>
                         <span class="l">总数：</span>                         
                         </div>
                    <input type="text" runat="server" ID="Text3"  placeholder="总数 " class="r" ReadOnly/>           
                </div>
                     <div class="alert-add">
                        <div>
                            <span class="l">备注：</span>                         
                         </div>
                    <input type="text" runat="server" ID="Text4"  placeholder="想对西西说点啥(*^__^*) " class="r" />
                     </div>
                    <div class="clear"></div>
                     <div class="alert-add">
                    <asp:Button ID="Button2" runat="server" Text="确认并下单"  class="btn1" 
                        style="margin-left:112px;" onclick="Button2_Click" CausesValidation="False"/>
                </div>
                <div class="clear"></div>
                <div class="alert-add">
                </div>
                </div>
            </div>
        </div>
    <div class="check-cen clear">
        <div class="check-address">
            <div class="shou">
            收货地址：
            </div>
            <div class="address-show">
                <asp:DataList ID="Address" runat="server" class="Address" 
                    onselectedindexchanged="Address_SelectedIndexChanged">
                    <ItemTemplate>
                        <div class="show-item">
                            <div class="address-name">
                            <%#DataBinder.Eval(Container.DataItem,"receiverName") %>
                            </div>
                            <div class="address-phone">
                            <%#DataBinder.Eval(Container.DataItem,"receiverPhone") %>
                            </div>
                            <div class="address">
                            <%#DataBinder.Eval(Container.DataItem,"receiverAddress") %>
                            </div>
                            <div class="address-phone bianma1">
                                <span>邮政编码：</span><span class="dt-bianma"><%#DataBinder.Eval(Container.DataItem,"bianma") %></span><br /><span>用户名：</span><span class="dt-users"><%#DataBinder.Eval(Container.DataItem,"users") %></span></div>
   
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <div class="show-item1">
                    <i class="item1-i iconfont icon-zhengque"></i>
                    <span>添加地址</span>
                    
                </div>
            </div>

        </div>
        <div class="clear"></div>
        <div class="send-type">
                <span class="send-span">配送方式</span>
                <span class="way">快递配送（免运费）</span>
        </div>
        <div class="send-time">
                <div class="send-type">
                <span class="send-span">配送时间</span>
                <span class="way">不限送货时间：周一至周日</span>
        </div>
        </div>
        <div class="shop-name">
            <span>商品清单：</span>
            <asp:GridView ID="gvShopCart" DataKeyNames ="id"   runat="server"  
                                 AutoGenerateColumns="False"  AllowPaging="True" 
                                 OnPageIndexChanging="gvShopCart_PageIndexChanging" 
                                 CellPadding="4" ForeColor="#333333" 
        GridLines="None" onrowdeleting="gvShopCart_RowDeleting" class="gd">
                                 <Columns>
                                     <asp:BoundField DataField="No" HeaderText="序号" ReadOnly="True">
                                         <ItemStyle HorizontalAlign="Center" />
                                         <HeaderStyle HorizontalAlign="Center" />
                                     </asp:BoundField>  
                                      <asp:BoundField DataField="id" HeaderText="商品ID" ReadOnly="True">
                                         <ItemStyle HorizontalAlign="Center" />
                                         <HeaderStyle HorizontalAlign="Center" />
                                     </asp:BoundField>                                    
                                     <asp:BoundField DataField="imagename" HeaderText="商品名称" ReadOnly="True">
                                      <ItemStyle HorizontalAlign="Center" />
                                      <HeaderStyle HorizontalAlign="Center" />
                                     </asp:BoundField>  
                                     <asp:TemplateField HeaderText="数量">
                                    <ItemTemplate >
                                        <div class="jiage">
                                        <asp:TextBox ID="txtNum" runat="server" Text =<%#Eval("Num") %>  AutoComplete="on"  OnTextChanged="txtNum_TextChanged" class="txtNum coco" ReadOnly data-cc="1"></asp:TextBox>
                                        <span class="jia ococ">+</span>
                                        <span class="jian ococ">-</span>
                                        </div>

                                </ItemTemplate>
                                </asp:TemplateField>
                                   
                                     <asp:TemplateField HeaderText =单价>
                                         <HeaderStyle HorizontalAlign=Center />
                                         <ItemStyle HorizontalAlign =Center />
                                         <ItemTemplate >
                                             <span class="danjia"><%#Eval("price")%></span>￥
                                         </ItemTemplate>    
                                     </asp:TemplateField>
                                    <asp:TemplateField HeaderText =总价>
                                         <HeaderStyle HorizontalAlign=Center />
                                         <ItemStyle HorizontalAlign =Center />
                                         <ItemTemplate >
                                             <span class="zongjia"><%#Eval("totalPrice")%></span>￥
                                         </ItemTemplate>    
                                     </asp:TemplateField>
<%--                                     <asp:TemplateField>
                                         <HeaderStyle HorizontalAlign=Center />
                                         <ItemStyle HorizontalAlign =Center />
                                         <ItemTemplate >
                                             <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandArgument ='<%#Eval("id") %>' OnCommand ="lnkbtnDelete_Command">删除</asp:LinkButton>
                                         </ItemTemplate>    
                                     </asp:TemplateField>--%>
                                     
                                     <asp:CommandField ShowDeleteButton="True" />
                                     
                                 </Columns>
                                 <EditRowStyle BackColor="#7C6F57" />
                                 <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                 <RowStyle BackColor="#E3EAEB" />
                                 <SelectedRowStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True" />
                                 <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                 <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                 <AlternatingRowStyle BackColor="White" />
                                 <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                 <SortedAscendingHeaderStyle BackColor="#246B61" />
                                 <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                 <SortedDescendingHeaderStyle BackColor="#15524A" />
                                </asp:GridView>
        </div>
        <div class="clear"></div>

        <div class="add-bom">
            <asp:Button Text="立即下单" runat="server" class="add-bom-btn" />
            <span class="Label1 oxz">总价:</span><asp:Label ID="labTotalPrice" runat="server" Text="0.00 " class="Label1 zx" ></asp:Label><span class="Label2 xz">￥</span>
        </div>
        <div class="add-bom" style="margin-top:-20px;">
            
            <span class="Label1 oxz">总数:</span><asp:Label ID="Label1" runat="server" class="Label1 zx total" ></asp:Label> <span class="Label2 xz">个</span>
        </div>
    </div>



</asp:Content>

