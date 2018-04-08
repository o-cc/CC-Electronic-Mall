<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="websiteWord(member).aspx.cs" Inherits="websiteWord_member_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="leave-top"></div>
    <div class="leave-con">
        <div class="web-con">
            <asp:DataList ID="DataList1" class="web-datalist" runat="server">
                <ItemTemplate>
                    <div class="wrap-word-info">
                    <p class="web-title">标题：<%# DataBinder.Eval(Container.DataItem,"title") %></p>
                    <span class="web-content">内容：</span>
                        <textarea id="leaveText" runat="server" class="web-text" readonly><%# DataBinder.Eval(Container.DataItem,"content1") %></textarea>
                    <p class="web-title">留言人：<%# DataBinder.Eval(Container.DataItem,"users") %></p>
                    <p class="web-title">日期：<%# DataBinder.Eval(Container.DataItem,"date") %></p>
                    <p class="web-title1">西西回复：<%# DataBinder.Eval(Container.DataItem,"admitReturn") %></p>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
</asp:Content>

