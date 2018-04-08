<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wordManage.aspx.cs" Inherits="background_admit_addAdmit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        form,body,html
        {
            width:100%;
            height:100%;
            
        }
        .juli
        {
            margin-top:30px;
            padding-left:30px;
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
              margin-left:9px;
        }
        .admit-re
        {
            width:200px;
            float:left;
            margin:170px auto 0;
            
        }
        .member
        {
            width:435px;
            float:left;
        }
        .member-ti
        {
            display:inline-block;
            width:65px;
            text-align:center;
        }
        .wrap-am
        {
            width:640px;
            height:214px;
            margin-bottom:20px;
            border-bottom:1px solid #ff6700;
        }
        .screen
        {
         width:100%;
         height:126%;   
         position:absolute;
         top:0;
         left:0;
         background-color:#d0d0d0;
         
        }
        .box1
        {
            width:400px;
            height:460px;
            background-color:#fff;
            position:relative;
            top:40%;
            left:50%;
            margin-left:-200px;
            margin-top:-200px;    
        }
        .box-h
        {
            width:100%;
            height:40px;
            background-color:#f9f9f9;
            color:#ff6700;
            position:relative;
        }
        .box-h-t
        {
            
            font-size:22px;
            color:#222;  
        }
        .box-h-g
        {
            float:right;
            width:40px;
            height:40px;
            cursor:pointer;
            font-size:20px;
        }
        .box-bo
        {
            width:100%;
            margin:0 auto;
        }
        .box-bo-t
        {
            display:inline-block;
            width:68px;
         }
        .box-bo-items
        {
            width:100%;
            height:100px;
            padding-left:25px;
            margin:10px auto 0;
        }
        .inp-tit
        {
            width:267px;
            height:30px;
            color:#ff6700;
        }
        .text-area
        {
            width:267px;
            height:100px;
            resize:none;
            color:#ff6700;
        }
        .link-man
        {
            display:inline-block;
            width:150px;
            height:30px;
            text-align:center;
            background-color:#ff6700;
            margin-left:111px;
            line-height:30px;
            color:#000;
        }
        .prompt
        {
            font:500 14px/23px simsun;
            color:#ff6700;    
        }
    </style>
    <link href="../bg_css.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="../../js/jquery-1.11.1.js"></script>
            <script type="text/javascript">
                //                var Id = document.getElementById("Id");
                //                var Id2 = document.getElementById("id2");
                //                Id.value = Id2.value.replace(/^\s+|\s+$/g, "");

                $(function () {

                    for (var i = 0; i < $(".oco").length; i++) {
                        $(".oco").eq(i).attr("alt", i);
                    }
                    var xx = $(".oco").length;
                    for (var i = 0; i < $(".oco").length; i++) {
                        $(".oco").eq(i).click(function () {
                            $(".screen").show();
                            $("#Id").val($(".id2").eq($(this).attr("alt")).val().trim());
                            //绑定会员的留言
                            $("#Title").val($(this).parent(".admit-re").siblings(".member").children(".web-title").eq(0).text().trim());
                            $("#Text1").val($(this).parent(".admit-re").siblings(".member").children(".web-title").eq(1).text().trim())
                            $("#Textarea1").val($(this).parent(".admit-re").siblings(".member").children(".web-text").text().trim());

                        });
                    }

                    $(".box-h-g").on("click", function () {
                        $(".screen").hide();
                    });



                })

            </script>
</head>
<body>

    <form id="form1" runat="server">
        <div class="screen" style="display:none;">
            <div class="box1">
                <div class="box-h">
                    <span class="box-h-t">留言操作</span>
                    <span class="box-h-g">×</span>
                </div>
                <div class="box-bo">
                    <div class="box-bo-items" style="display:none;">
                        <span>这个是id</span><input  type="text" name="name" id="Id" runat="server"  />
                    </div>
                    <div class="box-bo-items" style="height:38px;">
                        <span class="box-bo-t">标题：</span>
                        <input type="text" readonly class="inp-tit" id="Title" runat="server" name="name" value=" " />
                    </div>
                    <div class="box-bo-items" style="height:38px;">
                        <span class="box-bo-t">留言人：</span>
                        <input type="text" readonly class="inp-tit" id="Text1" runat="server" name="name" value=" " />
                    </div>
                    <div class="box-bo-items">
                        <span class="box-bo-t">内容：</span>
                        <textarea id="Textarea1" readonly runat="server" class="text-area"> </textarea>            
                    </div>
                    <div class="box-bo-items">
                        <span class="box-bo-t">回复：</span>
                         <textarea id="Textarea2" runat="server" class="text-area"> </textarea>     
                    </div>
                    <div class="box-bo-items" style="height:38px;">
                        是否审核通过：<input class="coco" id="chkConfirm" runat="server"  type="checkbox" name="checkbox1" 
            value=" 是否已确认" enableviewstate="True" />
                        <span class="prompt">如果不勾选将不会显示在首页</span>
                    </div>
                    <asp:LinkButton ID="LinkButton1" runat="server" class="link-man" 
                        onclick="LinkButton1_Click">确认</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="juli">
       <div id="mana-title">用户留言:</div>
            <asp:DataList ID="DataList1" class="web-datalist" runat="server" 
                style="margin-top: 0">
                <ItemTemplate>
                    <div class="wrap-am">
                        <div class="member">
                            
                            <input class="id2" type="text" name="name" style="display:none;" value="<%# DataBinder.Eval(Container.DataItem,"id")%>" />
                            <span class="member-ti">标题：</span><span class="web-title"><%# DataBinder.Eval(Container.DataItem,"title") %></span> 
                            <br />
                            <span class="web-content">内容：</span>
                            <textarea id="leaveText" runat="server" class="web-text" readonly><%# DataBinder.Eval(Container.DataItem,"content1") %></textarea>
                            <br />
                            <span class="member-ti">留言人：</span><span class="web-title"><%# DataBinder.Eval(Container.DataItem,"users") %></span>
                            <br />
                           <span class="member-ti">日期：</span><span class="web-title"><%# DataBinder.Eval(Container.DataItem,"date") %></span>
                        </div>
                        <div class="admit-re">
                            <a href="#" class="oco" alt="1" style="cursor:pointer;">审核并回复</a>
                            <asp:LinkButton ID="Delete" runat="server" oncommand="LinkButton2_Command" CommandArgument=<%# DataBinder.Eval(Container.DataItem,"id") %>>删除留言</asp:LinkButton>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
   </div>               

    </form>

</body>
</html>
