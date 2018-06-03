<%@ Page Title="首页" Language="C#" MasterPageFile="~/BFS_MasterPage.Master" AutoEventWireup="true" CodeBehind="BFS_Web.aspx.cs" Inherits="BFS_UI.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- 滚动轮播图片--%>
    <%-- %> <div id="fade_focus">
    <div class="loading">Loading...<br /><img src="Img_UI/吉安娜Q版.gif" width="100" height="100" /></div>
    <ul>
      <li><a href="" target="_blank"><img src="Img_UI/亡灵龙.jpg" style="width:100%; height:500px;" alt="展示图片1" /></a></li>
      <li><a href="" target="_blank"><img src="Img_UI/麦迪文.jpg" style="width:100%; height:500px;" alt="展示图片2" /></a></li>
      <li><a href="" target="_blank"><img src="Img_UI/冰封王座.jpg" style="width:100%; height:500px;" alt="展示图片3" /></a></li>
      <li><a href="" target="_blank"><img src="Img_UI/恶灵骑士.jpg" style="width:100%; height:500px;" alt="展示图片4" /></a></li>
        <li><a href="" target="_blank"><img src="Img_UI/魔法.jpg" style="width:100%; height:500px;" alt="展示图片5" /></a></li>
    </ul>
</div>--%>
    <%--滚动活动图片--%>
    <div class="slider" style="height:450px;width:100%">
        <div class="sliderContent" style="height:450px;width:100%">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="featured-item" style="background: #000 ; height: 450px;width:100%">
                       
                        <div class="featured-inner" style="height:450px;width:100%">
                             
                            <div class="featured-inner" style="margin-top:150px;position:absolute">

                                <div class="featured-arrows"></div>
                                <h1><a href='<%#"Action.aspx?actid="+ Eval("Act_ID") %>'>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Act_Title") %>'></asp:Label>
                                </a></h1>
                                <p class="featured-meta">
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Act_Time") %>'></asp:Label>
                                </p>

                            </div>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Act_Img")%>' Height="450px" Width="100%"/>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
           
        </div>
         <div class="top-overlay"></div>
            <div class="bottom-overlay"></div>
    </div>

    <div class="inner_copyright">Collect from </div>
    <%-- 内容页面--%>
    <div id="main-wrapper">

        <%-- 右边--%>
      <div style="width:60%;float:left">
            <div id="main">
            <%--内容--%>
            <div id="news-wrapper">
                <h3 class="section-title">最新资讯</h3>
                <asp:ListView ID="ListView1" runat="server" >
                    <ItemTemplate>
                        <div class="news-item">

                            <div class="news-thumb-wrapper">

                                <a href="./news-post.html">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("News_Img")%>' Height="300px" Width="90%"/>

                                <div class="news-arrows"></div>
                                <h1>
                                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑" ToolTip='<%#"点击查看："+ Eval("News_Title") %>' Font-Size="8" NavigateUrl='<%#"News_read.aspx?newsid="+ Eval("News_ID") %>' ForeColor="#2b2b2b" Font-Underline="false" Text='<%# SplitChar(Eval("News_Title").ToString(),15 )%>' onmouseover="this.style.textDecoration='underline';this.style.color='steelblue';" onmouseout="this.style.textDecoration='none';this.style.color='#2b2b2b'"></asp:HyperLink></h1>

                            </div>

                            <div class="news-meta-wrapper" style="width:80%">
                                <span class="news-meta">
                                    <asp:Label ID="news_time" runat="server" Text='<%#String.Format("{0:yyyy-MM-dd}",Eval("News_Time")) %>'></asp:Label>
                                </span>
                                <span class="news-cats">
                                    <asp:Label ID="news_class" runat="server" Text='<%# Eval("News_Class") %>'></asp:Label>
                                </span>
                            </div>

                            <p>
                                <asp:Label ID="news_conent" runat="server" Text='<%# SplitChar(Eval("News_Conentent").ToString(),15)%>'></asp:Label>
                                <a href='<%#"News_read.aspx?newsid="+ Eval("News_ID") %>'>更多</a>
                            </p>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server">
                            <div id="itemPlaceholder" runat="server">
                            </div>
                        </div>
                       
                    </LayoutTemplate>

                </asp:ListView>
                 <div id="pagination">
                            <asp:DataPager ID="DataPager1"  runat="server" PageSize="8" PagedControlID="ListView1" >
                               <Fields>
                                    <asp:TemplatePagerField>
                                        <PagerTemplate>
                                            <span class="total">共<strong><%=Math.Ceiling ((double)DataPager1.TotalRowCount / DataPager1.PageSize)%></strong>页<strong><%=DataPager1.TotalRowCount%></strong>条记录</span>
                                        </PagerTemplate>
                                    </asp:TemplatePagerField>
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="首页" LastPageText="尾页" />
                                    <asp:NumericPagerField ButtonCount="5" CurrentPageLabelCssClass="current" />
                                    <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="首页" LastPageText="尾页" />
                                </Fields>

                            </asp:DataPager>

                        </div>
            </div>
           
        </div>
      </div>
        <%-- 左边--%>
      <div style="width:34%;float:right">
            <div id="sidebar">

            <div class="widget">

                <h4 class="widget-title tabs">新闻列表</h4>

                <div class="panel-wrapper">

                    <a href="#panel-1" rel="panel" class="selected">乱斗模式</a>
                    <a href="#panel-2" rel="panel">版本更新</a>
                    <a href="#panel-3" rel="panel">炉石杂谈</a>
                </div>

                <div id="mask">
                    <div id="panel">

                        <div id="panel-1">
                            <asp:Repeater ID="News_luandou" runat="server">
                                <ItemTemplate>
                                    <div class="side-item">

                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("News_Img")%>' class="side-item-thumb" />
                                        <h4><a href="./review-post.html">
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑" ToolTip='<%#"点击查看："+ Eval("News_Title") %>' Font-Size="8" NavigateUrl='<%#"News_read.aspx?newsid="+ Eval("News_ID") %>' ForeColor="#2b2b2b" Font-Underline="false" Text='<%# SplitChar(Eval("News_Title").ToString(),6 )%>' onmouseover="this.style.textDecoration='underline';this.style.color='steelblue';" onmouseout="this.style.textDecoration='none';this.style.color='#2b2b2b'"></asp:HyperLink>
                                        </a></h4>
                                        <span class="side-item-cat">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("News_Class") %>'></asp:Label>
                                        </span>
                                        <span class="side-item-meta">
                                            <asp:Label ID="news_time" runat="server" Text='<%#String.Format("{0:yyyy-MM-dd}",Eval("News_Time")) %>'></asp:Label>
                                        </span>
                                        
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                        </div>

                        <div id="panel-2">

                            <asp:Repeater ID="News_banben" runat="server">
                                <ItemTemplate>
                                    <div class="side-item">

                                       <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("News_Img")%>' class="side-item-thumb" />
                                        <h4><a href="./review-post.html">
                                                                                       <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑" ToolTip='<%#"点击查看："+ Eval("News_Title") %>' Font-Size="8" NavigateUrl='<%#"News_read.aspx?newsid="+ Eval("News_ID") %>' ForeColor="#2b2b2b" Font-Underline="false" Text='<%# SplitChar(Eval("News_Title").ToString(),6 )%>' onmouseover="this.style.textDecoration='underline';this.style.color='steelblue';" onmouseout="this.style.textDecoration='none';this.style.color='#2b2b2b'"></asp:HyperLink>

                                        </a></h4>
                                        <span class="side-item-cat">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("News_Class") %>'></asp:Label>
                                        </span>
                                        <span class="side-item-meta">
                                            <asp:Label ID="news_time" runat="server" Text='<%#String.Format("{0:yyyy-MM-dd}",Eval("News_Time")) %>'></asp:Label>
                                        </span>
                                        
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>

                        <div id="panel-3">

                            <asp:Repeater ID="News_zatan" runat="server">
                                <ItemTemplate>
                                    <div class="side-item">

                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("News_Img")%>' class="side-item-thumb" />
                                        <h4><a href="./review-post.html">
                                                                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑" ToolTip='<%#"点击查看："+ Eval("News_Title") %>' Font-Size="8" NavigateUrl='<%#"News_read.aspx?newsid="+ Eval("News_ID") %>' ForeColor="#2b2b2b" Font-Underline="false" Text='<%# SplitChar(Eval("News_Title").ToString(),6 )%>' onmouseover="this.style.textDecoration='underline';this.style.color='steelblue';" onmouseout="this.style.textDecoration='none';this.style.color='#2b2b2b'"></asp:HyperLink>

                                        </a></h4>
                                        <span class="side-item-cat">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("News_Class") %>'></asp:Label>
                                        </span>
                                        <span class="side-item-meta">
                                            <asp:Label ID="news_time" runat="server" Text='<%#String.Format("{0:yyyy-MM-dd}",Eval("News_Time")) %>'></asp:Label>
                                        </span>
                                       
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                        </div>

                    </div>
                </div>

            </div>

            <%-- 中间分割点--%>
            <div class="widget-banner">

                <img src="Img_UI/小王子安度因.jpg" alt="" height="200" />

            </div>

            <%-- 精华帖子--%>
            <div class="widget">

                <h4 class="widget-title">精华帖子</h4>

                <asp:Repeater ID="jinghua" runat="server">
                    <ItemTemplate>
                        <div class="side-item">

                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("BBS_Img")%>' class="side-item-thumb" />
                            <h4><a href='<%#"BBS_read.aspx?bbsid="+ Eval("BBS_ID") %>'>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("BBS_Title") %>' NavigateUrl='<%#"BBS_read.aspx?bbsid="+ Eval("BBS_ID") %>'></asp:Label>
                            </a></h4>
                            <span class="side-item-meta">
                                <asp:Label ID="Label7" runat="server" Text='<%#String.Format("{0:yyyy-MM-dd}",Eval("BBS_Time")) %>'></asp:Label></span>

                        </div>

                    </ItemTemplate>
                </asp:Repeater>


            </div>

            <div class="widget">

                <h4 class="widget-title">Latest Media</h4>

               
                 <asp:Repeater ID="liveview" runat="server">
                    <ItemTemplate>
                         <div class="side-item">

                    <div class="media-thumb">
                        <div class="screenshot-icon"></div>
                        <a href="Live.aspx">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Live_Img") %>' alt="" width="290px" height="100px"/>
                           </a>
                    </div>

                </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

        </div>
      </div>
    </div>


</asp:Content>
