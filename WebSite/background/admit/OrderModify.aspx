<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderModify.aspx.cs" Inherits="background_admit_addAdmit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .juli
        {
            margin-top:67px;
            
            }   
         .span
         {
             font-size:22px;
             width:100%;
             border-bottom:1px solid #ff6700;
             padding-bottom:5px;
             
         }
            .datalist1
            {
                 margin:15px; 
            }
            .add-li
            {
                
                height:24px;
                font-size:16px;
                
            }
            .btn-par
            {
                position:relative;
                }
            .btn
            {
                position:absolute;
                top:50px;
                left:50%;
                margin-left:-50px;
                width:100px;
                height:35px;
                background-color:#ff6700;
                }
                .ul-li
                {
                    font-size:16px;
                    color:#ff6700;
                    height:35px;
                    text-align:left;
                    margin:15px;
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
                                 
           DataKeyNames="id">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="商品代号" />
                <asp:BoundField DataField="imagename" HeaderText="商品名称" />
                <asp:BoundField DataField="num" HeaderText="数量" />
                <asp:BoundField DataField="price" HeaderText="价格" />
                <asp:BoundField DataField="totalPrice" HeaderText="总价" />
                <asp:BoundField DataField="beizhu" HeaderText="备注" />
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
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <ul>    
                    <li class="ul-li">配送方式：<%# DataBinder.Eval(Container.DataItem,"sendType") %></li>
                    <li class="ul-li">配送时间：<%# DataBinder.Eval(Container.DataItem,"sendTime") %></li>
                </ul>
            </ItemTemplate>
        </asp:DataList>
    </div>


    <div class="juli span">收货信息:</div>
    <div class="datalist1">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <ul>
                    <li class="add-li">收货人姓名:<%# DataBinder.Eval(Container.DataItem, "receiverName") %></li>
                    <li class="add-li">收货人电话:<%# DataBinder.Eval(Container.DataItem, "receiverPhone") %></li>
                    <li class="add-li">收货人地址:<%# DataBinder.Eval(Container.DataItem, "receiverAddress") %></li>
                    <li class="add-li">邮政编码:<%# DataBinder.Eval(Container.DataItem, "bianma") %></li>
                </ul>
            </ItemTemplate>
        </asp:DataList>
    </div>               
    <div>
       <div>
        <input id="chkConfirm" runat="server"  type="checkbox" name="checkbox1" 
            value=" 是否已确认" enableviewstate="True" />是否已确认
    </div>
       <div>
        <input type="checkbox" runat="server" id="chkConsignment" name="checkbox2" value=" 是否已发货" />是否已发货
    </div>
        <div class="btn-par">
       <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="修改" class="btn" />
        </div>
    </div>
                        
    </form>
</body>
</html>
