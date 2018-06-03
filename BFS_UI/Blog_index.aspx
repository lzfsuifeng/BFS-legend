<%@ Page Title="论坛首页" Language="C#" MasterPageFile="~/BFS_MasterPage.Master" AutoEventWireup="true" CodeBehind="Blog_index.aspx.cs" Inherits="BFS_UI.WebForm16" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="utf-8" />
    <meta name="robots" content="index, follow" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />


    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />


    <link rel="stylesheet" href="styles/style.css" />
    <link rel="stylesheet" href="styles/inner.css" />
    <link rel="stylesheet" href="styles/color.css" />
    <link rel="stylesheet" href="styles/layout.css" />

    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>

    <!-- jQuery Superfish -->
    <script type="text/javascript" src="js/hoverIntent.js"></script>
    <script type="text/javascript" src="js/superfish.js"></script>
    <script type="text/javascript" src="js/supersubs.js"></script>


    <!-- jQuery Dropdown Mobile -->
    <script type="text/javascript" src="js/tinynav.min.js"></script>

    <!-- Custom Script -->
    <script type="text/javascript" src="js/custom.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="margin-top: 50px">




        <%--   头部--%>
        <div id="outerbeforecontent">
            <div class="container">
                <div class="row">
                    <p>&nbsp;</p>
                    <div id="beforecontent" class="twelve columns">

                        <h1 class="pagetitle">BFS_BLOG</h1>
                        <span class="pagedesc">一个和炉石相关的社区</span>
                    </div>
                    <ul id="top-navigation">

                        <li><a href="Blog_index.aspx">最新</a></li>
                        <li><a href="Blog_index.aspx?jh=jinghua">精华贴</a></li>
                        <li><a href="Blog_index.aspx?ft=fatei">发帖</a></li>
                        <li><a href="Blog_index.aspx?hy=true">注册会员</a></li>
                    </ul>
                </div>
            </div>
        </div>



        <%-- 内容--%>
        <div id="outermain">
            <div class="container">
                <div class="row">
                    <%--  左边--%>
                    <%-- 正常展示区--%>
                    <asp:Panel ID="lookbbs" runat="server" Visible="true">
                        <section id="maincontent" class="eight columns positionleft">
                            <div class="padcontent">

                                <section class="content">
                                    <asp:ListView ID="BBSView" runat="server">
                                        <LayoutTemplate>
                                            <div id="itemPlaceholderContainer" runat="server">
                                                <div id="itemPlaceholder" runat="server">
                                                </div>
                                            </div>
                                            <div class="wp-pagenavi">
                                                <asp:DataPager ID="DataPager1" class="myPager" runat="server" PageSize="5">
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
                                        <ItemTemplate>

                                            <article class="post">
                                                <div class="date-wrapper">
                                                    <div class="date-value">
                                                        <asp:Label ID="Label2" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#String.Format("{0:yyyy-MM-dd}",Eval("BBS_Time")) %>' ForeColor="gray"></asp:Label>
                                                    </div>
                                                </div>
                                                <div class="header-wrapper">
                                                    <h2 class="posttitle">
                                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑" Font-Size="12" NavigateUrl='<%#"BBS_read.aspx?bbsid="+ Eval("BBS_ID") %>' ForeColor="#2b2b2b" Font-Underline="false" Text='<%# SplitChar(Eval("BBS_Title").ToString(),15) %>' onmouseover="this.style.textDecoration='underline';this.style.color='steelblue';" onmouseout="this.style.textDecoration='none';this.style.color='#2b2b2b'"></asp:HyperLink></h2>
                                                    <div class="entry-utility">
                                                        <div class="user">
                                                            Posted by
                                                        <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#Eval("BBS_Users_Name") %>' ForeColor="gray"></asp:Label>
                                                        </div>
                                                        <div class="tag">
                                                            <asp:Label ID="Label4" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#Eval("BBS_Class") %>' ForeColor="gray"></asp:Label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="clear"></div>
                                                <div class="postimg">
                                                    <asp:Image ID="image1" runat="server" ImageUrl='<%# Eval("BBS_Img") %>' Width="100%" Height="200px" />
                                                </div>

                                                <div class="entry-content">
                                                    <p>
                                                        <asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#SplitChar(Eval("BBS_Content").ToString(),8) %>' ForeColor="#000000"></asp:Label>
                                                    </p>
                                                    <a href='<%#"BBS_read.aspx?bbsid="+ Eval("BBS_ID") %>' class="more">更多  &rarr;</a>
                                                </div>

                                                <div class="clear"></div>
                                            </article>
                                        </ItemTemplate>
                                    </asp:ListView>





                                </section>

                            </div>
                        </section>
                    </asp:Panel>
                    <%--  发表帖子--%>
                    <asp:Panel ID="addbbs" runat="server" Visible="false">
                        <section id="maincontent1" class="eight columns positionleft">
                            <div class="padcontent">

                                <section class="content">
                                    <%-- 只有vip用户才可以发帖--%>
                                    <asp:Panel ID="Panel1" runat="server" Visible="false">

                                        <article class="post">
                                            <table>
                                                <tr>
                                                    <td style="width: 200px; text-align: center;">
                                                        <asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="15" Text="标题" ForeColor="gray"></asp:Label></td>
                                                    <td>
                                                        <asp:TextBox ID="txtTitle1" runat="server" Height="31px" Width="200px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 200px; text-align: center;">
                                                        <asp:Label ID="Label7" runat="server" Font-Names="微软雅黑" Font-Size="15" Text="帖子分类" ForeColor="gray"></asp:Label></td>
                                                    <td>
                                                        <asp:DropDownList ID="DropDownList_occ" runat="server">
                                                            <asp:ListItem Value="0"></asp:ListItem>
                                                            <asp:ListItem>德鲁伊</asp:ListItem>
                                                            <asp:ListItem>猎人</asp:ListItem>
                                                            <asp:ListItem>法师</asp:ListItem>
                                                            <asp:ListItem>圣骑士</asp:ListItem>
                                                            <asp:ListItem>牧师</asp:ListItem>
                                                            <asp:ListItem>潜行者</asp:ListItem>
                                                            <asp:ListItem>萨满祭司</asp:ListItem>
                                                            <asp:ListItem>术士</asp:ListItem>
                                                            <asp:ListItem>战士</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 200px; text-align: center;">
                                                        <asp:Label ID="Label5" runat="server" Font-Names="微软雅黑" Font-Size="15" Text="封面" ForeColor="gray"></asp:Label></td>
                                                    <td>
                                                        <asp:FileUpload ID="FileUpload_img" runat="server" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <div style="height: 140px; margin-top: 10px;">
                                                            <div style="margin-top: 15px; width: 100%;">
                                                                <span style="vertical-align: top;">
                                                                    <asp:Label ID="tishi" runat="server" Text="(图文并茂，无字数限制！)" Font-Size="15" ForeColor="#555555"></asp:Label>
                                                                </span>
                                                                <span>
                                                                    <CKEditor:CKEditorControl ID="txtContent" runat="server" BasePath="../ckeditor/" DefaultLanguage="zh-cn" Width="91%" Height="262px"></CKEditor:CKEditorControl>
                                                                </span>
                                                                <div style="float: right; margin-top: 10px;">
                                                                    <asp:Button ID="Button2" runat="server" Text="发帖" Height="33px" Style="margin-left: 0px" Width="71px" OnClick="Button1_Click" />
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>




                                        </article>
                                    </asp:Panel>
                                    <asp:Panel ID="Panel2" runat="server" Visible="true">
                                        <article class="post">
                                            <h2 class="posttitle">
                                                <asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="30" Text="只有vip用户才可以发帖" ForeColor="gray"></asp:Label>
                                            </h2>
                                        </article>
                                    </asp:Panel>

                                </section>
                            </div>
                        </section>
                    </asp:Panel>
                    <%-- 注册会员界面--%>
                    <asp:Panel ID="zuce" runat="server" Visible="false">
                        <section id="maincontent2" class="eight columns positionleft">
                            <div class="padcontent">

                                <section class="content">
                                    <asp:Panel ID="Panel3" runat="server" Visible="false">
                                        <article class="post">
                                            <h2 class="posttitle">
                                                <asp:Label ID="Label6" runat="server" Font-Names="微软雅黑" Font-Size="30" Text="您已经是VIP用户" ForeColor="gray"></asp:Label>
                                            </h2>
                                        </article>
                                    </asp:Panel>
                                    <asp:Panel ID="Panel4" runat="server" Visible="false">
                                        <article class="post">
                                            <h2 class="posttitle">
                                                <asp:Label ID="Label8" runat="server" Font-Names="微软雅黑" Font-Size="30" Text="请先登录" ForeColor="gray"></asp:Label>
                                            </h2>
                                        </article>
                                    </asp:Panel>
                                    <asp:Panel ID="Panel5" runat="server" Visible="false" Width="572px">

                                        <article class="post">
                                            <table>
                                                <tr>

                                                    <td style="width: 200px; text-align: center;">
                                                        <asp:Label ID="Label9" runat="server" Font-Names="微软雅黑" Font-Size="15" Text="请输入" ForeColor="gray"></asp:Label></td>

                                                    <td>
                                                        <div style="height: 30px; padding-top: 0px; width: 344px; margin-left: auto; margin-right: auto; margin-top: 15px;">
                                                            <%--文本框输入手机号--%>

                                                            <asp:TextBox ID="txtCn" runat="server" value="我承诺我会严格遵守论坛的相关制度" Style="border-style: none; border-color: inherit; border-width: medium; line-height: 30px; background-image: url('Img_UI/输入框Y.png'); padding-left: 8px;" MaxLength="11" Width="208px"></asp:TextBox>

                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>
                                                        <div style="height: 30px; padding-top: 0px; width: 344px; margin-left: auto; margin-right: auto; margin-top: 15px;">
                                                            <%--单击注册，按钮--%>
                                                            <asp:Button ID="Button3" runat="server" Text="立即注册" Style="color: white; height: 30px; width: 100px; background-color: #5ec4a0; border: none; font-size: 19px; cursor: pointer" OnClick="huiyuan_Click" />
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>




                                        </article>
                                    </asp:Panel>
                                </section>
                            </div>
                        </section>
                    </asp:Panel>
                    <%-- 右边--%>
                    <aside id="sidebar" class="four columns">
                        <div class="padsidebar">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title1">搜索</h2>

                                    <div class="bgsearch">
                                        <asp:TextBox ID="txttitle" runat="server" class="form-control" />
                                        <div style="float: right">
                                            <asp:Button ID="Button1" runat="server" Text="确认" CssClass="btn btn-info" OnClick="Button1_Click1" />
                                        </div>
                                    </div>

                                </li>
                                <li class="widget-container">
                                    <h2 class="widget-title1">职业分类</h2>
                                    <ul>
                                        <li><a href="Blog_index.aspx">全部（<asp:Label ID="num" runat="server" ForeColor="Blue"></asp:Label>）</a></li>
                                        <li><a href="Blog_index.aspx?class=德鲁伊">德鲁伊（<asp:Label ID="num1" runat="server" ForeColor="Blue"></asp:Label>）</a></li>
                                        <li><a href="Blog_index.aspx?class=猎人">猎人（<asp:Label ID="num2" runat="server" ForeColor="Blue"></asp:Label>）</a></li>
                                        <li><a href="Blog_index.aspx?class=法师">法师（<asp:Label ID="num3" runat="server" ForeColor="Blue"></asp:Label>）</a></li>
                                        <li><a href="Blog_index.aspx?class=圣骑士">圣骑士（<asp:Label ID="num4" runat="server" ForeColor="Blue"></asp:Label>）</a></li>
                                        <li><a href="Blog_index.aspx?class=牧师">牧师（<asp:Label ID="num5" runat="server" ForeColor="Blue"></asp:Label>）</a></li>
                                        <li><a href="Blog_index.aspx?class=战士">战士（<asp:Label ID="num6" runat="server" ForeColor="Blue"></asp:Label>）</a></li>
                                        <li><a href="Blog_index.aspx?class=潜行者">潜行者（<asp:Label ID="num7" runat="server" ForeColor="Blue"></asp:Label>）</a></li>
                                        <li><a href="Blog_index.aspx?class=萨满祭祀">萨满祭祀（<asp:Label ID="num8" runat="server" ForeColor="Blue"></asp:Label>）</a></li>
                                        <li><a href="Blog_index.aspx?class=术士">术士（<asp:Label ID="num9" runat="server" ForeColor="Blue"></asp:Label>）</a></li>
                                    </ul>
                                </li>
                                <li class="widget-container">
                                    <h2 class="widget-title1">精华推荐</h2>
                                    <ul class="rp-widget">
                                        <asp:Repeater ID="jinghua" runat="server">
                                            <HeaderTemplate>
                                                <div></div>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <li>
                                                    <div class="postimg">
                                                        <asp:Image ID="image1" runat="server" ImageUrl='<%# Eval("BBS_Img") %>' Width="100%" Height="50" />
                                                    </div>
                                                    <h3>
                                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑" ToolTip='<%#"点击查看："+ Eval("BBS_Title") %>' Font-Size="12" NavigateUrl='<%#"BBS_read.aspx?bbsid="+ Eval("BBS_ID") %>' ForeColor="#2b2b2b" Font-Underline="false" Text='<%#Eval("BBS_Title") %>' onmouseover="this.style.textDecoration='underline';this.style.color='steelblue';" onmouseout="this.style.textDecoration='none';this.style.color='#2b2b2b'"></asp:HyperLink></h3>
                                                    <span class="smalldate">
                                                        <asp:Label ID="Label2" runat="server" Font-Names="微软雅黑" Font-Size="10" Text='<%#String.Format("{0:yyyy-MM-dd}",Eval("BBS_Time")) %>' ForeColor="gray"></asp:Label></span>
                                                    <span class="clear"></span>
                                                </li>

                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </li>
                                <%--<li class="widget-container">
                                    <h2 class="widget-title1">Text Widget</h2>
                                    <div class="textwidget">Nunc in diam ut tortor vestibulum eleifend sit amet at diam. Phasellus mollis, ante et suscipit egestas, elit nunc facilisis elit, vitae malesuada dui mauris aliquam mi.</div>
                                </li>--%>
                            </ul>
                        </div>
                    </aside>

                </div>
            </div>
        </div>
        <!-- END MAIN CONTENT -->


        <div class="clear"></div>
        <!-- clear float -->
    </div>



</asp:Content>
