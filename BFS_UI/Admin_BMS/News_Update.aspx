<%@ Page Title="修改新闻" Language="C#" MasterPageFile="~/Admin_BMS/Admin.Master" AutoEventWireup="true" CodeBehind="News_Update.aspx.cs" Inherits="BFS_UI.Admin_BMS.News_Update" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="grid_10">
            <div class="box round first grid"> 
                <h2>
                <asp:Label ID="Label1" runat="server" Text="首页资讯修改" Font-Size="15" Font-Names="微软雅黑"></asp:Label>
            </h2>
            <div style="margin-top:20px;">
                <span>&nbsp;新闻标题：</span>
                <asp:TextBox ID="txtTitle" runat="server" MaxLength="50" Width="700"></asp:TextBox>
                
            </div>
             <div style="margin-top: 15px;">
                <span>&nbsp;新闻原类型：</span>
                 <asp:TextBox ID="txtClass" runat="server"></asp:TextBox>
                 <span>&nbsp;修改的新闻类型：</span>
                  <asp:DropDownList ID="DropDownList_Class" runat="server">
                      <asp:ListItem Value="0">乱斗</asp:ListItem>
                      <asp:ListItem Value="1">杂谈</asp:ListItem>
                      <asp:ListItem Value="2">版本</asp:ListItem>
                       <asp:ListItem Value="3">卡组</asp:ListItem>
                 </asp:DropDownList>
            </div>
               <div style="margin-top: 15px;">
                <span>&nbsp;新闻优先级：</span>
                   <asp:TextBox ID="txtNum" runat="server"></asp:TextBox>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="请输入1-100的数字" ControlToValidate="txtNum" ValidationExpression="\d{1,3}" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>  

              <div style="margin-top: 15px;">
                <span>&nbsp;内容图片1原地址：</span>
                <span>
                    <asp:TextBox ID="txtImg1" runat="server"></asp:TextBox>
                     <span>&nbsp;内容图片1修改后地址：</span>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </span>       
            </div> 
             
             <div style="margin-top: 15px;">
                <span>&nbsp;新闻发表时间：</span>
                <span>
                    <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
                </span>       
            </div> 
              <span style="vertical-align: top;">&nbsp;新闻内容:</span>
             
            <div style="margin-top: 15px;">         
                <span style="vertical-align: top;">
                    <asp:Label ID="Label2" runat="server" Text="(图文并茂，无字数限制！)" Font-Size="10" ForeColor="#555555"></asp:Label>
                </span>
                 <span class="tinymce">
                    <CKEditor:CKEditorControl ID="txtContent" runat="server" BasePath="../ckeditor/" DefaultLanguage="zh-cn" >
            </CKEditor:CKEditorControl>
                </span>
            </div>  
            <div style="margin-left: 500px; margin-top: 15px;">
               <asp:Button ID="AddNews" runat="server" Text="修改" CssClass="btn btn-primary" Width="100px" OnClick="UpdateNews_Click"/>
            </div>
           
        </div>
           </div>
</asp:Content>