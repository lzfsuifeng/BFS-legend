﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_BMS/Admin.Master" AutoEventWireup="true" CodeBehind="Action_Delete.aspx.cs" Inherits="BFS_UI.Admin_BMS.Action_Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid_10">
            <div class="box round first grid"> <h2>
                <asp:Label ID="Label4" runat="server" Text="活动列表管理" Font-Size="15" Font-Names="微软雅黑"></asp:Label></h2>
          
        <table class="data display datatable" id="example">
            <thead>
                <tr>
                    <th >活动ID</th>
                    <th >活动标题</th>
                    <th >活动内容</th>
                    <th >活动封面</th>
                    <th >活动时间</th>
                </tr>
            </thead>
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <tbody>
                        <tr class="odd gradeX">
                          
                            <td>
                                <asp:Label ID="id" runat="server" Text='<%# Eval("Act_ID") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="title" runat="server" Text='<%# SplitChar(Eval("Act_Title").ToString(),15 )%>'></asp:Label></td>
                                <td>
                                <asp:Label ID="content" runat="server" Text='<%#  SplitChar(Eval("Act_Content").ToString(),25 ) %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="img" runat="server" Text='<%# Eval("Act_Img") %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="time" runat="server" Text='<%# Eval("Act_Time") %>'></asp:Label></td>
                               
                            <td style="text-align: left">
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("Act_ID")%>' />
                                 <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success"  NavigateUrl='<%#"~/Admin_BMS/Action_Update.aspx?actid="+ Eval("Act_ID")%>' Height="25px" Font-Size="12px">编辑</asp:HyperLink>
                                <asp:HyperLink CssClass="btn btn-danger" ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_BMS/Action_Delete.aspx?actid="+ Eval("Act_ID")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
                            </td>
                        </tr>
                    </tbody>
                </ItemTemplate>

            </asp:ListView>
        </table>

          <div class="clearfix"></div>  
 <div class="sxy">  
 共有<span id="totalRows" runat="server"></span>条   
 <span id="totalPage" runat="server"></span>  
   <asp:DataPager  runat="server"  PagedControlID="ListView1" PageSize="9" ID="DDPager" >  
    <Fields>  
        <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />  
        <asp:NumericPagerField  ButtonCount="4"  />  
        <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />  
    </Fields>  
   </asp:DataPager>           
 </div>  
    </div>  </div>
</asp:Content>
