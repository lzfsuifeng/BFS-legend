<%@ Page Title="原画" Language="C#" MasterPageFile="~/BFS_MasterPage.Master" AutoEventWireup="true" CodeBehind="Pic_YH.aspx.cs" Inherits="BFS_UI.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="main-wrapper">
         <div style="width:100%">
             <div id="main" style="width:100%">
             	<div id="media-wrapper" style="width:100%">
			
				<h3 class="section-title"><asp:Label ID="Label7" runat="server" Text="壁纸" Font-Names="微软雅黑"  ></asp:Label></h3>
            <div>
            <asp:ListView ID="Pic_YH" runat="server" GroupItemCount="3">
                <LayoutTemplate>
                    <div id="groupPlaceholder" runat="server">
                    </div>
                   	<div id="pagination">
                        <asp:DataPager ID="DataPager1" class="myPager" runat="server" PageSize="8">
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
                   
				
					<div class="media-thumb" style="margin-top:10px;">
						
						<a href="'<%#"~/Pic_BZ.aspx?picid="+Eval("Pic_ID") %>'"><img src='<%#Eval("Pic_ImgUrl") %>' alt="" width="200"/></a>
						<div class="media-arrows"></div>
						<h4><a href="./screenshot-post.html"> '<%#Eval("Pic_Name") %>'</a></h4>
						<div class="media-meta-wrapper">
							<span class="media-meta"></span>
							<span class="media-cats">
                                <asp:Label ID="Label8" runat="server" Text= '<%#Eval("Pic_Class") %>'></asp:Label></span>
						</div>
					</div>
				
				
                </ItemTemplate>

            </asp:ListView>
                </div>
        </div>
             </div>

         </div>
         </div>
</asp:Content>
