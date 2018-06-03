<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_BMS/Admin.Master" AutoEventWireup="true" CodeBehind="Live_Delete.aspx.cs" Inherits="BFS_UI.Admin_BMS.Live_Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="grid_10">
            <div class="box round first grid"> 
                <h2> <asp:Label ID="Label4" runat="server" Text="新闻列表管理" Font-Size="15" Font-Names="微软雅黑"></asp:Label>
            </h2>
        <table class="data display datatable" id="example">
            <thead>
                <tr>
                    <th >ID</th>
                    <th>标题</th>
                    <th >图片</th>
                    <th>链接</th>
                </tr>
            </thead>
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <tbody>
                        <tr class="odd gradeX"> 
                             <td>
                                <asp:Label ID="img3" runat="server" Text='<%# Eval("Live_ID") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="time" runat="server" Text='<%# Eval("Live_Title") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="conentent" runat="server" Text='<%#Eval("Live_Img")%>'></asp:Label></td>
                                <td> <asp:Label ID="img" runat="server" Text='<%# Eval("Live_Url") %>'></asp:Label></td>
                           
                            <td style="text-align: left">
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("Live_ID")%>' />
                                 <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success"  NavigateUrl='<%#"~/Admin_BMS/Live_Update.aspx?liveid="+ Eval("Live_ID")%>' Height="25px" Font-Size="12px">编辑</asp:HyperLink>
                                <asp:HyperLink CssClass="btn btn-danger" ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_BMS/Live_Delete.aspx?liveid="+ Eval("Live_ID")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
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
    </div>
   </div>
</asp:Content>
