<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="buyCar.aspx.cs" Inherits="Defaul2t" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="car-con">
    <div class="info-top">
        <span class="Label3">总价：</span><asp:Label ID="labTotalPrice" runat="server" Text="0.00 " class="Label1" ></asp:Label><span class="Label2">￥</span>
        <asp:LinkButton ID="lnkbtnContinue" runat="server" OnClick="lnkbtnContinue_Click" class="continue">继续购物</asp:LinkButton>  
        <asp:LinkButton ID="lnkbtnCheck" runat="server" OnClick="lnkbtnCheck_Click" class="go">去结算</asp:LinkButton>
    </div>
    
							 <asp:GridView ID="gvShopCart" DataKeyNames ="id"   runat="server"  
                                 AutoGenerateColumns="False"  AllowPaging="True" 
                                 OnPageIndexChanging="gvShopCart_PageIndexChanging" 
                                 CellPadding="4" ForeColor="#333333" 
        GridLines="None" onrowdeleting="gvShopCart_RowDeleting" class="gdv">
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
                                        <asp:TextBox ID="txtNum" runat="server" Text =<%#Eval("Num") %>  AutoComplete="on"  OnTextChanged="txtNum_TextChanged" class="txtNum" ReadOnly data-cc="1"></asp:TextBox>
                                        <span class="jia">+</span>
                                        <span class="jian">-</span>
                                        </div>

                                       <asp:RegularExpressionValidator
                                ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNum"
                                ErrorMessage="×" ValidationExpression="^\+?[1-9][0-9]*$"></asp:RegularExpressionValidator>
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

                                
                         &nbsp;<asp:LinkButton ID="lnkbtnClear" runat="server" OnClick="lnkbtnClear_Click" >清空购物车</asp:LinkButton>

    
    </div>
</asp:Content>

