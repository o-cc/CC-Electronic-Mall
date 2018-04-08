<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deleteShop.aspx.cs" Inherits="background_admit_addAdmit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .juli
        {
            margin-top:30px;
            
            }
        .foo
        {
            width:200px;
            color:Red;
            }
.screen
{
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:290%;
    display:none;
    transiton:all .4s linear;
    background-color:rgba(0,0,0,.6);
    }
.add-info
{
    
    position:absolute;
    top:25%;
    left:50%;
    margin:-250px  0 0 -250px;
    width:500px;
    height:500px;
    z-index:1;
    background-color:#fff;
}
.guanbi
{
    width:100%;
    height:50px;
    background-color:#ddd;
    font-size:20px;
    line-height:50px;
    }
.right
    {
        float:right;
        font-size:30px;
        margin-right:30px;
        cursor:pointer;
}
.guanbi1
{
    width:100%;
    height:50px;
    background-color:#ddd;
    font-size:20px;
    line-height:50px;
    }
.right1
    {
        float:right;
        font-size:30px;
        margin-right:30px;
        cursor:pointer;
}
.info input
{
    color:#ff6700;
    font-size:14px;
    float:left;
    width:200px;
    height:30px;
    margin-right:10px;
    }
.alert-add
{
    width:100%;
    position:relative;
    height:33px;

    margin-left:20px;
    }
.alert-add1
{
    width:100%;
    position:relative;
    height:40px;
    margin-top:10px;
    margin-left:40px;
    }
    
    
.r{float:right;}
.alert-add span
{
    display:inline-block;
    width:130px;
    height:30px;
    }
.span1
{
   float:left;
    }
.span2
{
   float:right;
   margin-right:155px;
    }
.span5{margin-left:82px;}
.dizhi
{
    resize:none;
    color:#555;
    font-size:14px;
    }
.dizhi1
{
        resize:none;
    color:#555;
    font-size:14px;
    margin-left:35px;
    }
.clearfix
{
    clear:both;
    height:25px;
    }
.l
{
    float:left;
    font-size:14px;
    line-height:32px;
    }
    </style>
    <link href="../bg_css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="screen">
        <div class="add-info">
            <div class="guanbi">
                <span>修改商品信息</span><span class="right">×</span>
            </div>
            <div class="info">
                <div class="alert-add1">
                    <span class="l">商品ID：</span>
                    <asp:TextBox ID="receiver" runat="server"   placeholder="收货人姓名 "></asp:TextBox>
                </div>
                <div class="alert-add1">
                    <span class="l">商品名：</span>
                    <asp:TextBox ID="imagename" runat="server"  placeholder="商品名 "></asp:TextBox>
                </div>
                <div class="alert-add1">
                    <span class="l">类型名：</span>
                    <input type="text" runat="server" ID="typeName"   placeholder="类型名 " class="r" />  
                </div>
                <div class="alert-add1">
                    <span class="l">价格：</span>
                    <asp:TextBox ID="Price" runat="server"  placeholder="价格 "></asp:TextBox>
                </div>
                <div class="alert-add1">
                    <span class="l">描述：</span>
                    <textarea runat="server" class="dizhi"  name="dizhi" style=" width:412px; height:70px;"  placeholder="商品描述 " ID="dizhi"></textarea>
                </div>
                <div class="clearfix"></div>
<%--                <div class="alert-add1">
                    <span class="l">日期：</span>
                    <asp:TextBox ID="date1" runat="server"   placeholder="日期 "></asp:TextBox>
                </div>--%>
                <div class="alert-add1">
                    <span class="l">路径：</span>
                     <textarea runat="server" class="dizhi"  name="dizhi" style=" width:400px;text-align:center; height:30px;"  placeholder="商品描述 " ID="url"></textarea>
                </div>

                <div class="alert-add1">
                    
                    <asp:Button ID="Button1" runat="server" Text="修改"  class="btn" 
                        style="margin-left:112px;" onclick="Button1_Click"/>
                </div>
            </div>
        </div>
    </div>
    <div class="juli">
       <div id="mana-title">商品管理:</div>
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
            GridLines="None"  class="gv1" 
                                onrowdeleting="GridView1_RowDeleting" 
            DataKeyNames="id" onselectedindexchanging="GridView1_SelectedIndexChanging" 
            PageSize="15" onpageindexchanging="GridView1_PageIndexChanging" 
            EnableModelValidation="False" ViewStateMode="Enabled" 
            onrowediting="GridView1_RowEditing">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" />
                <asp:BoundField DataField="imagename" HeaderText="商品名" />
                <asp:BoundField DataField="typename" HeaderText="类型名" />
                <asp:BoundField DataField="imageurl" HeaderText="图片路径" />
                <asp:BoundField DataField="price" HeaderText="价格" />
                <asp:BoundField DataField="date" HeaderText="日期" />
                <asp:BoundField DataField="introduct" HeaderText="描述" />
                <asp:TemplateField HeaderText="详细信息">
                                    <ItemTemplate >
                                        <div class="jiage">
                                            <a href="#" class="Detail">详细信息</a>
                                        </div>
                                </ItemTemplate>
                                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />

            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" 
                Font-Size="14px" CssClass="foo" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle  ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
   </div>  
    <script type="text/javascript" src="../../js/jquery-1.11.1.js"></script>             
    <script type="text/javascript">

        for (var i = 0; i < $(".gv1").children("tbody").children("tr").length; i++) {
            $(".Detail").eq(i).click(function () {
                $(".screen").show();

               $("#receiver").val($(this).parent(".jiage").parent("td").siblings("td").eq(0).text().trim()); //商品id
               $("#imagename").val($(this).parent("div").parent("td").siblings("td").eq(1).text().trim()); //商品名
               $("#typeName").val($(this).parent("div").parent("td").siblings("td").eq(2).text().trim()); //类型名
               $("#url").val($(this).parent("div").parent("td").siblings("td").eq(3).text().trim()); //路径
               $("#Price").val($(this).parent("div").parent("td").siblings("td").eq(4).text().trim()); //价格
               $("#date1").val($(this).parent("div").parent("td").siblings("td").eq(5).text().trim()); //日期
               $("#dizhi").val($(this).parent("div").parent("td").siblings("td").eq(6).text().trim()); //描述
            });
        }
        //点击×关闭弹出
        $(".right").click(function () {
            $(".screen").hide();

        });
    </script>
    </form>
</body>
</html>
