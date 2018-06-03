<%@ Page Title="活动介绍" Language="C#" MasterPageFile="~/BFS_MasterPage.Master" AutoEventWireup="true" CodeBehind="Action.aspx.cs" Inherits="BFS_UI.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="main-wrapper">
     <div style=" height: 100%; background-color: #ead1ab;margin-left:auto;margin-right:auto">
        <div  style="width: 71%; border-right: 2px solid #e3e3e5; float: left;">         
                    <div style="text-align: center; color: #2b2b2b; font-size: 18px;">
                        <asp:Label ID="txtTitle" runat="server" Text="" ForeColor="#2b2b2b" Font-Size="18"></asp:Label>
                    </div>
                  
                    <div style="text-align: center; padding: 5px; margin-top:10px; font-size: 14px; font-family: 'Microsoft YaHei'; color: #555555;">
                        <span style="padding-right: 10px;">活动时间：<asp:Label ID="txtTime" runat="server" Text=""></asp:Label>
                        </span>                
                    </div>
                    <div style="  line-height:25px; margin-top: 15px; color: #555555; margin-left: 5px; margin-top: 5px;padding:15px; font-size:15px; ">
                       
                        <%--内容--%>
                        <div style="margin-left:auto;margin-right:auto;margin-top:20px;">
                        <asp:Literal ID="txtContent" runat="server"></asp:Literal>
                            </div>
                      
                    </div>              
         </div>
         <div style="float:right;width:28%;">
             <div style="height:50px;width:100%;float:left;">
                <div style="font-family: 'Microsoft YaHei'; border-bottom: 1px dashed #e3e3e5; padding: 5px; overflow: hidden;width:100%;height:30px;border-bottom:double;text-align:center;background-color:#50321c;">
                   <asp:Label ID="Label2" runat="server" Text="历次活动" ForeColor="#ffffcc" Font-Size="15"></asp:Label>
           </div>
             </div>
             <div style="float:left;width:100%;height:100%">
                 <asp:Repeater ID="Repeater1" runat="server">
                 <ItemTemplate>
                     
                         <div style="float: left; padding: 5px; width: 90%;">
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="微软雅黑" ToolTip='<%#"点击查看："+ Eval("Act_Title") %>' Font-Size="12" NavigateUrl='<%#"Action.aspx?actid="+ Eval("Act_ID") %>' ForeColor="#2b2b2b" Font-Underline="false" Text='<%#Eval("Act_Title") %>' onmouseover="this.style.textDecoration='underline';this.style.color='steelblue';" onmouseout="this.style.textDecoration='none';this.style.color='#2b2b2b'"></asp:HyperLink>
                        </div>
                 </ItemTemplate>
             </asp:Repeater>
             </div>
         </div>                  
    </div>
         </div>
          
</asp:Content>
