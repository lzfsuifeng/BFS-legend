<%@ Page Title="帖子浏览" Language="C#" MasterPageFile="~/BFS_MasterPage.Master" AutoEventWireup="true" CodeBehind="BBS_read.aspx.cs" Inherits="BFS_UI.WebForm13" %>

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
                        <li><a href="#">论坛相关</a></li>
                    </ul>
                </div>
            </div>
        </div>



        <%-- 内容--%>
        <div id="outermain">
            <div class="container">
                <div class="row">
                    <%--  左边--%>
                    <section id="maincontent" class="eight columns positionleft">
                        <div class="padcontent">

                            <section class="content">
                                <%-- 帖子内容--%>
                                <article class="post">
                                    <div class="date-wrapper">
                                        <div class="date-value">
                                            <asp:Label ID="txtTime" runat="server" Text="" ForeColor="#2b2b2b" Font-Size="8"></asp:Label>

                                        </div>
                                    </div>
                                    <div class="header-wrapper">
                                        <h2 class="posttitle">
                                            <asp:Label ID="txtTitle" runat="server" Text="" ForeColor="#2b2b2b" Font-Size="12"></asp:Label></h2>
                                        <div class="entry-utility">
                                            <div class="user">
                                                Posted by:
                                                <asp:Label ID="txtName" runat="server" Text="" ForeColor="#2b2b2b" Font-Size="8"></asp:Label>
                                            </div>
                                            <div class="tag">
                                                <asp:Label ID="txtClass" runat="server" Text="" ForeColor="#2b2b2b" Font-Size="8"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    <div class="postimg">
                                        <asp:Image ID="Image1" runat="server" />
                                    </div>

                                    <div class="entry-content">
                                        <asp:Literal ID="Content" runat="server"></asp:Literal>
                                    </div>

                                    <div class="clear"></div>
                           </article>

                                <div class="author">
                                    <h2 class="ctd_comments_title">评论<span><asp:Label ID="Label1" runat="server"></asp:Label>条</span></h2>
                                </div>

                                <div class="separator"></div>
                             

                            </section>
                               <%--  评论区--%>
                                <section id="comment">

                                    <ol class="commentlist">

                                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>

                                                <asp:ListView ID="listView1" runat="server" OnItemDataBound="listView1_ItemDataBound">
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
                                                        <li>
                                                            <div class="comment-body">
                                                                <div class="comment-arrow"></div>
                                                                <div class="avatar-img">
                                                                    <asp:Image ID="img" runat="server" CssClass="img-rounded" Height="22px" Width="22px" ImageUrl='<%# Eval("Users_Img") %>' />
                                                                </div>
                                                                <cite class="fn"><%#Eval("BC_Users_Name") %></cite>
                                                                <span class="tdate">
                                                                    <div class="c_time"><%#string.Format("{0:yyyy-MM-dd HH:mm}",Eval("BC_Time")) %></div>
                                                                </span>&nbsp;&nbsp; <span class="reply">
                                                                    <div class="q_comment_box_btn">

                                                                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link_reply js_expand_reply" CausesValidation="false" OnClick="LinkButton1_Click">回复<span></span></asp:LinkButton>
                                                                    </div>
                                                                </span>
                                                                <div class="commenttext">
                                                                    <p><%#Eval("BC_Content") %></p>
                                                                </div>
                                                                <asp:Panel ID="Panel1" runat="server" Visible="false">
                                                                    <div class="js_replycontainer">
                                                                        <div class="e_comment_r_expand js_replyroot">
                                                                            <div class="q_comment_box js_q_comment_box">
                                                                                <div class="textarea2">
                                                                                    <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("BC_ID") %>' />
                                                                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("BC_ID") %>' Visible="false"></asp:Label>

                                                                                    <div style="margin-top: 15px; width: 100%;">

                                                                                        <span>
                                                                                            <CKEditor:CKEditorControl ID="txtContent" runat="server" BasePath="../ckeditor/" DefaultLanguage="zh-cn" Height="150px"></CKEditor:CKEditorControl>
                                                                                        </span>

                                                                                    </div>

                                                                                </div>
                                                                                <div class="q_comment_box_btn">

                                                                                    <asp:Button ID="Button2" runat="server" CssClass="btn_comment js_btn_reply" CausesValidation="false" OnClick="huifu_Click" Text="回复" />
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </asp:Panel>
                                                            </div>

                                                            <%-- 评论回复--%>

                                                            <ol>
                                                                <asp:Repeater ID="Repeater2" runat="server"  >
                                                                    <ItemTemplate>
                                                                        <li>
                                                                            <div class="comment-body">
                                                                                <div class="comment-arrow"></div>
                                                                                <div class="avatar-img">
                                                                                    <asp:Image ID="img" runat="server" CssClass="img-rounded" Height="22px" Width="22px" ImageUrl='<%# Eval("Users_Img") %>' />
                                                                                </div>
                                                                                <cite class="fn"><%#Eval("Users_Name") %></cite>
                                                                                <span class="tdate">
                                                                                    <div class="c_time"><%#string.Format("{0:yyyy-MM-dd HH:mm}",Eval("BCB_Time")) %></div>
                                                                                </span>&nbsp;&nbsp; <span class="reply">
                                                                                    <div class="q_comment_box_btn">

                                                                                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="link_reply js_expand_reply" CausesValidation="false" OnClick="LinkButton1_Click">回复<span></span></asp:LinkButton>
                                                                                    </div>
                                                                                </span>
                                                                                <div class="commenttext">
                                                                                    <p><%#Eval("BCB_Content") %></p>
                                                                                </div>
                                                                               <%-- <asp:Panel ID="Panel2" runat="server" Visible="false">
                                                                                    <div class="js_replycontainer">
                                                                                        <div class="e_comment_r_expand js_replyroot">
                                                                                            <div class="q_comment_box js_q_comment_box">
                                                                                                <div class="textarea2">
                                                                                                    <asp:HiddenField ID="HiddenField2" runat="server" Value='<%#Eval("BCB_ID") %>' />
                                                                                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("BCB_ID") %>' Visible="false"></asp:Label>

                                                                                                    <div style="margin-top: 15px; width: 100%;">

                                                                                                        <span>
                                                                                                            <CKEditor:CKEditorControl ID="txtContent" runat="server" BasePath="../ckeditor/" DefaultLanguage="zh-cn" Height="150px"></CKEditor:CKEditorControl>
                                                                                                        </span>

                                                                                                    </div>

                                                                                                </div>
                                                                                                <div class="q_comment_box_btn">

                                                                                                    <asp:Button ID="Button2" runat="server" CssClass="btn_comment js_btn_reply" CausesValidation="false" OnClick="huifu1_Click" Text="回复" />
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </asp:Panel>
                                                                                <ol>
                                                                                    <asp:Repeater ID="Repeater3" runat="server">
                                                                                        <ItemTemplate>
                                                                                            <li>
                                                                                                <div class="comment-body">
                                                                                                    <div class="comment-arrow"></div>
                                                                                                    <div class="avatar-img">
                                                                                                        <asp:Image ID="img" runat="server" CssClass="img-rounded" Height="22px" Width="22px" ImageUrl='<%# Eval("Users_Img") %>' />
                                                                                                    </div>
                                                                                                    <cite class="fn"><%#Eval("Users_Name") %></cite>
                                                                                                    <span class="tdate">
                                                                                                        <div class="c_time"><%#string.Format("{0:yyyy-MM-dd HH:mm}",Eval("BCB_Time")) %></div>
                                                                                                    </span>&nbsp;&nbsp; <span class="reply">
                                                                                                        <div class="q_comment_box_btn">

                                                                                                            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="link_reply js_expand_reply" CausesValidation="false" OnClick="LinkButton1_Click">回复<span></span></asp:LinkButton>
                                                                                                        </div>
                                                                                                    </span>
                                                                                                    <div class="commenttext">
                                                                                                        <p><%#Eval("BCB_Content") %></p>
                                                                                                    </div>

                                                                                                </div>
                                                                                            </li>

                                                                                        </ItemTemplate>
                                                                                    </asp:Repeater>
                                                                                </ol>--%>
                                                                            </div>
                                                                        </li>

                                                                    </ItemTemplate>
                                                                </asp:Repeater>
                                                            </ol>
                                                        </li>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:ListView>


                                                <div style="margin-top: 15px; width: 100%;">
                                                    <span style="vertical-align: top;">
                                                        <asp:Label ID="tishi" runat="server" Text="(图文并茂，无字数限制！)" Font-Size="15" ForeColor="#555555"></asp:Label>
                                                    </span>
                                                    <span>
                                                        <CKEditor:CKEditorControl ID="txtContent" runat="server" BasePath="../ckeditor/" DefaultLanguage="zh-cn" Height="150px"></CKEditor:CKEditorControl>
                                                    </span>
                                                    <div style="float: right; margin-top: 10px;">
                                                        <asp:Button ID="pinglun" runat="server" Text="评论" Height="33px" Style="margin-left: 0px" Width="71px" OnClick="pinglun_Click" />
                                                    </div>
                                                </div>


                                            </ContentTemplate>
                                        </asp:UpdatePanel>

                                    </ol>
                                         
                                </section>
                        </div>
                     
                    </section>
                        <%-- 右边--%>
                       <%-- 右边--%>
                    <aside id="sidebar" class="four columns">
                        <div class="padsidebar">
                            <ul>
                                <li class="widget-container">
                                    <h2 class="widget-title1">搜索</h2>

                                  <%--  <div class="bgsearch">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" />
                                        <div style="float: right">
                                            <asp:Button ID="Button1" runat="server" Text="确认" CssClass="btn btn-info" OnClick="Button1_Click1" />
                                        </div>
                                    </div>--%>

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
    </div>
    <!-- END MAIN CONTENT -->


    <div class="clear"></div>
    <!-- clear float -->
    </div>
    </div>
</asp:Content>
