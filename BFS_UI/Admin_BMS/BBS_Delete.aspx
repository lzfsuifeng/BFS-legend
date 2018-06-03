<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_BMS/Admin.Master" AutoEventWireup="true" CodeBehind="BBS_Delete.aspx.cs" Inherits="BFS_UI.Admin_BMS.BBS_Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="grid_10">
            <div class="box round first grid"> <h2>
                <asp:Label ID="Label4" runat="server" Text="帖子列表管理" Font-Size="15" Font-Names="微软雅黑"></asp:Label></h2>
            
        <table class="data display datatable" id="example">
            <thead>
                <tr>
                    <th >帖子标题</th>
                    <th >发布者</th>
                    <th >内容</th>
                    <th >发布时间</th>
                    <th >封面</th>
                    <th >精华帖子</th>
                    <th ></th>
                </tr>
            </thead>
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <tbody>
                        <tr class="odd gradeX">
                            <td>
                                <asp:Label ID="title"  runat="server" ForeColor="Black" CssClass="text" Text='<%#  SplitChar(Eval("BBS_Title").ToString(),12) %>'></asp:Label>
                              </td>
                            <td>
                                <asp:Label ID="time" runat="server" Text='<%# Eval("BBS_Users_Name") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="conentent" runat="server" Text='<%#  SplitChar(Eval("BBS_Content").ToString(),4) %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="img" runat="server" Text='<%# Eval("BBS_Time") %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="class" runat="server" Text='<%# Eval("BBS_Img") %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="nums" runat="server" Text='<%# Eval("BBS_Cream") %>'></asp:Label></td>
                               
                            <td style="text-align: left">
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("BBS_ID")%>' />
                               <asp:HyperLink ID="Button1" runat="server" Height="30px" Text="设置精华" Width="58px" OnClick="btn_Click" NavigateUrl='<%#"~/Admin_BMS/BBS_Delete.aspx?jhid="+ Eval("BBS_ID")%>' BackColor="#00ffff" ForeColor="Blue" BorderStyle="none" FlatStyle="faat" /></td> 
                                 <td><asp:HyperLink CssClass="btn btn-danger" ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_BMS/BBS_Delete.aspx?bbsid="+ Eval("BBS_ID")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
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
