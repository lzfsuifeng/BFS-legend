<%@ Page Title="直播间导航" Language="C#" MasterPageFile="~/BFS_MasterPage.Master" AutoEventWireup="true" CodeBehind="Live.aspx.cs" Inherits="BFS_UI.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-wrapper">
    <div style=" height: 800px;margin-left:auto;margin-right:auto;">
        <h1 class="section-title">主播</h1>
           
            <div>
            <asp:ListView ID="live_view" runat="server" GroupItemCount="2">
                <LayoutTemplate>
                    <div id="groupPlaceholder" runat="server">
                    </div>
                    <div style="width: 100%; margin-top: 20px; float: left; background-color: #ececec;">
                        <asp:DataPager ID="DataPager1" class="myPager" runat="server" PageSize="6">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                                    ShowPreviousPageButton="true" FirstPageText="首页" NextPageText="下一页" PreviousPageText="上一页" LastPageText="尾页" />
                                <asp:NumericPagerField ButtonCount="5" CurrentPageLabelCssClass="current" />
                                <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True"
                                    ShowNextPageButton="true" NextPageText="下一页" PreviousPageText="上一页" ShowPreviousPageButton="false" FirstPageText="首页" LastPageText="尾页" />

                            </Fields>

                        </asp:DataPager>

                    </div>
                </LayoutTemplate>
                <GroupTemplate>
                    <div id="itemPlaceholder" runat="server">
                    </div>
                </GroupTemplate>
                <ItemTemplate>
                    <div style="float: left; width: 40%; margin-left: 7%; height: 320px; margin-top: 10px;">
                        <div style="width: 100%; height: 300px">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Live_Img") %>' Width="100%" Height="250px"/>
                        </div>
                        <div style="width: 100%; text-align: center;">
                            <asp:HyperLink ID="Livetitle" runat="server" Text='<%#Eval("Live_Title") %>' Font-Size="12"  ForeColor="#2b2b2b" Font-Underline="false" onmouseover="this.style.textDecoration='underline';this.style.color='steelblue';" onmouseout="this.style.textDecoration='none';this.style.color='#2b2b2b'" NavigateUrl='<%#Eval("Live_Url").ToString().Trim() %>'/>
                        </div>
                    </div>
                </ItemTemplate>

            </asp:ListView>
                </div>
        </div>
   </div>
</asp:Content>
