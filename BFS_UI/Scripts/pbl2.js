
function $id(o) {
    return document.getElementById(o);
}
function $class(className) {
    var parent = arguments[1] || document;
    if (parent.length && parent !== window && parent.tagName !== "select") {
        var nodes = [];
        for (var i = 0, l = parent.length; i < l; i++) {
            var elms = get(parent[i]);
            for (var j = elms.length - 1; j >= 0; j--) {
                nodes.push(elms[j])
            };
        }
        return nodes;
    } else {
        return get(parent);
    };
    function get(parent) {
        if (parent.getElementsByClassName) {
            return parent.getElementsByClassName(className);
        } else {
            var tag = arguments[2] || '*';
            var returnElements = []
            var els = parent.getElementsByTagName(tag);
            className = className.replace(/\-/g, "\\-");
            var pattern = new RegExp("(^|\\s)" + className + "(\\s|$)");
            var i = 0;
            while (i < els.length) {
                if (pattern.test(els[i].className)) {
                    returnElements.push(els[i]);
                }
                i++;
            }
            return returnElements;
        }
    }
}
//随机数据
var myMetro = $id("myMetro");
var page = 0;//第几页
var orderBy = 0;//根据什么排序
var b = true;//正序还是倒叙
var rn = 0;
function createTestData(n) {
    var spanWrap = document.createElement("span"),
    content = "";
    page++;
    var statues = $('#statues').val();
    var pd = { "t": "1", "Status": statues, "orderBy": orderBy, "b": b, "Page": page, "CountRow": "10" };
    $.ajax({
        type: "post",
        url: "../tools/Content.ashx",
        data: pd,
        dataType: "json",
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //$.dialog.alert('错误信息：' + errorThrown, function () { }, "");
        },
        success: function (data, textStatus) {
            if (data.status == "{root:[]}")
            {
                return "";
            }
            var dataobj = eval("(" + data.status + ")");
            $.each(dataobj.root, function (i, item) {
                content += '<div class="MBox">' +
                        '<div class="widgetBox bigBox" style=" border-bottom-color:rgb(133, 133, 133); border-bottom-style:solid; border-bottom-width:1px;">' +

                            '<div style="margin-top: 60px; margin-left: 50px; float: left;">' +
                                '<div style="position: relative; width: 70px; height: 70px;">' +
                                    '<img src="../UserHead/' + item.User_hd + '" style="margin: 0px; width: 70px; height: 70px; position: absolute;" />' +
                                    '<img src="../Systemimg/yuan_bg.png" style="margin: 0px; width: 70px; height: 70px; position: absolute; cursor: pointer" />' +
                                '</div>' +
                            '</div>' +
                            '<div style="float: left; margin-top: 80px; margin-left: 20px;">' +
                                item.PetName +
                            '</div>' +
                           ' <div style="float: left; margin-top: 30px; margin-left: 50px;">' +
                                '<img src="../Userimg/' + item.Content1 + '" style="width: 130px; height: 130px; margin-right: 0px; float: left;" />' +
                                '<img src="../Userimg/' + item.Content2 + '" style="width: 130px; height: 130px; margin-left: 0px; float: left;" />' +
                            '</div>' +
                            '<div style="float: left; margin-top: 40px; margin-left: 50px;">' +
                                '<div>' +
                                    '<img src="../Userimg/' + item.Content1 + '" style="width: 30px; height: 30px; margin-right: 0px;" />' +
                                    '<font style="margin-left: 30px; padding-bottom: 5px;">' + (Math.round(parseInt(item.Content1Num) / (parseInt(item.Content1Num) + parseInt(item.Content2Num)) * 10000) / 100.00 + "%") + '</font>' +
                                    '<font style="margin-left: 40px; padding-bottom: 5px;">' + item.Content1Num + '人</font>' +
                                '</div>' +
                                '<div style="margin-top: 50px;">' +
                                    '<img src="../Userimg/' + item.Content2 + '" style="width: 30px; height: 30px; margin-right: 0px;" />' +
                                    '<font style="margin-left: 30px; padding-bottom: 5px;">' + (Math.round(parseInt(item.Content2Num) / (parseInt(item.Content1Num) + parseInt(item.Content2Num)) * 10000) / 100.00 + "%") + '</font>' +
                                    '<font style="margin-left: 40px; padding-bottom: 5px;">' + item.Content2Num + '人</font>' +
                                '</div>' +
                            '</div>' +
                            '<div style="float: left; margin-top: 90px; margin-left: 80px;">' +
                                '评论数：' + item.callint + '条' +
                            '</div>' +
                            '<div style="float: left; margin-top: 90px; margin-left: 80px;">' +
                                '举报数：' + item.ReportTableInt + '条' +
                            '</div>' +
                            '<div style="float: left; margin-top: 70px; margin-left: 80px;">' +
                                '<div style="border-color: rgb(143, 143, 143); border-style: solid; border-width: 1px; height: 35px; padding-top: 10px; width: 200px; text-align: center; cursor: pointer;">' +
                                    '删除' +
                                '</div>' +
                            '</div>' +
                        '</div>' +
                    '</div>';
            });
            spanWrap.innerHTML = content;
            myMetro.appendChild();
            return spanWrap;
        }
    });
    
}
window.onload = function () {
    createTestData(10);
    metro.init(myMetro);
};
window.onresize = function () {
    metro.resort(myMetro);
};
window.onscroll = function () {
    var scrollTop = document.body.scrollTop || document.documentElement.scrollTop,
    windowHeight = document.documentElement.clientHeight,
    documentHeight = document.body.offsetHeight;
    //查询这次有没有数据，如果有则执行，如果没有，则不执行
    var oo = page + 1;
    var statues = $('#statues').val();
    var pd = { "t": "1", "Status": statues, "orderBy": orderBy, "b": b, "Page": oo, "CountRow": "10" };
    $.ajax({
        type: "post",
        url: "../tools/Content.ashx",
        data: pd,
        dataType: "json",
        error: function (XMLHttpRequest, textStatus, errorThrown) {
           // $.dialog.alert('错误信息：' + errorThrown, function () { }, "");
        },
        success: function (data, textStatus) {
            
            if (data.status == "{root:[]}") {
            }
            else
            {
                if (windowHeight + scrollTop > documentHeight - 50) {
                    var ct = createTestData(10);
                    metro.putData(ct);
                }
            }
        }
    });
}
