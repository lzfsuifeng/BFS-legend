<%@ Page Title="个人中心" Language="C#" MasterPageFile="~/BFS_MasterPage.Master" AutoEventWireup="true" CodeBehind="Users_index.aspx.cs" Inherits="BFS_UI.WebForm17" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Strategydetail.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .order_left {
            float: left;
            width: 188px;
            overflow: hidden;
            border: 1px solid #EEE;
            background-color: #FAFAFA;
            font-size: 20px;
            margin-left: -24px;
            font-size: 14px;
            line-height: 40px;
        }

            .order_left a {
                font-weight: bold;
            }

        .tit h1 {
            font-size: 25px;
            margin-left: 36px;
            color: #333;
        }

        .my_xx, .my_dp, .my_youji, .my_srdz, .my_zby, .my_hd, .my_jxfx, .my_gonglv ，my_xinxi {
            text-align: center;
        }

        .c {
            width: 167px;
            height: 55px;
            line-height: 55px;
            font-size: 18px;
            font-weight: bold;
            padding-left: 20px;
            background-position: 155px -274px;
            cursor: pointer;
            margin-left: 14px;
            /*background-color: #72af8b;*/
        }

        .order_left ul {
            margin: -5px 0px 0px;
            padding: 0px;
        }

            .order_left ul li {
                font-size: 16px;
                padding-left: 55px;
                line-height: 36px;
                list-style: outside none none;
            }

        .hr {
            margin: -1px 20px 0px;
            border-bottom: 1px solid #EEE;
        }

        .order_left a {
            color: #000000;
            text-decoration: none;
            word-spacing: 20px;
        }
            /*.my_xx .c a{
            color: #7d7771;
        }*/

            .order_left a:hover {
                color: #523D77;
            }

        .no_circle {
            list-style-type: none; /*设置列表项标志的类型为无*/
            display: none;
        }

        .order_left a, .order_left a:link {
            text-decoration: none;
            color: #333;
        }

        .my_youji .no_circle a, .my_gonglv .no_circle a {
            color: #7d7771;
        }

            .my_youji .no_circle a:hover, .my_gonglv .no_circle a:hover {
                color: #5C307D;
            }

        .my_hd .no_circle a {
            color: #7d7771;
        }

            .my_hd .no_circle a:hover {
                color: #5C307D;
            }

        .my_zby .no_circle a {
            color: #7d7771;
        }

            .my_zby .no_circle a:hover {
                color: #5C307D;
            }

        .my_jxfx .no_circle a {
            color: #7d7771;
        }

            .my_jxfx .no_circle a:hover {
                color: #5C307D;
            }

        .my_srdz .no_circle a {
            color: #7d7771;
        }

        .my_xinxi .no_circle a {
            color: #7d7771;
        }

        .my_srdz .no_circle a:hover {
            color: #5C307D;
        }

        .my_xinxi .no_circle a:hover {
            color: #5C307D;
        }

        .my_xx .c:hover {
            background-color: #00FFFF;
        }

        .my_xx .c a:hover {
            color: #EEE;
        }

        .my_dp .c:hover {
            background-color: #00FFFF;
        }

        .my_dp .c a:hover {
            color: #EEE;
        }

        .my_youji .c:hover, .my_gonglv .c:hover {
            background-color: #00FFFF;
        }

        .my_youji .c a:hover, .my_gonglv .c a:hover {
            color: #EEE;
        }

        .my_hd .c:hover {
            background-color: #00FFFF;
        }

        .my_hd .c a:hover {
            color: #EEE;
        }

        .my_zby .c:hover {
            background-color: #00FFFF;
        }

        .my_zby .c a:hover {
            color: #EEE;
        }

        .my_jxfx .c:hover {
            background-color: #00FFFF;
        }

        .my_jxfx .c a:hover {
            color: #EEE;
        }

        .my_srdz .c:hover {
            background-color: #00FFFF;
        }

        .my_xinxi .c:hover {
            background-color: #00FFFF;
        }

        .my_srdz .c a:hover {
            color: #EEE;
        }

        .my_xinxi .c a:hover {
            color: #EEE;
        }

        .fa {
            color: rgb(158, 153, 153);
            margin-left: 90px;
        }
        /*.my_jxfx .c a .fa,.my_srdz .c a .fa{margin-left: 64px;position:relative;}*/
        .my_youji .c a .fa, .my_hd .c a .fa, .my_gonglv.c a .fa, .my_xinxi.c a .fa {
            margin-left: 90px;
        }

        .my_zby .c a .fa {
            margin-left: 71px;
        }

        .my_jxfx .c a .fa, .my_srdz .c a .fa {
            margin-left: 52px;
        }
    </style>

    <style type="text/css">
        .grzx_content {
            margin-left: 170px;
            width: 87%;
            /*border: 1px solid #EEE;*/
            /*height: 1440px;*/
        }

        .my_notes {
            /*margin-left: 170px;*/
            width: 94%;
            border: 1px solid #EEE;
            margin-left: 50px;
        }

            .my_notes .note_tit {
                width: 100%;
                height: 50px;
                border-bottom: 1px solid #EEE;
            }

                .my_notes .note_tit p {
                    font-size: 30px;
                    line-height: 50px;
                    color: #5C307D;
                    margin-left: 45px;
                }

        .note_c {
            width: 100%;
            height: 50px;
            border-bottom: 1px solid #EEE;
        }

        .item {
            margin-top: 10px;
            background-color: #FFF;
            margin-bottom: 30px;
            border: 1px solid #D7D7D7;
            position: relative;
            height: 178px;
            width: 900px;
            margin-left: 30px;
        }

        .cnt_all {
            width: 680px;
            height: 178px;
            padding-left: 184px;
            position: relative;
        }

            .cnt_all img {
                float: left;
                margin-left: -184px;
                width: 300px;
                height: 178px;
                overflow: hidden;
            }

        .cut_all a {
            text-decoration: none;
            color: #0073B6;
        }

        .cnt_all h3 {
            font-size: 20px;
            padding-top: 17px;
            white-space: nowrap;
            text-overflow: ellipsis;
            overflow: hidden;
            font-weight: 400;
            padding-left: 27px;
        }

        .cnt_all .xc_city {
            max-height: 54px;
            overflow: hidden;
            background: transparent none repeat scroll 0px 0px;
            white-space: nowrap;
            text-overflow: ellipsis;
            box-sizing: border-box;
            padding-right: 30px;
            padding-left: 18px;
            margin-top: 14px;
            cursor: default;
            color: #636363;
            font-family: "Microsoft YaHei",黑体,宋体;
        }

        .cnt_all p {
            margin-top: 8px;
            line-height: 18px;
            background: transparent url("http://user.qyerstatic.com/common/images/user2/plan/plan_icon_icon.png") no-repeat scroll 0% 0%;
            padding-left: 26px;
        }

        .delete {
            margin: 74px 17px 0 0;
            float: right;
        }
    </style>
    <style type="text/css">
        .right_side {
            width: 960px;
            float: left;
            margin-left: 90px;
            font-family: "Microsoft YaHei";
            color: #333;
            font-size: 14px;
            min-height: 640px;
            margin-bottom: 20px;
        }

            .right_side h3:first-child {
                margin-top: 18px;
            }

            .right_side h3 {
                font-size: 20px;
                font-weight: normal;
                padding-bottom: 6px;
                color: #333;
                border-bottom: 2px solid #eee;
            }

        .c_conInfo {
            margin-left: 70px;
            width: 890px;
            height: 604px;
            margin-top: -4px;
        }

        .person_info #nickname, .person_info #pass, .person_info #repass, .person_info #phone .person_info #mail, .person_info #sex, .person_info #dest, .person_info #playdaysnum, .person_info #phone, .person_info #mail, .person_info #count, .person_info #time, .person_info #expenses, .person_info #tools, .person_info #notes {
            line-height: 20px;
            padding: 10px 0;
        }

        label {
            vertical-align: middle;
            cursor: default;
        }

        .light_space {
            background-position: -200px -106px;
            display: inline-block;
            width: 17px;
            height: 18px;
            vertical-align: bottom;
            margin-left: -10px;
            color: #5B3A96;
            line-height: 12px;
        }

        .space {
            display: inline-block;
            width: 11px;
            height: 18px;
        }

        .label, .labelname {
            border: 1px solid #FFF;
            height: 28px;
            line-height: 28px;
            width: 215px;
            padding-left: 10px;
            box-shadow: .5px 1px 1px #f0f0f0 inset;
            border-radius: 2px;
            font-family: 'Microsoft YaHei';
        }

        .txt {
            border: 1px solid #ddd;
        }

        .c_tipcontent {
            padding: 10px 0 24px 4px;
            font-size: 12px;
            color: #999;
        }

            .c_tipcontent p {
                display: block;
            }

        .c_subbutton {
            background-color: #5C307D;
            color: #fff;
            cursor: pointer;
            float: left;
            margin-left: 26px;
            width: 130px;
            height: 34px;
            line-height: 34px;
            border-radius: 2px;
            text-align: center;
            border: medium none;
            font-size: 16px;
            box-shadow: none;
        }

        .c_header {
            padding: 30px 0 10px 0;
            margin-left: 70px;
        }

        div {
            display: block;
        }

        .meb_pic1, .meb_pic0 {
            background-position: 0 0;
        }

        .meb_pic {
            float: left;
            width: 92px;
            height: 95px;
            background: url("../images/雪景.png") no-repeat;
            display: inline-block;
        }

        .auto-style1 {
            height: 21px;
        }
    </style>

    <script type="text/javascript">
        function show() {
            if (document.getElementById("art").style.display == 'block') {
                document.getElementById("art").style.display = 'none';  //触动的ul如果处于显示状态，即隐藏
            }
            else {
                document.getElementById("art").style.display = 'block';  //触动的ul如果处于隐藏状态，即显示
            }
        }
        function show1() {
            if (document.getElementById("art1").style.display == 'block') {
                document.getElementById("art1").style.display = 'none';  //触动的ul如果处于显示状态，即隐藏
            }
            else {
                document.getElementById("art1").style.display = 'block';  //触动的ul如果处于隐藏状态，即显示
            }
        }
        function show2() {
            if (document.getElementById("art2").style.display == 'block') {
                document.getElementById("art2").style.display = 'none';  //触动的ul如果处于显示状态，即隐藏
            }
            else {
                document.getElementById("art2").style.display = 'block';  //触动的ul如果处于隐藏状态，即显示
            }
        }
        function show3() {
            if (document.getElementById("art3").style.display == 'block') {
                document.getElementById("art3").style.display = 'none';  //触动的ul如果处于显示状态，即隐藏
            }
            else {
                document.getElementById("art3").style.display = 'block';  //触动的ul如果处于隐藏状态，即显示
            }
        }
        function show4() {
            if (document.getElementById("art4").style.display == 'block') {
                document.getElementById("art4").style.display = 'none';  //触动的ul如果处于显示状态，即隐藏
            }
            else {
                document.getElementById("art4").style.display = 'block';  //触动的ul如果处于隐藏状态，即显示
            }
        }
        function show5() {
            if (document.getElementById("art5").style.display == 'block') {
                document.getElementById("art5").style.display = 'none';  //触动的ul如果处于显示状态，即隐藏
            }
            else {
                document.getElementById("art5").style.display = 'block';  //触动的ul如果处于隐藏状态，即显示
            }
        }
        function show6() {
            if (document.getElementById("art6").style.display == 'block') {
                document.getElementById("art6").style.display = 'none';  //触动的ul如果处于显示状态，即隐藏
            }
            else {
                document.getElementById("art6").style.display = 'block';  //触动的ul如果处于隐藏状态，即显示
            }
        }
        //function suckerfish(type, tag, parentId) {
        //    if (window.attachEvent) {
        //        window.attachEvent("onload", function () {
        //            var sfEls = (parentId == null) ? document.getElementsByTagName(tag) : document.getElementById(parentId).getElementsByTagName(tag);
        //            type(sfEls);
        //        });
        //    }
        //}
        //hover = function (sfEls) {
        //    for (var i = 0; i < sfEls.length; i++) {
        //        sfEls[i].onmouseover = function () {
        //            this.className += " hover";
        //        }
        //        sfEls[i].onmouseout = function () {
        //            this.className = this.className.replace(new RegExp(" hover\\b"), "");
        //        }
        //    }
        //}
        //suckerfish(hover, "li");
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main-wrapper">
        <%--<div style="margin-top: 100px; margin-bottom: 100px">

           

                <div class="form-group">
                    <label for="exampleInputEmail1">修改密码：</label>
                    <asp:TextBox ID="txtPassword1" runat="server" class="form-control"/>
                   
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">再次输入密码：</label>
                    <asp:TextBox ID="txtPassword2" runat="server" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">修改电话号码：</label>
                    <asp:TextBox ID="txtTel" runat="server" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputFile">更改头像</label>
                    <asp:FileUpload ID="FileUpload_img" runat="server" />
                    <p class="help-block">Example block-level help text here.</p>
                </div>
            
                <asp:Button ID="Button1" runat="server" Text="修改" class="btn btn-default" OnClick="Button1_Click" />

                 
        </div>--%>
        <%-- 已登录用户--%>
        <asp:Panel ID="loginover" runat="server">
            <article class="mainContent">
                <div class="order_left">
                    <%--我的主页--%>
                    <div class="tit" style="margin-bottom: 22px;">
                        <h1>我的主页</h1>
                    </div>
                    <%--我的信息修改--%>
                    <div class="my_xx">
                        <a href="#"></a>
                        <div class="c" style="margin-bottom: 1px;">
                            <a href="Users_index.aspx">
                                <asp:Label ID="userupdate" runat="server" Style="margin-left: 4px; float: left;" Font-Size="18px" ForeColor="#333">我的信息</asp:Label>
                            </a>
                        </div>
                        <p class="hr"></p>
                    </div>
                    <%-- 新闻评论--%>
                    <div class="my_srdz">
                        <div class="c" style="margin-bottom: 1px;"><a href="javascript:onclick=show4()">新闻评论<i class="fa fa-sort-desc"></i></a></div>
                        <ul id="art4" class="no_circle">
                            <li>
                                <a href="Users_index.aspx?news=nc">
                                    <asp:Label ID="newcomment" runat="server" Width="95px" Font-Size="5px" ForeColor="#7D7771">我发表的新闻评论</asp:Label>
                                </a>
                            </li>
                            <li>
                                <a href="Users_index.aspx?news=ncb">
                                    <asp:Label ID="newcommentback" runat="server" Width="95px" Font-Size="5px" ForeColor="#7D7771">我发表的新闻评论回复</asp:Label>
                                </a>
                            </li>

                        </ul>
                        <p class="hr"></p>
                    </div>
                    <%--帖子评论--%>
                    <div class="my_jxfx">
                        <div class="c" style="margin-bottom: 1px;"><a href="javascript:onclick=show3()">我的帖子<i class="fa fa-sort-desc"></i></a></div>
                        <ul id="art3" class="no_circle">
                            <li>
                                <a href="Users_index.aspx?bbs=bbs">
                                    <asp:Label ID="bbs" runat="server" Width="95px" Font-Size="5px" ForeColor="#7D7771">我发布的帖子</asp:Label>

                                </a>

                            </li>
                            <li>
                                <a href="Users_index.aspx?bbs=bc">
                                    <asp:Label ID="bbcback" runat="server" Width="95px" Font-Size="5px" ForeColor="#7D7771">帖子评论</asp:Label>
                                </a>

                            </li>
                            <li>
                                <a href="Users_index.aspx?bbs=bcb">
                                    <asp:Label ID="bbcbackcomment" runat="server" Width="95px" Font-Size="5px" ForeColor="#7D7771">帖子评论回复</asp:Label>
                                </a>

                            </li>


                        </ul>
                    </div>
                    <%-- 帖子评论被回复--%>
                    <div class="my_jxfx">
                        <div class="c" style="margin-bottom: 1px;">
                           <a href="Users_index.aspx?back=bbs">帖子回复<i class="fa fa-sort-desc"></i></a>
                            <p class="hr"></p>
                        </div>


                    </div>
                    <%--新闻被回复--%>
                    <div class="my_jxfx">
                        <div class="c" style="margin-bottom: 1px;">
                            <a href="Users_index.aspx?back=news">被回复<i class="fa fa-sort-desc"></i></a></div>


                    </div>

                </div>

                <%--数据内容--%>
                <div class="grzx_content">

                    <%--我的信息 --%>

                    <asp:Panel ID="updateuser" runat="server">
                        <div class="right_side">
                            <h3>个人资料</h3>


                            <div id="contentInfo" class="c_conInfo">
                                <%-- 修改个人信息--%>

                                <div class="person_info">
                                    <div id="nicImage">

                                        <label class="label">
                                            <span class="light_space light">*头&nbsp;&nbsp;像：</span>

                                            <span class="space"></span>

                                        </label>
                                        <asp:Image ID="Img" runat="server" CssClass="img-circle" Height="62px" Width="64px" />
                                        <asp:FileUpload ID="FileUpload_img" runat="server" Visible="false" />


                                    </div>
                                    <br />
                                    <div id="nickname">

                                        <label class="label">
                                            <span class="light_space light">* 姓&nbsp;&nbsp;名：</span>

                                            <span class="space"></span>

                                        </label>

                                        <asp:Label ID="name" runat="server" Text="" CssClass="labelname"></asp:Label>
                                        <asp:TextBox ID="UserName" runat="server" MaxLength="40" Visible="false" CssClass="txt"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div id="pass">
                                        <label class="label">
                                            <span class="light_space light">* 密&nbsp;&nbsp;码：</span>

                                            <span class="space"></span>

                                        </label>
                                        <asp:Label ID="password" runat="server" Text="" CssClass="labelname"></asp:Label>
                                        <asp:TextBox ID="Userpassword" runat="server" MaxLength="40" Visible="false" CssClass="txt"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div id="repass">
                                        <label class="label">
                                            <span class="light_space light">*  确认密码：</span>

                                            <span class="space"></span>

                                        </label>
                                        <asp:Label ID="password1" runat="server" Text="" CssClass="labelname"></asp:Label>
                                        <asp:TextBox ID="Userpassword2" runat="server" MaxLength="40" Visible="false" CssClass="txt"></asp:TextBox>
                                    </div>
                                    <br />
                                    <div id="phone">
                                        <label class="label">
                                            <span class="light_space light">* 手&nbsp;机&nbsp;号：</span>

                                            <span class="space"></span>

                                        </label>
                                        <asp:Label ID="Phone" runat="server" Text="" CssClass="labelname"></asp:Label>
                                        <asp:TextBox ID="Userphone" runat="server" MaxLength="40" Visible="false" CssClass="txt"></asp:TextBox>
                                    </div>
                                    <br />
                                    <br />
                                    <div id="sex">
                                        <label class="label">
                                            <span class="light_space light">* 性&nbsp;&nbsp;别：</span>

                                            <span class="space"></span>

                                        </label>
                                        <asp:Label ID="Sex" runat="server" Text="" CssClass="labelname"></asp:Label>

                                        <asp:DropDownList ID="Usersex" runat="server" Visible="false" Height="25px" Width="60px" CssClass="txt">

                                            <asp:ListItem>男</asp:ListItem>
                                            <asp:ListItem>女</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <br />
                                    <%--<span>
                                                        <asp:Label ID="PersonCenterTime" runat="server" Text='<%#string.Format("{0:yyyy-MM-dd hh:mm}",Eval("addtime")) %>' Font-Size="10" ForeColor="#555555"></asp:Label>
                                                    </span>--%>


                                    <span style="float: left;">



                                        <asp:Button ID="Update" runat="server" Text="修改" CssClass="c_subbutton" OnClick="Update_Click" />
                                        <asp:Button ID="Updare1" runat="server" Text="保存" CssClass="c_subbutton" OnClick="Update_Click1" />

                                    </span>
                                </div>

                            </div>

                        </div>
                    </asp:Panel>

                    <%--用户帖子、评论等信息--%>
                    <asp:Panel ID="shuju" runat="server" Visible="false">
                        <%-- 新闻评论--%>
                        <asp:Panel ID="newscomment" runat="server" Visible="false">

                            <div class="right_side">
                                <div class="grid_10" style="width: 60%">
                                    <div class="box round first grid">

                                        <table class="data display datatable" id="example">
                                            <thead>
                                                <tr>

                                                    <th>评论内容</th>
                                                    <th>评论时间</th>

                                                    <th>评论的新闻</th>
                                                </tr>
                                            </thead>
                                            <asp:ListView ID="ListView1" runat="server">
                                                <ItemTemplate>
                                                    <tbody>
                                                        <tr class="odd gradeX">



                                                            <td>
                                                                <asp:Label ID="conentent" runat="server" Text='<%# SplitChar(Eval("NC_Content").ToString(),15 )%>'></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="img" runat="server" Text='<%# Eval("NC_Time") %>'></asp:Label></td>

                                                            <td>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("News_Title") %>'></asp:Label></td>

                                                            <td style="text-align: left">
                                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("NC_ID")%>' />
                                                                <asp:HyperLink CssClass="btn btn-danger" ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Users_index.aspx?ncid="+ Eval("NC_ID")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
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
                                            <asp:DataPager runat="server" PagedControlID="ListView1" PageSize="9" ID="DDPager">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />
                                                    <asp:NumericPagerField ButtonCount="4" />
                                                    <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />
                                                </Fields>
                                            </asp:DataPager>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                        <%--新闻评论回复--%>
                        <asp:Panel ID="newscommentback" runat="server" Visible="false">

                            <div class="right_side">
                                <div class="grid_10" style="width: 60%">
                                    <div class="box round first grid">

                                        <table class="data display datatable" id="example1">
                                            <thead>
                                                <tr>
                                                    <th>回复所在的新闻标题</th>

                                                    <th>回复内容</th>
                                                    <th>回复者</th>
                                                    <th>回复时间</th>
                                                    <th>被回复的用户名</th>
                                                </tr>
                                            </thead>
                                            <asp:ListView ID="ListView2" runat="server">
                                                <ItemTemplate>
                                                    <tbody>
                                                        <tr class="odd gradeX">

                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# SplitChar(Eval("News_Title").ToString(),15 )%>'></asp:Label></td>

                                                            <td>
                                                                <asp:Label ID="conentent" runat="server" Text='<%# SplitChar(Eval("CB_Content").ToString(),15 )%>'></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="img" runat="server" Text='<%# Eval("CB_Users_Name") %>'></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="class" runat="server" Text='<%# Eval("CB_Time") %>'></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("NC_Users_Name") %>'></asp:Label></td>

                                                            <td style="text-align: left">
                                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("CB_ID")%>' />
                                                                <asp:HyperLink CssClass="btn btn-danger" ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Users_index.aspx?ncbid="+ Eval("CB_ID")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </ItemTemplate>

                                            </asp:ListView>
                                        </table>

                                        <div class="clearfix"></div>
                                        <div class="sxy">
                                            共有<span id="Span1" runat="server"></span>条   
 <span id="Span2" runat="server"></span>
                                            <asp:DataPager runat="server" PagedControlID="ListView2" PageSize="9" ID="DataPager1">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />
                                                    <asp:NumericPagerField ButtonCount="4" />
                                                    <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />
                                                </Fields>
                                            </asp:DataPager>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </asp:Panel>
                        <%--发表的所有帖子--%>
                        <asp:Panel ID="userbbs" runat="server" Visible="false">
                            <div class="right_side">
                                <div class="grid_10" style="width: 60%">
                                    <div class="box round first grid">

                                        <table class="data display datatable" id="example3">
                                            <thead>
                                                <tr>
                                                    <th>帖子标题</th>
                                                    <th>发布者</th>
                                                    <th>内容</th>
                                                    <th>发布时间</th>
                                                    <th>封面</th>

                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <asp:ListView ID="ListView3" runat="server">
                                                <ItemTemplate>
                                                    <tbody>
                                                        <tr class="odd gradeX">
                                                            <td>
                                                                <asp:Label ID="title" runat="server" ForeColor="Black" CssClass="text" Text='<%#  SplitChar(Eval("BBS_Title").ToString(),12) %>'></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="time" runat="server" Text='<%# Eval("BBS_Users_Name") %>'></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="conentent" runat="server" Text='<%#  SplitChar(Eval("BBS_Content").ToString(),4) %>'></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="img" runat="server" Text='<%# Eval("BBS_Time") %>'></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="class" runat="server" Text='<%# Eval("BBS_Img") %>'></asp:Label></td>


                                                            <td style="text-align: left">
                                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("BBS_ID")%>' />
                                                            </td>
                                                            <td>
                                                                <asp:HyperLink CssClass="btn btn-danger" ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/User_index.aspx?bbsid="+ Eval("BBS_ID")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </ItemTemplate>

                                            </asp:ListView>
                                        </table>

                                        <div class="clearfix"></div>
                                        <div class="sxy">
                                            共有<span id="Span3" runat="server"></span>条   
 <span id="Span4" runat="server"></span>
                                            <asp:DataPager runat="server" PagedControlID="ListView3" PageSize="9" ID="DataPager2">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />
                                                    <asp:NumericPagerField ButtonCount="4" />
                                                    <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />
                                                </Fields>
                                            </asp:DataPager>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                        <%--帖子评论--%>
                        <asp:Panel ID="bbscomment" runat="server" Visible="false">
                            <div class="right_side">
                                <div class="grid_10" style="width: 60%">
                                    <div class="box round first grid">
                                        <table class="data display datatable" id="example4">
                                            <thead>
                                                <tr>

                                                    <th>评论内容</th>
                                                    <th>评论时间</th>
                                                    <th>评论者</th>
                                                    <th>评论的帖子</th>
                                                </tr>
                                            </thead>
                                            <asp:ListView ID="ListView4" runat="server">
                                                <ItemTemplate>
                                                    <tbody>
                                                        <tr class="odd gradeX">



                                                            <td>
                                                                <asp:Label ID="conentent" runat="server" Text='<%# SplitChar(Eval("BC_Content").ToString(),15 )%>'></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="time" runat="server" Text='<%# Eval("BC_Time") %>'></asp:Label></td>
                                                             <td>
                                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("BC_Users_Name") %>'></asp:Label></td>

                                                            <td>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("BBS_Title") %>'></asp:Label></td>

                                                            <td style="text-align: left">
                                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("BC_ID")%>' />
                                                                <asp:HyperLink CssClass="btn btn-danger" ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Users_index.aspx?bcid="+ Eval("BC_ID")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </ItemTemplate>

                                            </asp:ListView>
                                        </table>

                                        <div class="clearfix"></div>
                                        <div class="sxy">
                                            共有<span id="Span5" runat="server"></span>条   
 <span id="Span6" runat="server"></span>
                                            <asp:DataPager runat="server" PagedControlID="ListView4" PageSize="9" ID="DataPager3">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />
                                                    <asp:NumericPagerField ButtonCount="4" />
                                                    <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />
                                                </Fields>
                                            </asp:DataPager>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                        <%-- 帖子评论回复--%>
                        <asp:Panel ID="bbscomentback" runat="server" Visible="false">
                            <div class="right_side">
                                <div class="grid_10" style="width: 60%">
                                    <div class="box round first grid">
                                        <table class="data display datatable" id="example5">
                                            <thead>
                                                <tr>
                                                    <th>回复所在的帖子标题</th>

                                                    <th>回复内容</th>
                                                    <th>回复者</th>
                                                    <th>回复时间</th>
                                                    <th>被回复的用户名</th>
                                                </tr>
                                            </thead>
                                            <asp:ListView ID="ListView5" runat="server">
                                                <ItemTemplate>
                                                    <tbody>
                                                        <tr class="odd gradeX">

                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" Text='<%# SplitChar(Eval("BBS_Title").ToString(),15 )%>'></asp:Label></td>

                                                            <td>
                                                                <asp:Label ID="conentent" runat="server" Text='<%# SplitChar(Eval("BCB_Content").ToString(),15 )%>'></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="img" runat="server" Text='<%# Eval("BCB_Users_Name") %>'></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="class" runat="server" Text='<%# Eval("BCB_Time") %>'></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("BCB_Users_Name") %>'></asp:Label></td>

                                                            <td style="text-align: left">
                                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("BCB_BC_ID")%>' />
                                                                <asp:HyperLink CssClass="btn btn-danger" ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Users_index.aspx?bcbid="+ Eval("BCB_BC_ID")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </ItemTemplate>

                                            </asp:ListView>
                                        </table>

                                        <div class="clearfix"></div>
                                        <div class="sxy">
                                            共有<span id="Span7" runat="server"></span>条   
 <span id="Span8" runat="server"></span>
                                            <asp:DataPager runat="server" PagedControlID="ListView5" PageSize="9" ID="DataPager4">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />
                                                    <asp:NumericPagerField ButtonCount="4" />
                                                    <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />
                                                </Fields>
                                            </asp:DataPager>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                          <%--帖子评论--%>
                        <asp:Panel ID="backbbs" runat="server" Visible="false">
                            <div class="right_side">
                                <div class="grid_10" style="width: 60%">
                                    <div class="box round first grid">
                                        <table class="data display datatable" id="example6">
                                            <thead>
                                                <tr>

                                                    <th>评论内容</th>
                                                    <th>评论时间</th>
                                                   
                                                    <th>评论的帖子</th>
                                                </tr>
                                            </thead>
                                            <asp:ListView ID="ListView6" runat="server">
                                                <ItemTemplate>
                                                    <tbody>
                                                        <tr class="odd gradeX">



                                                            <td>
                                                                <asp:Label ID="conentent" runat="server" Text='<%# SplitChar(Eval("BC_Content").ToString(),15 )%>'></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="time" runat="server" Text='<%# Eval("BC_Time") %>'></asp:Label></td>
                                                           
                                                            <td>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("BBS_Title") %>'></asp:Label></td>

                                                            <td style="text-align: left">
                                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("BC_ID")%>' />
                                                                <asp:HyperLink CssClass="btn btn-danger" ID="btnDelete" runat="server" Text="删除" NavigateUrl='<%#"~/Users_index.aspx?bcid="+ Eval("BC_ID")%>' OnClientClick="return confirm('确认删除？')" Height="25px" Font-Size="12px" />
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </ItemTemplate>

                                            </asp:ListView>
                                        </table>

                                        <div class="clearfix"></div>
                                        <div class="sxy">
                                            共有<span id="Span9" runat="server"></span>条   
 <span id="Span10" runat="server"></span>
                                            <asp:DataPager runat="server" PagedControlID="ListView6" PageSize="9" ID="DataPager5">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ShowFirstPageButton="true" FirstPageText="首页" PreviousPageText="上一页" ShowNextPageButton="false" />
                                                    <asp:NumericPagerField ButtonCount="4" />
                                                    <asp:NextPreviousPagerField ShowPreviousPageButton="false" LastPageText="最后一页" NextPageText="下一页" ShowNextPageButton="true" ShowLastPageButton="true" />
                                                </Fields>
                                            </asp:DataPager>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </asp:Panel>
                    </asp:Panel>
                </div>




            </article>
        </asp:Panel>
        <%--未登录用户--%>
        <asp:Panel ID="login" runat="server">
            <div style="width: 100%; height: 400px; float: left; background-color: white; margin-top: 20px;">
                <asp:Label ID="Label3" runat="server" Font-Names="微软雅黑" Font-Size="30" Text="请先登录" ForeColor="gray"></asp:Label>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
