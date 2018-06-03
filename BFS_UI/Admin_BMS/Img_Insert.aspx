<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_BMS/Admin.Master" AutoEventWireup="true" CodeBehind="Img_Insert.aspx.cs" Inherits="BFS_UI.Admin_BMS.Img_Insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="grid_10">
            <div class="box round first grid"> 
                <h2>
                <asp:Label ID="Label1" runat="server" Text="增加图片" Font-Size="15" Font-Names="微软雅黑"></asp:Label>
            </h2>
            <div style="width:100%;height:400px;margin-top:20px">
                <div style="width:100%;height:400px;float:left;">
                    <table>
                <tr>
                    <td >&nbsp;图片名称：</td>
                   
                     <td class="auto-style3"><asp:TextBox ID="txtName1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td >&nbsp;图片分类</td>
                  
                     <td class="auto-style3"><asp:DropDownList ID="DropDownList_Class" runat="server">
                      
                      <asp:ListItem Value="0">壁纸</asp:ListItem>
                      <asp:ListItem Value="1">原画</asp:ListItem>
                 </asp:DropDownList>
                         </td>
                </tr>
                <tr>
                    <td >&nbsp;图片</td>
                   
                     <td class="auto-style3">   <asp:FileUpload ID="FileUpload_img" runat="server" /> </td>
                </tr>
                
            </table>
                </div>
               
            </div>
            <div style="margin-left: 500px; margin-top: 15px;">
               <asp:Button ID="addPic" runat="server" Text="增加" CssClass="btn btn-primary" Width="100px" OnClick="addPic_Click"/>
            </div>
           
        </div>
           </div>
         
</asp:Content>
