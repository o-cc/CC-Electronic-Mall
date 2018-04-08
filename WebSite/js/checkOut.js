


//提交订单模块
//给item增加一个类：selected
$(function () {
    var color = "";
    $(".show-item").click(function () {
        $(this).addClass("slected").parent().parent().siblings("tr").children("td").children(".show-item").removeClass("slected");
        color = "#ff6700";
    })
    $(".show-item1").mouseover(function () {
        $(this).css("border-color", "#888");
    })
    $(".show-item1").mouseout(function () {
        $(this).css("border-color", "#ccc");
    })
    $(".show-item").mouseover(function () {
        $(this).addClass("move").parent().parent().siblings("tr").children("td").children(".show-item").removeClass("move");
    })
    $(".show-item").mouseout(function () {
        $(this).removeClass("move").parent().parent().siblings("tr").children("td").children(".show-item").removeClass("move");
    })

    //点击×关闭弹出
    $(".right").click(function () {
        $(".screen").hide();
    })
    $(".show-item1").click(function () {

        $(".screen").show();
    })
    $(".btn").click(function () {

        $(".screen").hide();
    });
    //screen1
    $(".right1").click(function () {
        $(".screen1").hide();
    })
    //$(".btn1").click(function () {

    // $(".screen1").hide();
    // });



    $(".add-bom-btn").click(function () {
        //如果没有选择地址，返回
        if (($(".slected")).length === 0) {
            alert("请选择地址");
            return;
        }
        //给各个订单确认信息绑定内容
        $("#ContentPlaceHolder1_TextBox1").val($(".slected").children(".address-name").text().trim());
        $("#ContentPlaceHolder1_TextBox2").val($(".slected").children(".address-phone").text().trim())
        $("#ContentPlaceHolder1_Textarea1").val($(".slected").children(".address").text().trim());
        $("#ContentPlaceHolder1_TextBox3").val($(".slected .dt-bianma").text().trim());
        $("#ContentPlaceHolder1_Text1").val($(".slected .dt-users").text().trim());
        $("#ContentPlaceHolder1_Text2").val($("#ContentPlaceHolder1_labTotalPrice").text().trim());
        $("#ContentPlaceHolder1_Text3").val($(".total").text().trim());
        //显示确认订单
        $(".screen1").show();

        var bianji = document.getElementById("bianji");
        //for循环给商品添加商品名和ID
        for (var i = 1; i < $(".gd").children("tbody").children("tr").length; i++) {
            //if判断，当要添加的内容的长度小于商品的长度时，才能执行添加
            if ($("#bianji").children(".clear").length < $(".gd").children("tbody").children("tr").length - 1) {

                //定义要添加的内容标签
                var str = '<div class="clear">' +
                    ' <span class="shop-id1">商品' + i + 'ID：</span>' +
                     '<input  class="r" paaceholder="商品ID" type="text"/>' +
                      '<div class="clear"></div>' +
                      '<span class="show-name1">商品' + i + '名：</span>' +
                      '<input  class="r" paaceholder="商品" type="text"/>' +
                '</div>';
                //根据tr的长度在弹出的确认订单中添加相应个数的bianji盒子
                bianji.innerHTML += str;
            }
        }
        for (var i = 0; i < $(".gd").children("tbody").children("tr").length - 1; i++) {
            //给商品ID绑定值
            $("#bianji").children(".clear").eq(i).children(".r").eq(0)
                .val($(".gd").children("tbody").children("tr").eq(i + 1).children("td").eq(1).text().trim());
            //给商品名绑定值
            $("#bianji").children(".clear").eq(i).children(".r").eq(1)
                .val($(".gd").children("tbody").children("tr").eq(i + 1).children("td").eq(2).text().trim());
        }


    })
    var zongshuliang = 0;
    for (var i = 0; i < $(".jiage").length; i++) {

        zongshuliang += parseInt($(".jiage").eq(i).children("input").val().trim());
    }

    $(".total").text(zongshuliang);


    //试试能不能把购物车的数量保存起来传给checkout的数量
//    var txtnum = 0;
//    for (var i = 0; i < $(".txtNum ").length; i++) {
//        txtnum

//        $(".txtNum ").eq(i).val(txtnum[i]);

//   }

console.log(iptArr)

})//不能超出这个

