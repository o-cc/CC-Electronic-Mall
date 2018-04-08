<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deleteMember.aspx.cs" Inherits="background_admit_addAdmit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .juli
        {
            margin-top:30px;
            }
    </style>
    <link href="../bg_css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="juli">
       <div id="mana-title">会员列表:</div>
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged"  class="gv1" 
                                onrowdeleting="GridView1_RowDeleting" 
            DataKeyNames="id">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" />
                <asp:BoundField DataField="users" HeaderText="用户名" />
                <asp:BoundField DataField="password" HeaderText="密码" />
                <asp:BoundField DataField="realname" HeaderText="真实姓名" />
                <asp:BoundField DataField="phone" HeaderText="手机" />
                <asp:BoundField DataField="date" HeaderText="注册时间" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        
   </div>               
       <div class="juli">
       <div id="mana-title1">会员详细信息:</div>
       <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onselectedindexchanged="GridView2_SelectedIndexChanged"  class="gv1" 
                                onrowdeleting="GridView2_RowDeleting" 
            DataKeyNames="receiverId">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="users" HeaderText="用户名" />
                <asp:BoundField DataField="receiverName" HeaderText="收货人" />
                <asp:BoundField DataField="receiverPhone" HeaderText="收货手机" />
                <asp:BoundField DataField="receiverAddress" HeaderText="收货地址" />
                <asp:BoundField DataField="bianma" HeaderText="邮政编码" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        
   </div>  
    </form>
</body>
</html>
