<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_BMS/Admin.Master" AutoEventWireup="true" CodeBehind="Img_Delete.aspx.cs" Inherits="BFS_UI.Admin_BMS.Img_Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="grid_10">
            <div class="box round first grid"> 
          <table style="width:500px;">
                <tr>
                    <td style="width:200px;"><asp:Label ID="Label3" runat="server" Text="请选择修改的图片类型:"></asp:Label>&nbsp;&nbsp;</td>
                    <td style="width:200px;"><asp:DropDownList ID="DropDownList_Class" runat="server">
                      <asp:ListItem Value="0">全部</asp:ListItem>
                      <asp:ListItem Value="1">壁纸</asp:ListItem>
                      <asp:ListItem Value="2">原画</asp:ListItem>
                 </asp:DropDownList></td>
                    <td>  <asp:Button  ID="Button1" runat="server" Text="确认" OnClick="Button1_Click" CssClass="btn btn-success"/></td>
                </tr>
            </table>

      <h2>
                <asp:Label ID="Label4" runat="server" Text="美图壁纸列表管理" Font-Size="15" Font-Names="微软雅黑"></asp:Label>
           </h2> 
        <table class="data display datatable" id="example">
            <thead>
                <tr class="odd gradeX">
                    <th >图片ID</th>
                    <th >图片名称</th>
                    <th >图片链接</th>
                    <th >分类</th >
                </tr>
            </thead>
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <tbody>
                        <tr class="odd gradeX">                  
                            <td>
                                <asp:Label ID="time" runat="server" Text='<%# Eval("Pic_ID") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="name" runat="server" Text='<%#Eval("Pic_Name")%>'></asp:Label></td>
                                <td>
                                <asp:Label ID="img" runat="server" Text='<%# Eval("Pic_ImgUrl") %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="class" runat="server" Text='<%# Eval("Pic_Class") %>'></asp:Label></td>
                            <td style="text-align: left">
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("Pic_ID")%>' />
                                 <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success"  NavigateUrl='<%#"~/Admin_BMS/Img_Update.aspx?picid="+ Eval("Pic_ID")%>' Height="25px" Font-Size="12px">编辑</asp:HyperLink>
                                <asp:HyperLink CssClass="btn btn-danger" ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_BMS/Img_Delete.aspx?picid="+ Eval("Pic_ID")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
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
