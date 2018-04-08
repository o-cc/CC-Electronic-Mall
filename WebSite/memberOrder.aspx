<%@ Page Language="C#" AutoEventWireup="true" CodeFile="memberOrder.aspx.cs" Inherits="background_admit_addAdmit" %>

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
       <div id="mana-title">订单信息:</div>
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged"  class="gv1" 
                                onrowdeleting="GridView1_RowDeleting" 
            onrowdeleted="GridView1_RowDeleted" DataKeyNames="orderId">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="orderId" HeaderText="订单号" />
                <asp:BoundField DataField="users" HeaderText="用户名" />
                <asp:BoundField DataField="receiverName" HeaderText="收货人" />
                <asp:BoundField DataField="receiverAddress" HeaderText="收货地址" />
                <asp:BoundField DataField="receiverPhone" HeaderText="联系电话" />
                <asp:BoundField DataField="totalPrice" HeaderText="总价" />
                <asp:BoundField DataField="beizhu" HeaderText="备注" />
                <asp:BoundField DataField="date" HeaderText="下单时间" />
                <asp:TemplateField HeaderText="订单状态">
                <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
					<ItemStyle HorizontalAlign="Center" ></ItemStyle>
						<ItemTemplate>
							<%# GetStatus(Convert.ToInt32(DataBinder.Eval(Container.DataItem, "OrderId").ToString()))%>
						</ItemTemplate>   
                
                </asp:TemplateField>
                <asp:TemplateField HeaderText="管理">
                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
					<ItemStyle HorizontalAlign="Center" ></ItemStyle>
					<ItemTemplate>
						<a href='OrderModify.aspx?OrderId=<%# DataBinder.Eval(Container.DataItem, "OrderId") %>'>管理</a>
					</ItemTemplate> 
                </asp:TemplateField>
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

    </form>
</body>
</html>
