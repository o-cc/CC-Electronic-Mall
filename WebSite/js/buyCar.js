//购物车数量添加，价格变化
var jia = document.getElementsByClassName("jia");
var jian = document.getElementsByClassName("jian");
var gdv = document.getElementById("ContentPlaceHolder1_gvShopCart");
var ipts = gdv.getElementsByTagName("input");
var danjia = document.getElementsByClassName("danjia");
var zongjia = document.getElementsByClassName("zongjia");
var iptArr = []; //储存grdv的input的value的
//        for (var i = 0; i < ipts.length; i++) {
//            ipts[i].dataset["cc"] = i;
//        }

for (var i = 0; i < ipts.length; i++) {
    jia[i].index = i;
    jia[i].onclick = function () {
        ipts[this.index].value++;
        //zongjia[this.index].innerHTML
        //window.localStorage["value"] = ipts[this.index].value;
        var dan = parseInt(danjia[this.index].innerText);
        zongjia[this.index].innerText = dan * parseInt(ipts[this.index].value);
        label();
        var zongshuliang = 0;
        for (var i = 0; i < $(".jiage").length; i++) {

            zongshuliang += parseInt($(".jiage").eq(i).children("input").val().trim());
        }

        $(".total").text(zongshuliang);


    };

    jian[i].index = i;
    jian[i].onclick = function () {
        if (ipts[this.index].value > 0) {
            ipts[this.index].value--;
            window.localStorage["value"] = ipts[this.index].value;
            var dan = parseInt(danjia[this.index].innerText);
            zongjia[this.index].innerText = dan * parseInt(ipts[this.index].value);
            label();
            var zongshuliang = 0;
            for (var i = 0; i < $(".jiage").length; i++) {

                zongshuliang += parseInt($(".jiage").eq(i).children("input").val().trim());
            }

            $(".total").text(zongshuliang);


        }
    }
}

var label1 = document.getElementById("ContentPlaceHolder1_labTotalPrice");
label();
function label() {
    var att = 0;
    for (var j = 0; j < zongjia.length; j++) {
        window.localStorage["value"] = ipts[j].value;
        zongjia[j].innerText = parseInt(danjia[j].innerText) * parseInt(ipts[j].value);


        att += parseInt(zongjia[j].innerText);
    }
    label1.innerText = att;
}

//点击按钮，循环获取input的值
$(".go").click(function () {
    //定义一个数组存储每个input的值


    for (var i = 0; i < $(".txtNum").length; i++) {
        //alert($(".txtNum").eq(i).val());
        iptArr[i] = $(".txtNum").eq(i).val();
    };
    this.href = "checkOut.aspx";
    console.log(iptArr)

});
//定义一个数组？
// 监听文本输入框的 change 事件
//for (var i = 0; i < $(".txtNum").length; i++) {
//    $(".txtNum").eq(i).change(function () {
//        // 保存结果到 sessionStorage 对象中
//        //sessionStorage.setItem("autosave", field.value);
//        alert("$(this).val()");
//    });

//}