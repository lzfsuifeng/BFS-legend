<%@ Page Title="卡牌具体信息" Language="C#" MasterPageFile="~/BFS_MasterPage.Master" AutoEventWireup="true" CodeBehind="Card_Img.aspx.cs" Inherits="BFS_UI.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:900px;height:500px;background-color:#5c5850;margin-top:20px;margin-left:auto;margin-right:auto">
        <div style="float:left;width:300px;height:500px">
            <div style="margin-top:20px;"> <asp:Image ID="img" runat="server" Height="400px" Width="300px" /></div>
           
        </div>
        <div style="float:left;width:592px; height:500px">
            <table style="width:500px;margin-top:50px;margin-left:20px;">
                <tr style="margin-top:20px;">
                    <td style="width:150px;"> <asp:Label ID="Label1" runat="server" Text="名称:" ForeColor="#ffffcc" Font-Size="15" ></asp:Label></td>
                    <td style="width:150px;"><asp:Label ID="txtName" runat="server" Text="" ForeColor="#ffffcc" Font-Size="12" /></td>
                    <td style="width:100px;"> <asp:Label ID="Label2" runat="server" Text="所属职业:" ForeColor="#ffffcc" Font-Size="15" ></asp:Label></td>
                    <td style="width:150px;"><asp:Label ID="txtOccupation" runat="server" Text="" ForeColor="#ffffcc" Font-Size="12" /></td>
                </tr>
                <tr style="margin-top:40px;">
                    <td><asp:Label ID="Label3" runat="server" Text="生命值/耐久度:" ForeColor="#ffffcc" Font-Size="15" ></asp:Label></td>
                    <td><asp:Label ID="txtHp" runat="server" Text="" ForeColor="#ffffcc" Font-Size="12" ></asp:Label></td>
                    <td><asp:Label ID="Label4" runat="server" Text="攻击力:" ForeColor="#ffffcc" Font-Size="15" ></asp:Label></td>
                    <td><asp:Label ID="txtAp" runat="server" Text="" ForeColor="#ffffcc" Font-Size="15" ></asp:Label></td>
                </tr>
                <tr style="margin-top:40px;">
                    <td><asp:Label ID="Label5" runat="server" Text="费用:" ForeColor="#ffffcc" Font-Size="15" ></asp:Label></td>
                    <td><asp:Label ID="txtCost" runat="server" Text="" ForeColor="#ffffcc" Font-Size="12" ></asp:Label></td>
                    <td><asp:Label ID="Label7" runat="server" Text="稀有度:" ForeColor="#ffffcc" Font-Size="15" ></asp:Label></td>
                    <td><asp:Label ID="txtRd" runat="server" Text="" ForeColor="#ffffcc" Font-Size="15" ></asp:Label></td>
                </tr>
                 <tr style="margin-top:40px;">
                    <td><asp:Label ID="Label6" runat="server" Text="特性:" ForeColor="#ffffcc" Font-Size="15" ></asp:Label></td>
                    <td><asp:Label ID="txtCh" runat="server" Text="" ForeColor="#ffffcc" Font-Size="12" ></asp:Label></td>
                    <td><asp:Label ID="Label9" runat="server" Text="种族:" ForeColor="#ffffcc" Font-Size="15" ></asp:Label></td>
                    <td><asp:Label ID="txtRace" runat="server" Text="" ForeColor="#ffffcc" Font-Size="15" ></asp:Label></td>
                </tr>
                 <tr style="margin-top:40px;">
                    <td><asp:Label ID="Label8" runat="server" Text="效果描述:" ForeColor="#ffffcc" Font-Size="15" ></asp:Label></td>
                    <td colspan="3"><asp:Label ID="txtEffect" runat="server" Text="" ForeColor="#ffffcc" Font-Size="12" ></asp:Label></td>
                    
                </tr>
                <tr style="margin-top:40px;">
                    <td><asp:Label ID="Label10" runat="server" Text="所属卡牌集:" ForeColor="#ffffcc" Font-Size="15" ></asp:Label></td>
                    <td colspan="3"><asp:Label ID="txtOff" runat="server" Text="" ForeColor="#ffffcc" Font-Size="12" ></asp:Label></td>
                    
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
