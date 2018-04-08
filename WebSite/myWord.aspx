<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myWord.aspx.cs" Inherits="background_admit_addAdmit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .juli
        {
            margin-top:30px;
            }
       .web-con
        {
            width:400px;
            margin:20px auto; 
            padding-top:20px;   
        }
        .web-datalist
        {
            width:100%; 
      
        }
        .web-title
        {
            width:100%;
            height:30px;
            font-size:16px;
    
        }
        .web-text
        {
              resize:none;
              width:300px;
              height:100px;
              color:#ff6700; 
              text-align:left;
        }
    </style>
    <link href="../bg_css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="juli">
       <div id="mana-title">我的留言:</div>
            <asp:DataList ID="DataList1" class="web-datalist" runat="server">
                <ItemTemplate>
                    <p class="web-title">标题：<%# DataBinder.Eval(Container.DataItem,"title") %></p>
                    <span class="web-content">内容：</span>
                        <textarea id="leaveText" runat="server" class="web-text" readonly><%# DataBinder.Eval(Container.DataItem,"content1") %></textarea>
                    <p class="web-title">留言人：<%# DataBinder.Eval(Container.DataItem,"users") %></p>
                    <p class="web-title">日期：<%# DataBinder.Eval(Container.DataItem,"date") %></p>
                </ItemTemplate>
            </asp:DataList>
        </div>               

    </form>
</body>
</html>
