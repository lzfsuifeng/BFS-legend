<%@ Page Title="" Language="C#" MasterPageFile="~/BFS_MasterPage.Master" AutoEventWireup="true" CodeBehind="News_BB.aspx.cs" Inherits="BFS_UI.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="clear: both; margin-bottom: 30px; overflow: hidden;">
        <div style="width: 1080px; margin-top: 15px; border-radius: 3px; padding-top: 10px; overflow: hidden;">
            <div style="padding: 5px; float: left; width: 8%; border-bottom: 2px solid steelblue; overflow: hidden;" onclick="titleClick(1)">
                <asp:HyperLink ID="kcLink" runat="server" CssClass="ch" Text="资讯新闻" NavigateUrl="#" Font-Names="微软雅黑" Font-Size="16" Font-Underline="false"></asp:HyperLink>
            </div>

            <div style="float: left; position: relative; width: 91%; padding-top: 10px; height: 29px; border-bottom: 2px solid #e3e3e5; overflow: hidden; font-size: 15px; color: #555555; font-family: 'Microsoft YaHei'; text-align: right;">
                <div style="position: absolute; right: 5px; bottom: 2px; font-size: 15px; color: #555555; font-family: 'Microsoft YaHei'; text-align: right;">
                    当前位置：
                            <asp:HyperLink ID="HyperLink1" runat="server" Text="首页/" NavigateUrl="~/BFS_Web.aspx" Font-Underline="false" ForeColor="#555555"></asp:HyperLink>
                    <asp:Label ID="News_ClassName3" runat="server"  ForeColor="SteelBlue"></asp:Label>
                </div>
            </div>
        </div>

        <div style="padding: 10px;">
            <asp:ListView ID="NewsBB" runat="server">
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server">
                        <div id="itemPlaceholder" runat="server">
                        </div>
                    </div>
                    <div style="width: 100%; margin-top: 20px; float: left; background-color: #ececec;">
                        <asp:DataPager ID="DataPager1" class="myPager" runat="server" PageSize="8">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                                    ShowPreviousPageButton="true" FirstPageText="首页" NextPageText="下一页" PreviousPageText="上一页" LastPageText="尾页" />
                                <asp:NumericPagerField ButtonCount="5" CurrentPageLabelCssClass="current" />
                                <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True"
                                    ShowNextPageButton="true" NextPageText="下一页" PreviousPageText="上一页"  ShowPreviousPageButton="false" FirstPageText="首页" LastPageText="尾页" />

                            </Fields>

                        </asp:DataPager>

                    </div>
                </LayoutTemplate>
                <ItemTemplate>
                    <div style="font-family: 'Microsoft YaHei'; border-bottom: 1px dashed #e3e3e5; padding: 5px; overflow: hidden;">
                        <div style="float: left; padding: 5px; width: 80%;">
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑" ToolTip='<%#"点击查看："+ Eval("News_Title") %>' Font-Size="12" NavigateUrl='<%#"News_read.aspx?newsid="+ Eval("News_ID") %>' ForeColor="#2b2b2b" Font-Underline="false" Text='<%#Eval("News_Title") %>' onmouseover="this.style.textDecoration='underline';this.style.color='steelblue';" onmouseout="this.style.textDecoration='none';this.style.color='#2b2b2b'"></asp:HyperLink>
                        </div>
                        <div style="float: right; padding: 5px; width: 12%;">
                            <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#String.Format("{0:yyyy-MM-dd hh:mm}",Eval("News_Time")) %>' ForeColor="gray"></asp:Label>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>

    </div>
</asp:Content>
