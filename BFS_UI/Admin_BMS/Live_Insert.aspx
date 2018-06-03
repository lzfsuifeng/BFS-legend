<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_BMS/Admin.Master" AutoEventWireup="true" CodeBehind="Live_Insert.aspx.cs" Inherits="BFS_UI.Admin_BMS.Live_Insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="grid_10">
            <div class="box round first grid"> 
                <h2>
                <asp:Label ID="Label1" runat="server" Text="主播添加" Font-Size="15" Font-Names="微软雅黑"></asp:Label>
            </h2>
            <div style="width:100%;height:200px;margin-top:20px">
                <div style="width:50%;height:200px;float:left;">
                    <table>
                <tr>
                    <td>&nbsp;主播名字：</td>
                    <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp;主播直播间封面</td>
                    <td>   <asp:FileUpload ID="FileUpload_img" runat="server" /></td>
                </tr>
                <tr>
                    <td>&nbsp;直播间链接</td>
                    <td><asp:TextBox ID="txtUrl" runat="server"></asp:TextBox></td>
                </tr>
            </table>
                </div>
                <div style="float:right;height:200px;width:300px;">
                    <asp:Image ID="Image1" runat="server" Width="300px" Height="200px"/>
                </div>
            </div>
            <div style="margin-left: 500px; margin-top: 15px;">
               <asp:Button ID="AddNews" runat="server" Text="添加" CssClass="btn btn-primary" Width="100px" OnClick="AddLive_Click"/>
            </div>
           
        </div>
           </div>
      
</asp:Content>
