<%@ Page Title="" Language="C#" MasterPageFile="~/BFS_MasterPage.Master" AutoEventWireup="true" CodeBehind="WebForm14.aspx.cs" Inherits="BFS_UI.WebForm14" %>
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

        .my_xx, .my_dp, .my_youji, .my_srdz, .my_zby, .my_hd, .my_jxfx, .my_gonglv ，my_xinxi{
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
        .my_youji .c a .fa, .my_hd .c a .fa, .my_gonglv.c a .fa,.my_xinxi.c a .fa{
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
                                <asp:LinkButton ID="LinkButton2" runat="server" Style="margin-left: 4px; float: left;" Font-Size="18px" ForeColor="#333" >我的信息</asp:LinkButton>
                            </div>
                            <p class="hr"></p>
                        </div>
                       <%-- 新闻评论--%>
                        <div class="my_srdz">
                            <div class="c" style="margin-bottom: 1px;"><a href="javascript:onclick=show4()">新闻评论<i class="fa fa-sort-desc"></i></a></div>
                            <ul id="art4" class="no_circle">
                                <li>
                                    <asp:LinkButton ID="HyperLink5" runat="server" Width="95px" Font-Size="5px" ForeColor="#7D7771"  >我发表的新闻评论</asp:LinkButton></li>
                                <li>
                                    <asp:LinkButton ID="HyperLink6" runat="server" Width="95px" Font-Size="5px" ForeColor="#7D7771">我发表的新闻评论回复</asp:LinkButton></li>
                                
                            </ul>
                            <p class="hr"></p>
                        </div> 
                        <%--帖子评论--%>
                        <div class="my_jxfx">
                            <div class="c" style="margin-bottom: 1px;"><a href="javascript:onclick=show3()">我的帖子<i class="fa fa-sort-desc"></i></a></div>
                            <ul id="art3" class="no_circle">
                                <li>
                                    <asp:LinkButton ID="LinkButton1" runat="server" Width="95px" Font-Size="5px" ForeColor="#7D7771" >我发布的帖子</asp:LinkButton></li>
                                <li>
                                    <asp:LinkButton ID="HyperLink15" runat="server" Width="95px" Font-Size="5px" ForeColor="#7D7771" >我发布的帖子评论</asp:LinkButton></li>
                                <li>
                                    <asp:LinkButton ID="HyperLink16" runat="server" Width="95px" Font-Size="5px" ForeColor="#7D7771" >我发布的帖子评论回复</asp:LinkButton></li>
                                

                            </ul>
                        </div>
                    </div>
             
                    <%--数据内容--%>
                    <div class="grzx_content">
                        
                      <%--我的信息 --%>
                            

                                <div class="right_side">
                                    <h3>个人资料</h3>
                                    <asp:DataList ID="DataList1" runat="server">
                                        <ItemTemplate>
                                            <div id="contentHead" class="c_header clearfix">
                                                <div class="meb_pic meb_pic1"></div>
                                               
                                            </div>
                                            <div id="contentInfo" class="c_conInfo">
                                                <div class="person_info">
                                                    <div id="nickname">
                                                        <%--<asp:Label ID="UsersId" runat="server" Text='<%# Eval("Users_id") %>' Visible="false"></asp:Label>--%>

                                                        <label class="label">
                                                            <span class="light_space light">*</span>
                                                            姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：
                                                        <span class="space"></span>

                                                        </label>

                                                        <%--<asp:Label ID="Username" runat="server" Text='<%# Eval("UserName") %>' CssClass="labelname"></asp:Label>
                                                        <asp:TextBox ID="UsernameTb" runat="server" Text='<%# Eval("UserName") %>' MaxLength="40" Visible="false" CssClass="txt"></asp:TextBox>--%>
                                                    </div>
                                                    <br />
                                                    <div id="pass">
                                                        <label class="label">
                                                            <span class="light_space light">*</span>
                                                            密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：
                                                        <span class="space"></span>

                                                        </label>
                                                        <%--<asp:Label ID="Userpass" runat="server" Text='<%# Eval("UserPass") %>' CssClass="labelname"></asp:Label>
                                                        <asp:TextBox ID="UserpassTb" runat="server" Text='<%# Eval("UserPass") %>' MaxLength="40" Visible="false" CssClass="txt"></asp:TextBox>--%>
                                                    </div>
                                                    <br />
                                                    <div id="repass">
                                                        <label class="label">
                                                            <span class="light_space light">*</span>
                                                            确认密码：
                                                        <span class="space"></span>

                                                        </label>
                                                        <%--<asp:Label ID="UserPassReword" runat="server" Text='<%# Eval("PassReword") %>' CssClass="labelname"></asp:Label>
                                                        <asp:TextBox ID="UserPassRewordTb" runat="server" Text='<%# Eval("PassReword") %>' MaxLength="40" Visible="false" CssClass="txt"></asp:TextBox>--%>
                                                    </div>
                                                    <br />
                                                    <div id="phone">
                                                        <label class="label">
                                                            <span class="light_space light">*</span>
                                                            手&nbsp;&nbsp;机&nbsp;&nbsp;号：
                                                        <span class="space"></span>

                                                        </label>
                                                        <%--<asp:Label ID="Userphone" runat="server" Text='<%# Eval("UserPhone") %>' CssClass="labelname"></asp:Label>
                                                        <asp:TextBox ID="UserphoneTb" runat="server" Text='<%# Eval("UserPhone") %>' MaxLength="40" Visible="false" CssClass="txt"></asp:TextBox>--%>
                                                    </div>
                                                    <br />
                                                    <div id="mail">
                                                        <label class="label">
                                                            <span class="light_space light">*</span>
                                                            电子邮箱：
                                                        <span class="space"></span>

                                                        </label>
                                                        <%--<asp:Label ID="Usermail" runat="server" Text='<%# Eval("UserMail") %>' CssClass="labelname"></asp:Label>--%>
                                                        <%--<asp:TextBox ID="UsermailTb" runat="server" Text='<%# Eval("UserMail") %>' MaxLength="40" Visible="false" CssClass="txt"></asp:TextBox>--%>
                                                    </div>
                                                    <br />
                                                    <div id="sex">
                                                        <label class="label">
                                                            <span class="light_space light">*</span>
                                                            性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：
                                                        <span class="space"></span>

                                                        </label>
                                                       <%-- <asp:Label ID="Sex" runat="server" Text='<%# Eval("Sex") %>' CssClass="labelname"></asp:Label>--%>
                                                        <%--<asp:TextBox ID="SexTb" runat="server" Text='<%# Eval("Sex") %>' MaxLength="40" Visible="false" CssClass="txt"></asp:TextBox>--%>
                                                        <asp:DropDownList ID="SexTb" runat="server" Visible="false" Height="25px" Width="60px" CssClass="txt">

                                                            <asp:ListItem>男</asp:ListItem>
                                                            <asp:ListItem>女</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </div>
                                                    <br />
                                                    <%--<span>
                                                        <asp:Label ID="PersonCenterTime" runat="server" Text='<%#string.Format("{0:yyyy-MM-dd hh:mm}",Eval("addtime")) %>' Font-Size="10" ForeColor="#555555"></asp:Label>
                                                    </span>--%>

                                                    
                                                    <span style="float: left;">
                                                        <asp:Button ID="Clear" runat="server" Text="清除"  Visible="false" CssClass="c_subbutton" />
                                                        <asp:Button ID="Delete" runat="server" Text="删除"  CssClass="c_subbutton" />

                                                        <asp:Button ID="Update" runat="server" Text="修改"  CssClass="c_subbutton" />
                                                        <asp:Button ID="Sav" runat="server" Text="保存" Visible="false" CssClass="c_subbutton" />
                                                        <asp:Button ID="Exit" runat="server" Text="退出" Visible="false" CssClass="c_subbutton" />
                                                    </span>
                                                </div>

                                            </div>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </div>

                            </div>


                
                   
                </article>
         </div>
            
    
</asp:Content>
