<%@ Page Title="卡牌删除" Language="C#" MasterPageFile="~/Admin_BMS/Admin.Master" AutoEventWireup="true" CodeBehind="Card_Delete.aspx.cs" Inherits="BFS_UI.Admin_BMS.Card_Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid_10">
            <div class="box round first grid"> <h2>
                <asp:Label ID="Label4" runat="server" Text="卡牌列表管理" Font-Size="15" Font-Names="微软雅黑"></asp:Label>
            </h2>
          <div> 
          <table style="width:500px;">
                <tr>
                    <td style="width:200px;"><asp:Label ID="Label3" runat="server" Text="请选择修改的卡牌版本:"></asp:Label>&nbsp;&nbsp;</td>
                    <td style="width:200px;">  
                        <asp:DropDownList ID="DropDownList_off" runat="server">
                                <asp:ListItem>基本卡</asp:ListItem>
                                <asp:ListItem>纳克萨玛斯</asp:ListItem>
                                <asp:ListItem>地精大战侏儒</asp:ListItem>
                                <asp:ListItem>黑石山的火焰</asp:ListItem>
                                <asp:ListItem>冠军的试炼</asp:ListItem>
                                <asp:ListItem>探险者协会</asp:ListItem>
                                <asp:ListItem>上古之神的低语</asp:ListItem>
                                <asp:ListItem>卡拉赞之夜</asp:ListItem>
                                <asp:ListItem>龙争虎斗加基森</asp:ListItem>
                                <asp:ListItem>勇闯安戈洛</asp:ListItem>
                                <asp:ListItem>冰封王座的骑士</asp:ListItem>
                                <asp:ListItem>狗头人与地下世界冒险</asp:ListItem>
                            </asp:DropDownList>
                    </td>
                </tr>
              <tr>
                    <td style="width:200px;"><asp:Label ID="Label1" runat="server" Text="请选择修改的卡牌职业:"></asp:Label>&nbsp;&nbsp;</td>
                    <td style="width:200px;">   
                        <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>中立</asp:ListItem>
                                <asp:ListItem>德鲁伊</asp:ListItem>
                                <asp:ListItem>猎人</asp:ListItem>
                                <asp:ListItem>法师</asp:ListItem>
                                <asp:ListItem>圣骑士</asp:ListItem>
                                <asp:ListItem>牧师</asp:ListItem>
                                <asp:ListItem>潜伏者</asp:ListItem>
                                <asp:ListItem>萨满祭司</asp:ListItem>
                                <asp:ListItem>术士</asp:ListItem>
                                <asp:ListItem>战士</asp:ListItem>
                            </asp:DropDownList>
                    </td>
                </tr>
              <tr>
                    <td style="width:200px;"><asp:Label ID="Label2" runat="server" Text="请选择修改的卡牌费用:"></asp:Label>&nbsp;&nbsp;</td>
                    <td style="width:200px;">  
                         <asp:DropDownList ID="DropDownList_cost" runat="server">
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>         
                    </td>
                  <td>  <asp:Button ID="Button1" runat="server" Text="确认" OnClick="Button1_Click" /> </td>
                </tr>
            </table>
             
       </div>
        <table class="data display datatable" id="example">
            <thead>
                <tr>
                    <th >名称</th>
                    <th >费用</th>
                    <th >稀有度</th>
                    <th >HP/耐久度</th>
                    <th >AP</th>
                    <th >效果描述</th>
                    <th >特性</th>
                    <th >种族</th>
                    <th >职业</th>
                    <th >所属版本</th>
                    <th >图片</th>
                </tr>
            </thead>
            <asp:ListView ID="ListView2" runat="server">
                <ItemTemplate>
                    <tbody>
                        <tr class="odd gradeX">
                            <td>
                                <asp:Label ID="name" runat="server" Text='<%# Eval("Card_Name") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="cost" runat="server" Text='<%# Eval("Card_Cost") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="rd" runat="server" Text='<%# Eval("Card_Rd") %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="hp" runat="server" Text='<%# Eval("Card_Hp") %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="ap" runat="server" Text='<%# Eval("Card_Ap") %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="effect" runat="server" Text='<%# SplitChar(Eval("Card_Effect").ToString(),8 ) %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="ch" runat="server" Text='<%# Eval("Card_Characteristic") %>'></asp:Label></td>
                                <td>
                                <asp:Label ID="race" runat="server" Text='<%# Eval("Card_Race") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="occupation" runat="server" Text='<%# Eval("Card_Occupation") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="off" runat="server" Text='<%# Eval( "Card_Off") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="img" runat="server" Text='<%# Eval("Card_Img") %>'></asp:Label></td>
                            <td style="text-align: left">
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("Card_ID")%>' />
                                 <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success"  NavigateUrl='<%#"~/Admin_BMS/Card_Update.aspx?cardid="+ Eval("Card_ID")%>' Height="25px" Font-Size="12px">编辑</asp:HyperLink>
                                <asp:HyperLink CssClass="btn btn-danger" ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Admin_BMS/Card_Delete.aspx?cardid="+ Eval("Card_ID")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
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
   <asp:DataPager  runat="server"  PagedControlID="ListView2" PageSize="9" ID="DDPager" >  
    <Fields>  
        <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />  
        <asp:NumericPagerField  ButtonCount="4"  />  
        <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />  
    </Fields>  
   </asp:DataPager>           
 </div>  
    </div></div>
</asp:Content>
