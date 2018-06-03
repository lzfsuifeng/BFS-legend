<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_BMS/Admin.Master" AutoEventWireup="true" CodeBehind="User_Update.aspx.cs" Inherits="BFS_UI.Admin_BMS.User_Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="grid_10">
            <div class="box round first grid"> <h2>
                <asp:Label ID="Label1" runat="server" Text="用户信息修改" Font-Size="15" Font-Names="微软雅黑"></asp:Label>
           </h2>
            <table style="width:100%;">
                <tr style="margin-top:20px;">
                    <td>原用户名：</td>
                    <td><asp:Label ID="txtName" runat="server"></asp:Label></td>
                    <td>修改用户名：</td>
                    <td><asp:TextBox ID="txtName1" runat="server"></asp:TextBox></td>
                    <td>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="用户不能为空" ControlToValidate="txtName1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr style="margin-top:20px;">
                    <td>头像：</td>
                    <td>     <asp:Image ID="Image1" runat="server" /></td>
                    <td>修改头像：</td>
                    <td>         <asp:FileUpload ID="FileUpload1" runat="server" />   </td>
                    <td>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="用户不能为空" ControlToValidate="txtName1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr style="margin-top:20px;">
                    <td>原密码：</td>
                    <td><asp:Label ID="txtPassword" runat="server"></asp:Label></td>
                    <td>修改密码：</td>
                    <td><asp:TextBox ID="txtPassword1" runat="server"></asp:TextBox></td>
                    <td>
                       
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="密码不能为空" ControlToValidate="txtPassword1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr style="margin-top:20px;">
                    <td>原电话号码：</td>
                    <td><asp:Label ID="txtTel" runat="server"></asp:Label></td>
                    <td>修改电话：</td>
                    <td><asp:TextBox ID="txtTel1" runat="server"></asp:TextBox></td>
                    <td>
                       
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="电话不能为空" ControlToValidate="txtTel1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr style="margin-left:20px;">
                    <td>性别：</td>
                    <td><asp:Label ID="Sex" runat="server" Text="Label"></asp:Label></td>
                    <td>修改性别</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList_sex" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="0">男</asp:ListItem>
                        <asp:ListItem Value="1">女</asp:ListItem>
                    </asp:RadioButtonList>   
                    </td>
                    
                </tr>
                <tr style="margin-left:20px;">
                    <td>Vip：</td>
                    <td><asp:Label ID="Vip" runat="server" Text="Label"></asp:Label></td>
                    <td>修改VIP权限</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList_vip" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="0">否</asp:ListItem>
                        <asp:ListItem Value="1">是</asp:ListItem>
                    </asp:RadioButtonList>   
                    </td>
                    
                </tr>
                <tr style="margin-left:20px;">
                    <td>管理员：</td>
                    <td><asp:Label ID="Admin" runat="server" Text="Label"></asp:Label></td>
                    <td>修改管理员权限</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList_admin" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="0">否</asp:ListItem>
                        <asp:ListItem Value="1">是</asp:ListItem>
                    </asp:RadioButtonList>   
                    </td>
                    
                </tr>
            </table>
             <div >
                 <asp:Button ID="Button1" runat="server" Text="修改" Height="36px" Width="82px"  CssClass="btn btn-success" Font-Size="12" OnClick="Button1_Click" />
             </div>
                  <div class="container">
        <div class="title_top">   
                <asp:Label ID="Label4" runat="server" Text="用户列表管理" Font-Size="15" Font-Names="微软雅黑"></asp:Label>
            </div>
        <table  class="data display datatable" id="example">
            <thead>
                <tr>
                    <th >用户名</th>
                    <th >密码</th>
                    <th>性别</th>
                    <th >头像</th>
                    <th >是/否VIP</th>
                    <th >是/否管理员</th>
                    <th >电话</th>
                </tr>
            </thead>
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <tbody>
                        <tr class="odd gradeX">
                            <td>
                                <asp:HyperLink ID="name"  runat="server" ForeColor="Black" CssClass="text" Text='<%# Eval("Users_Name") %>'></asp:HyperLink>
                              </td>
                            <td>
                                <asp:Label ID="ps" runat="server" Text='<%# Eval("Users_Password") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="sex" runat="server" Text='<%# Eval("Users_Sex") %>'></asp:Label></td>
                              <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Users_Img") %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="vip" runat="server" Text='<%# Eval("Users_Vip") %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="admin" runat="server" Text='<%# Eval("Users_Admin") %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="tel" runat="server" Text='<%# Eval("Users_Tel") %>'></asp:Label></td>
                               
                            
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
           </div>
          
</asp:Content>
