<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addShop.aspx.cs" Inherits="background_admit_delete" %>

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
                        <div id="add-title">添加商品:</div>
                        <div class="info">
                            <span class="in-span">商品名：</span>
                            <asp:TextBox ID="storeName" runat="server" class="ad-input"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ErrorMessage="必填项" Font-Size="14px" ControlToValidate="storeName" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="info">
                            <span class="in-span">类别：</span>
                            <asp:TextBox ID="Type" runat="server" class="ad-input"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="必填项" Font-Size="14px" ControlToValidate="Type" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="info">
                            <span class="in-span">类别名：</span>
                            <asp:TextBox ID="TypeName" runat="server" class="ad-input"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="必填项" Font-Size="14px" ControlToValidate="TypeName" 
                                ForeColor="Red"></asp:RequiredFieldValidator>                            
                        </div>
                        <div class="info">
                            <span class="in-span">价格：</span>
                            <asp:TextBox ID="Price" runat="server" class="ad-input"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ErrorMessage="必填项" Font-Size="14px" ControlToValidate="Price" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="info">
                            <span class="in-span">是否推荐：</span>
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="首页的热品推荐" />
                        </div>

                        <div class="info">
                            <span class="in-span">描述：</span>

                            <textarea runat="server"  class="ad-input" name="dizhi" style=" width:412px; height:70px; resize:none;"  placeholder="商品介绍 "  ID="Textarea1"></textarea>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ErrorMessage="必填项" Font-Size="14px" ControlToValidate="Textarea1" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="info">
                            <span class="in-span"></span>
                            <asp:FileUpload ID="imageUpload" runat="server" Font-Size="10pt" class="ad-input" />
        		           

                        </div>
                        
                        
                        <div class="info">
                            <asp:Label ID="labIamge" runat="server" Font-Bold="True" Font-Size="9pt" ></asp:Label>
                        </div>
                        <asp:Button ID="submit" runat="server" Text="添加" class="sbm" 
                            onclick="submit_Click" />
                        
                    </div>
    
        </div>
    </div>
    </form>
</body>
</html>
