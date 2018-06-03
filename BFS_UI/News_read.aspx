<%@ Page Title="新闻阅读" Language="C#" MasterPageFile="~/BFS_MasterPage.Master" AutoEventWireup="true" CodeBehind="News_read.aspx.cs" Inherits="BFS_UI.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Strategydetail.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-wrapper">
	  <%-- 新闻内容--%>
        <div  style="width: 100%; border-right: 2px solid #e3e3e5; float: left; overflow: hidden; margin-right: 0px; ">
                   <%--文章标题--%>
                    <div style="text-align: center; color: #2b2b2b; font-size: 18px;">
                        <asp:Label ID="txtTitle" runat="server" Text="" ForeColor="#2b2b2b" Font-Size="18"></asp:Label>
                    </div>
                   <%-- 上传时间--%>
                    <div style="text-align: center; padding: 5px; margin-top:10px; font-size: 14px; font-family: 'Microsoft YaHei'; color: #555555;">
                        <span style="padding-right: 10px;">上传时间：<asp:Label ID="txtTime" runat="server" Text=""></asp:Label>
                        </span>                
                    </div>
                    <div style="  line-height:25px; margin-top: 15px; color: #555555; margin-left: 5px; margin-top: 5px;padding:15px; font-size:15px; ">
                         <%-- 图片1--%>
                        <div style="margin-left:auto;margin-right:auto;margin-top:20px;">
                            <asp:Image ID="Image1" runat="server" />
                        </div>
                        <%--内容--%>
                        <div style="margin-left:auto;margin-right:auto;margin-top:20px;">
                        <asp:Literal ID="txtContent" runat="server"></asp:Literal>
                            </div>
                       
                    </div>              
         </div>
         <%--  新闻评论--%>
         <div class="ctd_comments">
             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <h2 class="ctd_comments_title">评论<span><asp:Label ID="Label1" runat="server"></asp:Label>条</span></h2>
                                    <div class="ctd_comments_box cf">
                                        <div style="margin-left:20px;" >
                                            <div class="textarea">

                                                <asp:TextBox ID="FCKeditor1" runat="server" TextMode="MultiLine" Height="156px" ></asp:TextBox>
                                            </div>
                                            <asp:Button ID="pinglun" runat="server" Text="发布评论" CssClass="gs_btn_v2 btn_publish fl  a_popup_login" OnClick="pinglun_Click" /><span style="display: inline;" class="error_tip fr"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FCKeditor1" ErrorMessage="评论不能为空"></asp:RequiredFieldValidator></span>
                                        </div>

                                    </div>
                                    <asp:ListView ID="listView1" runat="server" OnItemDataBound="listView1_ItemDataBound" >
                                        <LayoutTemplate>
                                            <div id="itemPlaceholderContainer" runat="server">
                                                <div id="itemPlaceholder" runat="server">
                                                </div>
                                            </div>
                                        </LayoutTemplate>
                                        <ItemTemplate>
                                            <div class="e_comment_list js_commentlist">
                                                <dl class="e_comment_item js_item clrfix">
                                                    <dt class="e_ct_l"></dt>
                                                    <dd class="e_ct_r">
                                                        <div class="bodystr">
                                                            <a class="author js_user"><%#Eval("NC_Users_Name") %></a>
                                                            <%#Eval("NC_Content") %>
                                                        </div>
                                                        <div class="opts meta_bottom clrfix">
                                                            <div class="opts_l clrfix">
                                                                <div class="c_time"><%#string.Format("{0:yyyy-MM-dd HH:mm}",Eval("NC_Time")) %></div>
                                                            </div>
                                                            <div class="opts_r">
                                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link_reply js_expand_reply" CausesValidation="false" OnClick="LinkButton1_Click">回复<span></span></asp:LinkButton>
                                                            </div>
                                                        </div>
                                                        <asp:Panel ID="Panel1" runat="server" Visible="false">
                                                            <div class="js_replycontainer">
                                                                <div class="e_comment_r_expand js_replyroot">
                                                                    <div class="q_comment_box js_q_comment_box">
                                                                        <div class="textarea2">
                                                                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("NC_ID") %>' />
                                                                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("NC_ID") %>' Visible="false"></asp:Label>

                                                                            <asp:TextBox ID="FCKeditor2" runat="server" TextMode="MultiLine" Height="44px" ></asp:TextBox>

                                                                        </div>
                                                                        <div class="q_comment_box_btn">
                                                                          
                                                                            <asp:Button ID="Button1" runat="server" CssClass="btn_comment js_btn_reply" CausesValidation="false" OnClick="huifu_Click" Text="回复" />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </asp:Panel>
                                                    </dd>

                                                </dl>
                                            </div>
                                           <%-- 评论回复--%>
                                            <asp:Repeater ID="Repeater2" runat="server">
                                                <ItemTemplate>
                                                    <div class="e_comment_list js_commentlist">
                                                        <dl class="e_comment_item js_item clrfix">
                                                            <dt class="e_ct_l2"></dt>
                                                            <dd class="e_ct_r">
                                                                <div class="bodystr">
                                                                    <a class="author js_user"><%#Eval("Users_Name") %></a>回复 <a class="author js_user"><%#Eval("NC_Users_Name") %></a>
                                                                    <%#Eval("CB_Content") %>
                                                                </div>
                                                                <div class="opts meta_bottom clrfix">
                                                                    <div class="opts_l clrfix">
                                                                        <div class="c_time"><%#string.Format("{0:yyyy-MM-dd HH:mm}",Eval("CB_Time")) %></div>
                                                                    </div>
                                                                </div>
                                                            </dd>
                                                        </dl>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ItemTemplate>
                                    </asp:ListView>

                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
     
          <%-- 分页--%>
                        <div class="sxy">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="6" PagedControlID="listView1" OnPreRender="DataPager1_PreRender">
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
</asp:Content>
