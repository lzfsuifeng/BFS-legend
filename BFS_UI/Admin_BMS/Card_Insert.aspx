<%@ Page Title="添加卡牌" Language="C#" MasterPageFile="~/Admin_BMS/Admin.Master" AutoEventWireup="true" CodeBehind="Card_Insert.aspx.cs" Inherits="BFS_UI.Admin_BMS.Card_Insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="grid_10">
            <div class="box round first grid"> 
                <h2>
                <asp:Label ID="Label1" runat="server" Text="卡牌添加" Font-Size="15" Font-Names="微软雅黑"></asp:Label>
                    </h2>
           
            <div style="width:100%;height:270px;margin-top:20px">
                <table>
                    <tr>
                        <td> <asp:Label ID="Label2" runat="server" Text="卡牌名称"></asp:Label></td>
                        <td> <asp:TextBox ID="txtName" runat="server"></asp:TextBox> </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="请输入卡牌名称" ControlToValidate="txtName" ForeColor="Red" ></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td> <asp:Label ID="Label3" runat="server" Text="卡牌费用"></asp:Label></td>
                        <td>  
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
                        
                    </tr>
                    <tr>
                        <td> <asp:Label ID="Label4" runat="server" Text="卡牌稀有度"></asp:Label></td>
                        <td>  
                            <asp:DropDownList ID="DropDownList_rd" runat="server">
                                <asp:ListItem>免费</asp:ListItem>
                                <asp:ListItem>普通</asp:ListItem>
                                <asp:ListItem>稀有</asp:ListItem>
                                <asp:ListItem>史诗</asp:ListItem>
                                <asp:ListItem>传说</asp:ListItem>
                            </asp:DropDownList>         
                        </td>
                        
                    </tr>
                    <tr>
                        <td> <asp:Label ID="Label5" runat="server" Text="生命值/耐久度"></asp:Label></td>
                        <td>  
                            <asp:TextBox ID="txtHp" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="生命值应大于等于1小于30" MinimumValue="1" MaximumValue="30" ForeColor="Red" ControlToValidate="txtHp" Display="Dynamic" Type="Integer"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td> <asp:Label ID="Label6" runat="server" Text="攻击力"></asp:Label></td>
                        <td>  
                            <asp:TextBox ID="txtAp" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="攻击力应大于等于0小于30" MinimumValue="0" MaximumValue="30" ForeColor="Red" ControlToValidate="txtAp" Display="Dynamic" Type="Integer"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td> <asp:Label ID="Label7" runat="server" Text="卡牌效果描述"></asp:Label></td>
                        <td>  
                            <asp:TextBox ID="txtEffect" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="label8" runat="server" Text="卡牌描述允许为空" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>   <asp:Label ID="Label9" runat="server" Text="卡牌特性"/> </td>
                        <td>
                            <asp:DropDownList ID="DropDownList_ch" runat="server">
                                <asp:ListItem>无</asp:ListItem>
                                <asp:ListItem>嘲讽</asp:ListItem>
                                <asp:ListItem>冻结</asp:ListItem>
                                <asp:ListItem>风怒</asp:ListItem>
                                <asp:ListItem>战吼</asp:ListItem>
                                <asp:ListItem>潜行</asp:ListItem>
                                <asp:ListItem>连击</asp:ListItem>
                                <asp:ListItem>冲锋</asp:ListItem>
                                <asp:ListItem>过载</asp:ListItem>
                                <asp:ListItem>法术伤害</asp:ListItem>
                                <asp:ListItem>沉默</asp:ListItem>
                                <asp:ListItem>激怒</asp:ListItem>
                                <asp:ListItem>圣盾</asp:ListItem>
                                <asp:ListItem>亡语</asp:ListItem>
                                <asp:ListItem>奥秘</asp:ListItem>
                                <asp:ListItem>任务</asp:ListItem>
                                <asp:ListItem>吸血</asp:ListItem>
                                <asp:ListItem>抉择</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>  <asp:Label ID="Label10" runat="server" Text="卡牌种族"></asp:Label>   </td>
                        <td>
                            <asp:DropDownList ID="DropDownList_Race" runat="server">
                                <asp:ListItem>普通</asp:ListItem>
                                <asp:ListItem>鱼人</asp:ListItem>
                                <asp:ListItem>恶魔</asp:ListItem>
                                <asp:ListItem>野兽</asp:ListItem>
                                <asp:ListItem>图腾</asp:ListItem>
                                <asp:ListItem>海盗</asp:ListItem>
                                <asp:ListItem>龙</asp:ListItem>
                                <asp:ListItem>机械</asp:ListItem>
                                <asp:ListItem>元素</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>   <asp:Label ID="Label11" runat="server" Text="卡牌所属职业"></asp:Label></td>
                        <td>
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
                        <td>  <asp:Label ID="Label12" runat="server" Text="所属卡牌集"></asp:Label> </td>
                        <td>
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
                        <td>   <asp:Label ID="Label13" runat="server" Text="卡牌图片"></asp:Label> </td>
                        <td>
                            <asp:FileUpload ID="FileUpload_img" runat="server" />
                        </td>
                        <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请选择卡牌图片" ControlToValidate="FileUpload_img" ForeColor="Red" ></asp:RequiredFieldValidator> </td>
                    </tr>
                </table>
                 <div  style="width:100%;margin-top:0px;float:left;">
              
                 <div style="float:left; margin-top: 10px;margin-left:200px">
               <asp:Button ID="AddCard" runat="server" Text="添加" CssClass="btn btn-primary" Width="100px" OnClick="AddCard_Click"/>
            </div>
           
             </div>
            </div>
            
        </div>
           </div>
     
</asp:Content>
