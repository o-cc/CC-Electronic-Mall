<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="leaveWord.aspx.cs" Inherits="leaveWord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="leave-top">
    </div>
    <div class="leave-con">
        <div class="top-h">
            <h2 class="h2">
                这一刻的想法....
            </h2>
        </div>
        <div class="leave-w">
            <span class="leave-span">标题：</span><input id="leaveIn" runat="server" class="leave-inp" type="text" name="name" value=" " /><br />
            <span class="leave-span txo">内容：</span><textarea id="leaveText" runat="server" class="leave-text"></textarea>

            <div style="margin-top:30px;">
            <asp:Button class="leave-btn" ID="Button1" runat="server" Text="提交" 
                    onclick="Button1_Click" />
            <asp:Button class="leave-btn" ID="Button2"
            runat="server" Text="查看我的留言" />
            </div>

        </div>

    </div>
</asp:Content>

