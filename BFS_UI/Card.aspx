<%@ Page Title="卡牌资料库" Language="C#" MasterPageFile="~/BFS_MasterPage.Master" AutoEventWireup="true" CodeBehind="Card.aspx.cs" Inherits="BFS_UI.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 21%;
            height: 53px;
        }

        .auto-style4 {
            width: 223px;
            height: 53px;
        }

        .auto-style5 {
            height: 58px;
        }

        .auto-style6 {
            width: 21%;
            height: 58px;
        }

        .auto-style7 {
            width: 331px;
            height: 58px;
        }

        .auto-style8 {
            height: 54px;
        }

        .auto-style9 {
            height: 61px;
        }

        .auto-style10 {
            width: 223px;
        }
    </style>
    <script>
        $(document).ready(function () {

            $('select').addClass("form-control");

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div id="main-wrapper">
	
		
        <div style="float: left; width: 65%; height: 100%; background-color: #2a2c32">
           <div id="main">
            <%--内容--%>
            <div id="news-wrapper">
                <h3 class="section-title">卡牌搜索条件</h3>
                
                </div>
                <div style="width: 100%; height: 298px;">
                    <table style="width: 99%; margin-left: auto; margin-right: 0px; height: 100px;">
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="off" runat="server" Text="所属卡牌集:" Font-Size="15" ForeColor="#ffffcc" font-family="Microsoft YaHei"></asp:Label></td>
                            <td class="auto-style4">
                                <asp:DropDownList ID="DropDownList_off" runat="server">
                                    <asp:ListItem Value="0">Please Select</asp:ListItem>
                                    <asp:ListItem>基本卡</asp:ListItem>
                                    <asp:ListItem>纳克萨玛斯</asp:ListItem>
                                    <asp:ListItem>地精大战侏儒</asp:ListItem>
                                    <asp:ListItem>黑石山的火焰</asp:ListItem>
                                    <asp:ListItem>冠军的试炼</asp:ListItem>
                                    <asp:ListItem>探险者协会</asp:ListItem>
                                    <asp:ListItem>上古之神的低语</asp:ListItem>
                                    <asp:ListItem>卡拉赞之夜</asp:ListItem>
                                    <asp:ListItem>龙争虎斗加基森</asp:ListItem>
                                    <asp:ListItem>勇闯安戈洛</asp:ListItem>
                                    <asp:ListItem>冰封王座的骑士</asp:ListItem>
                                    <asp:ListItem>狗头人与地下世界冒险</asp:ListItem>
                                </asp:DropDownList></td>
                            <td>
                                 <asp:Panel ID="yiji" runat="server" Visible="true">
                                    <asp:Button ID="Button3" runat="server" Height="52px" Text="更多查询" Width="58px" OnClick="moreselect1_Click" BackColor="#2a2c32" ForeColor="Blue" BorderStyle="none" FlatStyle="faat" />
                                    <asp:Button ID="Button2" runat="server" Text="一级搜索" Height="52px" Width="63px" BackColor="#2a2c32" ForeColor="Blue" BorderStyle="none" FlatStyle="faat" OnClick="Button1_Click" />
                                     </asp:Panel>
                            </td>
                        </tr>
                         <asp:Panel ID="Panel1" runat="server" Visible="false">
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="Label4" runat="server" Text="职业:" Font-Size="15" ForeColor="#ffffcc" font-family="Microsoft YaHei"></asp:Label></td>
                            <td class="auto-style7">
                                <asp:DropDownList ID="DropDownList_occ" runat="server">
                                    <asp:ListItem Value="0">Please Select</asp:ListItem>
                                    <asp:ListItem>中立</asp:ListItem>
                                    <asp:ListItem>德鲁伊</asp:ListItem>
                                    <asp:ListItem>猎人</asp:ListItem>
                                    <asp:ListItem>法师</asp:ListItem>
                                    <asp:ListItem>圣骑士</asp:ListItem>
                                    <asp:ListItem>牧师</asp:ListItem>
                                    <asp:ListItem>潜伏者</asp:ListItem>
                                    <asp:ListItem>萨满祭司</asp:ListItem>
                                    <asp:ListItem>术士</asp:ListItem>
                                    <asp:ListItem>战士</asp:ListItem>
                                </asp:DropDownList></td>
                            <td>
                                <asp:Panel ID="erji" runat="server" Visible="false">
                                    <asp:Button ID="Button1" runat="server" Height="52px" Text="更多查询" Width="58px" OnClick="moreselect2_Click" BackColor="#2a2c32" ForeColor="Blue" BorderStyle="none" FlatStyle="faat" />
                                    <asp:Button ID="Button4" runat="server" Text="二级搜索" Height="52px" Width="63px" BackColor="#2a2c32" ForeColor="Blue" BorderStyle="none" FlatStyle="faat" OnClick="Button2_Click" />
                            </asp:Panel>
                            </td>
                        </tr>
                   <asp:Panel ID="Panel2" runat="server" Visible="false">
                        <tr>
                            <td class="auto-style8">
                                <asp:Label ID="Label5" runat="server" Text="费用:" Font-Size="15" ForeColor="#ffffcc" font-family="Microsoft YaHei"></asp:Label></td>
                            <td class="auto-style8">
                                <asp:DropDownList ID="DropDownList_cost" runat="server">
                                    <asp:ListItem Value="0">Please Select</asp:ListItem>
                                    <asp:ListItem Value="1">0</asp:ListItem>
                                    <asp:ListItem Value="2">1</asp:ListItem>
                                    <asp:ListItem Value="3">2</asp:ListItem>
                                    <asp:ListItem Value="4">3</asp:ListItem>
                                    <asp:ListItem Value="5">4</asp:ListItem>
                                    <asp:ListItem Value="6">5</asp:ListItem>
                                    <asp:ListItem Value="7">6</asp:ListItem>
                                    <asp:ListItem Value="8">7</asp:ListItem>
                                    <asp:ListItem Value="9">8</asp:ListItem>
                                    <asp:ListItem Value="10">9</asp:ListItem>
                                    <asp:ListItem Value="11">10</asp:ListItem>
                                    <asp:ListItem Value="12">11</asp:ListItem>
                                    <asp:ListItem Value="13">12</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                               <asp:Panel ID="sanji" runat="server" Visible="false">
                                    <asp:Button ID="Button5" runat="server" Height="52px" Text="更多查询" Width="58px" OnClick="moreselect3_Click" BackColor="#2a2c32" ForeColor="Blue" BorderStyle="none" FlatStyle="faat" />
                                    <asp:Button ID="Button6" runat="server" Text="三级搜索" Height="52px" Width="63px" BackColor="#2a2c32" ForeColor="Blue" BorderStyle="none" FlatStyle="faat" OnClick="Button3_Click" />
                               </asp:Panel>
                            </td>
                        </tr>
                         <asp:Panel ID="Panel3" runat="server" Visible="false">
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label6" runat="server" Text="种族:" Font-Size="15" ForeColor="#ffffcc" font-family="Microsoft YaHei"></asp:Label></td>
                            <td class="auto-style9">
                                <asp:DropDownList ID="DropDownList_Race" runat="server">
                                    <asp:ListItem Value="0">Please Select</asp:ListItem>
                                    <asp:ListItem>普通</asp:ListItem>
                                    <asp:ListItem>鱼人</asp:ListItem>
                                    <asp:ListItem>恶魔</asp:ListItem>
                                    <asp:ListItem>野兽</asp:ListItem>
                                    <asp:ListItem>图腾</asp:ListItem>
                                    <asp:ListItem>海盗</asp:ListItem>
                                    <asp:ListItem>龙</asp:ListItem>
                                    <asp:ListItem>机械</asp:ListItem>
                                    <asp:ListItem>元素</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                               <asp:Panel ID="siji" runat="server" Visible="false">
                                    <asp:Button ID="Button7" runat="server" Height="52px" Text="更多查询" Width="58px" OnClick="moreselect4_Click" BackColor="#2a2c32" ForeColor="Blue" BorderStyle="none" FlatStyle="faat" />
                                    <asp:Button ID="Button8" runat="server" Text="四级搜索" Height="52px" Width="63px" BackColor="#2a2c32" ForeColor="Blue" BorderStyle="none" FlatStyle="faat" OnClick="Button4_Click" />
                                </asp:Panel>
                            </td>
                        </tr>
                               <asp:Panel ID="Panel4" runat="server" Visible="false">
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label7" runat="server" Text="稀有度:" Font-Size="15" ForeColor="#ffffcc" font-family="Microsoft YaHei"></asp:Label></td>
                            <td class="auto-style5">
                                <asp:DropDownList ID="DropDownList_rd" runat="server">
                                    <asp:ListItem Value="0">Please Select</asp:ListItem>
                                    <asp:ListItem>免费</asp:ListItem>
                                    <asp:ListItem>普通</asp:ListItem>
                                    <asp:ListItem>稀有</asp:ListItem>
                                    <asp:ListItem>史诗</asp:ListItem>
                                    <asp:ListItem>传说</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                
                                    
                                    <asp:Button ID="Button10" runat="server" Text="五级搜索" Height="52px" Width="63px" BackColor="#2a2c32" ForeColor="Blue" BorderStyle="none" FlatStyle="faat" OnClick="Button5_Click" />
                              
                            </td>
                        </tr>
                         </asp:Panel>
                     </asp:Panel>
                 </asp:Panel>
</asp:Panel>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="卡牌名搜索" Font-Size="15" ForeColor="#ffffcc" font-family="Microsoft YaHei"></asp:Label>
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="txtName" runat="server" value="卡牌" Style="border-style: none; border-color: inherit; border-width: medium; line-height: 30px; background-image: url('Img_UI/输入框Y.png'); padding-left: 8px;" MaxLength="11" Height="32px" Width="201px"></asp:TextBox>
                            </td>
                            <td>
                                <div style="float: right; margin-right: 50px;">
                                    <asp:Button ID="Button11" runat="server" Text="确认" Height="82px" Width="63px" BackColor="#2a2c32" ForeColor="Blue" BorderStyle="none" FlatStyle="faat" OnClick="Button_Click" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
           
            <div style="width: 100%; height: 100%; margin-top: 10px;">
                <asp:ListView ID="CardView" runat="server" GroupItemCount="3">
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
                        <div style="float: left; width: 30%; margin-left: 3%; height: 400px; margin-top: 10px;">
                            <div style="width: 100%; height: 400px">
                                <a href='<%#"Card_Img.aspx?cardid="+Eval("Card_ID") %>'>
                                    <asp:Image ID="Img" runat="server" ImageUrl='<%#Eval("Card_Img") %>' Width="150" Height="350" /></a>
                            </div>
                            <%--<div style="width: 100%; text-align: center;">
                            <asp:HyperLink ID="Pic_Name" runat="server" Text='<%#Eval("Pic_Name") %>' Font-Size="12" NavigateUrl='<%#"~/Pic_BZ.aspx?picid="+Eval("Pic_ID") %>' ForeColor="#2b2b2b" Font-Underline="false" onmouseover="this.style.textDecoration='underline';this.style.color='steelblue';" onmouseout="this.style.textDecoration='none';this.style.color='#2b2b2b'"></asp:HyperLink>
                        </div>--%>
                        </div>
                    </ItemTemplate>

                </asp:ListView>
            </div>
                </div>
        </div>
        <div style="float: right; width: 20%; height: 100%;">
            <div id="sidebar">
		
			<div class="widget">
			
				<h4 class="widget-title tabs">卡组推荐</h4> 
            <div style="width: 100%; height: 968px; background-color: #5c5850">
                <asp:Repeater ID="kazu" runat="server">
                   <HeaderTemplate><div></div></HeaderTemplate>
                   <ItemTemplate> 
                           <div style="height:48px;width:100%;">
                                  <div style="float: left; padding: 5px; width: 70%;">
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑" ToolTip='<%#"点击查看："+ Eval("News_Title") %>' Font-Size="12" NavigateUrl='<%#"News_read.aspx?newsid="+ Eval("News_ID") %>' ForeColor="#2b2b2b" Font-Underline="false" Text='<%#Eval("News_Title") %>' onmouseover="this.style.textDecoration='underline';this.style.color='steelblue';" onmouseout="this.style.textDecoration='none';this.style.color='#2b2b2b'"></asp:HyperLink>
                        </div>
                       
                       </div>
                   </ItemTemplate>
                   <%--<FooterTemplate>
                      <div style="float: right; width: 18%;height">
                             <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑" ToolTip='<%#"点击查看："+ Eval("News_Title") %>' Font-Size="12" NavigateUrl="News_ZT.aspx" ForeColor="#2b2b2b" Font-Underline="false" Text="更多" onmouseover="this.style.textDecoration='underline';this.style.color='steelblue';" onmouseout="this.style.textDecoration='none';this.style.color='#2b2b2b'"></asp:HyperLink>
                        </div>
                   </FooterTemplate>--%>
               </asp:Repeater>
            </div>
        </div>
    </div>
       </div>
            </div>
</asp:Content>
