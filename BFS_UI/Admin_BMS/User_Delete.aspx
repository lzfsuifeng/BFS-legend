<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_BMS/Admin.Master" AutoEventWireup="true" CodeBehind="User_Delete.aspx.cs" Inherits="BFS_UI.Admin_BMS.User_Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="grid_10">
            <div class="box round first grid"> 
                <h2><asp:Label ID="Label4" runat="server" Text="用户列表管理" Font-Size="15" Font-Names="微软雅黑"></asp:Label></h2>
           
        <table class="data display datatable" id="example">
            <thead>
                <tr> <th >用户ID</th>
                    <th >用户名</th>
                    <th >密码</th>
                    <th >性别</th>
                    <th >是/否VIP</th>
                     <th >头像</th>
                    <th >是/否管理员</th>
                    <th >电话</th>
                </tr>
            </thead>
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <tbody>
                        <tr class="odd gradeX">
                              <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Users_ID") %>'></asp:Label></td>
                            <td>
                                <asp:HyperLink ID="title"  runat="server" ForeColor="Black" CssClass="text" Text='<%# Eval("Users_Name") %>'></asp:HyperLink>
                              </td>
                            <td>
                                <asp:Label ID="time" runat="server" Text='<%# Eval("Users_Password") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="conentent" runat="server" Text='<%# Eval("Users_Sex") %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="img" runat="server" Text='<%# Eval("Users_Vip") %>'></asp:Label></td>
                             <td>
                                  <asp:Label ID="Label1" runat="server" Text='<%# Eval("Users_Img") %>'></asp:Label>
                                </td>
                                <td>
                                <asp:Label ID="class" runat="server" Text='<%# Eval("Users_Admin") %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="nums" runat="server" Text='<%# Eval("Users_Tel") %>'></asp:Label></td>
                               
                            <td style="text-align: left">
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("Users_Name")%>' />
                                 <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success"  NavigateUrl='<%#"~/Admin_BMS/User_Update.aspx?usersname="+ Eval("Users_Name")%>' Height="25px" Font-Size="12px">编辑</asp:HyperLink>
                                <asp:HyperLink CssClass="btn btn-danger" ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_BMS/User_Delete.aspx?usersname="+ Eval("Users_Name")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
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
