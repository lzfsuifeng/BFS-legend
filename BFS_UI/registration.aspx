<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="BFS_UI.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>注册界面</title>
    <%--调用css文件，css文件为样式文件--%>
    <link href="css/input.css" rel="stylesheet" />
    <link href="css/css.css" rel="stylesheet" />
    <%--调用js文件，js文件为前台处理方法--%>
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/Factory.js"></script>
    <script src="js/jquery.fullbg.js"></script>
    <%--设置图片满屏显示--%>
    <script>
        window.onload = function () {
            $("#background").fullBg();
        }

    </script>
    <style>
        /*设置一条空白的div，宽度为486px*/
        .auto-style1 {
            width: 486px;
        }
        /*背景满屏*/
        .fullBg {
            position: fixed; /*以绝对位置显示*/
            top: 0; /*距离顶部的距离*/
            left: 0; /*距离左面的距离*/
            overflow: hidden; /*隐藏显示滚动条*/
        }
        /*内容满屏*/
        #maincontent {
            position: absolute; /*局对布局*/
            top: 10px; /*距离顶部的距离*/
            left: 0; /*距离左面的距离*/
            z-index: 50; /*值大的显示在值小的上面，覆盖效果*/
        }

        #background {
            height: 877px;
        }
    </style>
</head>
<body>
    <%--修改body的所有间隙为0--%>
    <form id="form1" runat="server" style="padding: 0px; margin: 0px;">
        <%--背景图片--%>
        <img src="Img_UI/麦迪文.jpg" id="background" />
        <%--添加整体的div进行吧其中的显示内容包裹住--%>
        <div id="maincontent" style="width: 100%; height: 50px;">
            <%--再添加一个div控制一个高度宽度固定和居中的div--%>
            <div style="width: 700px; height: 700px; margin-left: auto; margin-right: auto; margin-top: 100px;">
                <%--最后一个是整理一下里面的内容边距--%>
                <div style="float: left; padding-top: 20px; padding-left: 30px; width: 560px;">
                    <div style="width: 200px; height: 77px;">
                        <%--背景上面的图片--%>
                        <a href="BFS_Web.aspx">
                            <img src="Img_UI/炉石传说_标识.png" style="margin-left: 0px; width: 231px; height: 103px;" /></a>
                    </div>
                    <%--统一一下下面的代码用的--%>
                    <div style="width: 100%; height: 600px; background-image: url('Img_UI/透明背景.png'); background-size: 100% 600px;">
                        <div>
                            <%--一个表格布局--%>
                            <table style="width: 100%">
                                <tr>
                                    <%--这个表格里面什么都没有，因为下面有合并表格--%>
                                    <td class="auto-style1" style="padding-left: 100px;"></td>
                                    <td style="width: 50px;">
                                        <%--单击返回的一个功能域--%>
                                        <div style="float: right; cursor: pointer" onclick="logInSrc()">
                                            <%--返回到登录页面--%>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div style="height: 30px; -top: 0px; width: 344px; margin-left: auto; margin-right: auto; margin-top: 50px;">
                            <%--文本框输入昵称--%>
                            <asp:TextBox ID="txtName" runat="server" value="用户名" Style="border: none; width: 208px; height: 28px; line-height: 30px; background-image: url(Img_UI/输入框Y.png); padding-left: 8px;" MaxLength="8"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="用户不能为空" ControlToValidate="txtName">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div style="height: 30px; padding-top: 0px; width: 344px; margin-left: auto; margin-right: auto; margin-top: 15px;">
                            <%--文本框输入手机号--%>

                            <asp:TextBox ID="txtTel" runat="server" value="手机号" Style="border-style: none; border-color: inherit; border-width: medium; height: 28px; line-height: 30px; background-image: url('Img_UI/输入框Y.png'); padding-left: 8px;" MaxLength="11"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="手机号不能为空" ControlToValidate="txtTel">
                            </asp:RequiredFieldValidator>
                        </div>
                        <%-- <div style="height: 30px; padding-top: 0px; width: 344px; margin-left: auto; margin-right: auto; margin-top: 15px;">
                       <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="0">管理员</asp:ListItem>
                        <asp:ListItem Value="1">费管理员</asp:ListItem>
                    </asp:RadioButtonList>    
                    </div>--%>
                        <%--<div style="height: 30px; padding-top: 0px; width: 344px; margin-left: auto; margin-right: auto; margin-top: 15px;">
                  
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="0">VIP</asp:ListItem>
                        <asp:ListItem Value="1">非VIP</asp:ListItem>
                    </asp:RadioButtonList>    
                        
                    </div>--%>
                        <div style="height: 25px; padding-top: 0px; width: 344px; margin-left: auto; margin-right: auto; margin-top: 15px;">
                            <%--单选框，性别--%>
                            <asp:RadioButtonList ID="RadioButtonList_sex" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">男</asp:ListItem>
                                <asp:ListItem Value="1">女</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>
                        <div id="pwdInput" style="height: 30px; padding-top: 0px; width: 344px; margin-left: auto; margin-right: auto; margin-top: 15px;">
                            <%--文本框输入密码--%>
                            <asp:TextBox ID="txtPassword" runat="server" value="输入密码" Style="border: none; width: 208px; height: 28px; line-height: 30px; background-image: url(Img_UI/输入框Y.png); padding-left: 8px;" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="密码不能为空" ControlToValidate="txtPassword">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div id="pwdInput2" style="height: 30px; padding-top: 0px; width: 344px; margin-left: auto; margin-right: auto; margin-top: 15px;">
                            <%--文本框输入密码--%>
                            <asp:TextBox ID="txtPassword2" runat="server" value="再次输入密码" Style="border: none; width: 208px; height: 28px; line-height: 30px; background-image: url(Img_UI/输入框Y.png); padding-left: 8px;" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="密码不能为空" ControlToValidate="txtPassword2">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div style="height: 140px; padding-top: 0px; width: 344px; margin-left: auto; margin-right: auto; margin-top: 15px;">   
                            <img src="Img_Users/默认头像.png" alt="..." class="img-circle" height="140" width="140"/>
                        </div>
                        <div style="height: 30px; padding-top: 0px; width: 344px; margin-left: auto; margin-right: auto; margin-top: 15px;">
                            <%--请选择头像，否者为默认头像--%>
                            <asp:FileUpload ID="FileUpload_Img" runat="server" Height="28px" />

                        </div>
                        <div style="height: 30px; padding-top: 0px; width: 344px; margin-left: auto; margin-right: auto; margin-top: 15px;">
                            <%--单击注册，按钮--%>
                            <asp:Button ID="Button2" runat="server" Text="立即注册" Style="color: white; height: 30px; width: 100px; background-color: #5ec4a0; border: none; font-size: 19px; cursor: pointer" OnClick="Button2_Click" />
                        </div>
                        <%--注册格式错误提示信息--%>
                        <div style="height: 100px; padding-top: 0px; width: 344px; margin-left: auto; margin-right: auto; margin-top: 15px;">
                            <a style="color: red;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="性别不能为空" ControlToValidate="RadioButtonList_sex">
                                </asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="密码必须以1-3个字母开头，3-6个数字结尾" ControlToValidate="txtPassword" ValidationExpression="[A-Z,a-z]{1,3}\d{3,6}"></asp:RegularExpressionValidator><br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="密码必须以1-3个字母开头，3-6个数字结尾" ControlToValidate="txtPassword2" ValidationExpression="[A-Z,a-z]{1,3}\d{3,6}"></asp:RegularExpressionValidator><br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="手机号格式为11位数字" ControlToValidate="txtTel" ValidationExpression="\d{11}"></asp:RegularExpressionValidator><br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="请选择性别" ControlToValidate="RadioButtonList_sex">
                                </asp:RequiredFieldValidator>
                                <br />
                                
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      
    </form>
</body>
</html>
