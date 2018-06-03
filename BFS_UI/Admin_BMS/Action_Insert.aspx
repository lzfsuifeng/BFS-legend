<%@ Page Title="添加活动" Language="C#" MasterPageFile="~/Admin_BMS/Admin.Master" AutoEventWireup="true" CodeBehind="Action_Insert.aspx.cs" Inherits="BFS_UI.Admin_BMS.Action_Insert" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="grid_10">
            <div class="box round first grid"> 
                <h2>
                <asp:Label ID="Label1" runat="server" Text="增加活动" Font-Size="15" Font-Names="微软雅黑"></asp:Label>
            </h2>
            <div style="width:100%;height:600px;margin-top:20px">
                <div style="width:100%;height:400px;float:left;">
                    <table>
                <tr>
                    <td  class="col1">&nbsp;活动标题：</td>
                   
                     <td class="auto-style3"><asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td >&nbsp;活动时间</td>
                    <td> <asp:TextBox ID="txtTime" runat="server"></asp:TextBox> </td>
                </tr>
                <tr>
                    <td >&nbsp;活动封面</td>
                   
                    <td>       <asp:FileUpload ID="FileUpload1" runat="server" />      </td>
                </tr>
                <tr>            
                    <td colspan="2">
                                
                <span style="vertical-align: top;">
                    <asp:Label ID="Label2" runat="server" Text="(图文并茂，无字数限制！)" Font-Size="10" ForeColor="#555555"></asp:Label>
                </span>
                 <span class="tinymce">
                    <CKEditor:CKEditorControl ID="txtContent" runat="server" BasePath="../ckeditor/" DefaultLanguage="zh-cn" ></CKEditor:CKEditorControl>
                </span>
             </td>
                </tr>
                        <tr>
                            <td></td>
                            <td><div style="margin-left: 500px; margin-top: 15px;">
               <asp:Button ID="addAct" runat="server" Text="增加" CssClass="btn btn-primary" Width="100px" OnClick="addAct_Click"/>
            </div></td>
                        </tr>
            </table>
                </div>
               
            </div>
           
           
        </div>
           
       </div> 
</asp:Content>

