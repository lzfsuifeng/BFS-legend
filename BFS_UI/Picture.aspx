<%@ Page Title="美图壁纸" Language="C#" MasterPageFile="~/BFS_MasterPage.Master" AutoEventWireup="true" CodeBehind="Picture.aspx.cs" Inherits="BFS_UI.WebForm5" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/WebForm1_css.css" rel="stylesheet" />

    <%-- 主页js代码--%>
    <script  language="javascript" type="text/javascript">
        //主函数
        var s = function () {
            var interv = 3000; //切换间隔时间
            var interv2 = 10; //切换速速
            var opac1 = 80; //文字背景的透明度
            var source = "fade_focus" //焦点轮换图片容器的id名称
            //获取对象
            function getTag(tag, obj) { if (obj == null) { return document.getElementsByTagName(tag) } else { return obj.getElementsByTagName(tag) } }
            function getid(id) { return document.getElementById(id) };
            var opac = 0, j = 0, t = 63, num, scton = 0, timer, timer2, timer3; var id = getid(source); id.removeChild(getTag("div", id)[0]); var li = getTag("li", id); var div = document.createElement("div"); var title = document.createElement("div"); var span = document.createElement("span"); var button = document.createElement("div"); button.className = "button"; for (var i = 0; i < li.length; i++) { var a = document.createElement("a"); a.innerHTML = i + 1; a.onclick = function () { clearTimeout(timer); clearTimeout(timer2); clearTimeout(timer3); j = parseInt(this.innerHTML) - 1; scton = 0; t = 63; opac = 0; fadeon(); }; a.className = "b1"; a.onmouseover = function () { this.className = "b2" }; a.onmouseout = function () { this.className = "b1"; sc(j) }; button.appendChild(a); }
            //控制图层透明度
            function alpha(obj, n) { if (document.all) { obj.style.filter = "alpha(opacity=" + n + ")"; } else { obj.style.opacity = (n / 100); } }
            //控制焦点按钮
            function sc(n) { for (var i = 0; i < li.length; i++) { button.childNodes[i].className = "b1" }; button.childNodes[n].className = "b2"; }
            title.className = "num_list"; title.appendChild(span); alpha(title, opac1); id.className = "d1"; div.className = "d2"; id.appendChild(div); id.appendChild(title); id.appendChild(button);
            //渐显
            var fadeon = function () { opac += 5; div.innerHTML = li[j].innerHTML; span.innerHTML = getTag("img", li[j])[0].alt; alpha(div, opac); if (scton == 0) { sc(j); num = -2; scrolltxt(); scton = 1 }; if (opac < 100) { timer = setTimeout(fadeon, interv2) } else { timer2 = setTimeout(fadeout, interv); }; }
            //渐隐
            var fadeout = function () { opac -= 5; div.innerHTML = li[j].innerHTML; alpha(div, opac); if (scton == 0) { num = 2; scrolltxt(); scton = 1 }; if (opac > 0) { timer = setTimeout(fadeout, interv2) } else { if (j < li.length - 1) { j++ } else { j = 0 }; fadeon() }; }
            //滚动文字
            var scrolltxt = function () { t += num; span.style.marginTop = t + "px"; if (num < 0 && t > 3) { timer3 = setTimeout(scrolltxt, interv2) } else if (num > 0 && t < 62) { timer3 = setTimeout(scrolltxt, interv2) } else { scton = 0 } };
            fadeon();
        }
        //初始化
        window.onload = s;
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    
	<div id="main-wrapper">
      <div style="height: 480px; width: 100%;">
            <div style="width: 100%;height:30px;background-color:#50321c;">
                <div style="float:left;font-size: 18px; font-family: 'Microsoft YaHei'; color: #555555;">
                    <asp:Label ID="Label6" runat="server" Text="最新原画" Font-Names="微软雅黑"  Font-Size="12"  ForeColor="#ffffcc"></asp:Label>
                </div>
                <div style="float:right;">
                  <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑"  Font-Size="12" NavigateUrl="Pic_YH.aspx" ForeColor="#ffffcc" Font-Underline="false" Text="更多原画>>" onmouseover="this.style.textDecoration='underline';this.style.color='steelblue';" onmouseout="this.style.textDecoration='none';this.style.color='#2b2b2b'"></asp:HyperLink>
                </div>
            </div>
            <div id="fade_focus" style="width:99%;height:450px;">
                <div class="loading">Loading...<br />
                    <img src="Img_UI/吉安娜Q版.gif" width="100" height="100" /></div>
                <ul>
                    <li><asp:Label ID="Label1" runat="server"  href="" target="_blank"> <asp:Image ID="Image1" runat="server"  Style="width: 100%; height:450px;" />
                        </asp:Label>
                    </li>
                    <li><asp:Label ID="Label2" runat="server"  href="" target="_blank"> <asp:Image ID="Image2" runat="server"  Style="width: 100%; height: 450px;" />
                        </asp:Label>
                    </li>
                     <li><asp:Label ID="Label3" runat="server"  href="" target="_blank"> <asp:Image ID="Image3" runat="server" Style="width: 100%; height: 450px;" />
                        </asp:Label>
                    </li>
                     <li><asp:Label ID="Label4" runat="server"  href="" target="_blank"> <asp:Image ID="Image4" runat="server"  Style="width: 100%; height:450px;" />
                        </asp:Label>
                    </li>
                     <li><asp:Label ID="Label5" runat="server"  href="" target="_blank"> <asp:Image ID="Image5" runat="server"  Style="width: 100%; height: 560px;" />
                        </asp:Label>
                    </li>
                </ul>
            </div>
        </div>
	 <div style="width:60%;float:left">
		<div id="main">
			
			
			<div id="media-wrapper">
			
				<h3 class="section-title"><asp:Label ID="Label7" runat="server" Text="壁纸" Font-Names="微软雅黑"  ></asp:Label></h3>
            <div>
            <asp:ListView ID="Pic_bz" runat="server" GroupItemCount="2">
                <LayoutTemplate>
                    <div id="groupPlaceholder" runat="server">
                    </div>
                   	<div id="pagination">
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
                   <%-- <div style="float: left; width: 40%; margin-left: 7%; height: 220px; margin-top: 10px;">
                        <div style="width: 100%; height: 200px">
                            <asp:Image ID="Pic_Img" runat="server" ImageUrl= Width="100%" Height="200px" />
                        </div>
                        <div style="width: 100%; text-align: center;">
                            <asp:HyperLink ID="Pic_Name" runat="server" Text= Font-Size="12" NavigateUrl= ForeColor="#2b2b2b" Font-Underline="false" onmouseover="this.style.textDecoration='underline';this.style.color='steelblue';" onmouseout="this.style.textDecoration='none';this.style.color='#2b2b2b'"></asp:HyperLink>
                        </div>
                    </div>--%>
                    <div class="media-item">
				
					<div class="media-thumb">
						<div class="screenshot-icon"></div>
						<a href='<%#"Pic_BZ.aspx?picid="+Eval("Pic_ID") %>'><img src='<%#Eval("Pic_ImgUrl") %>' alt="" /></a>
						<div class="media-arrows"></div>
						<h4><a href='<%#"Pic_BZ.aspx?picid="+Eval("Pic_ID") %>'> '<%#Eval("Pic_Name") %>'</a></h4>
						<div class="media-meta-wrapper">
							<span class="media-meta"></span>
							<span class="media-cats">
                                <asp:Label ID="Label8" runat="server" Text= '<%#Eval("Pic_Class") %>'></asp:Label></span>
						</div>
					</div>
				
				</div>
                </ItemTemplate>

            </asp:ListView>
                </div>
        </div>
           
            </div>
         </div>
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
