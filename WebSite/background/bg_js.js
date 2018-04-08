/**
* Created by oo on 2018/3/14.
*/
$(function () {

    //删除li的active1  给当前的li的div加show
    for (var i = 0; i < $(".list-item").length; i++) {
        $(".list-item").eq(i).click(function () {

            $(this).children(".item-box").addClass("active1").end().siblings("li").children(".item-box").removeClass("active1");
            //给隔壁盒子显示隐藏
            $(".box").eq($(this).index()).addClass("boxshow").removeClass("hide").siblings("div").removeClass("boxshow hide");
            $(".top-item").eq($(this).index()).addClass("lishow").removeClass("bg-e9 hide").siblings("li").addClass("bg-e9");

            //$(".Desktop").hide();
        });
//        //点击.list-item让.box增加boxshow
//        $(".top-item").eq(i).click(function () {
//            $(this).addClass("lishow").removeClass(" bg-e9").siblings("li").addClass("bg-e9");
//            $(".box").eq($(this).index()).addClass("boxshow").siblings(".box").removeClass("boxshow hide");
//        });

        $(".item-span").eq(i).click(function () {
            $(this).parent().addClass("hide");
            $(".box").addClass("hide");

            //如果下个元素存在，则删除下个元素的bg-e9 如果不存在 则删除上个元素的bg-e9
            //    console.log($(".item-span").parent().eq(4).next().length) 下个元素不存在则length为0
            //无法实现
        });
    }
    for (var i = 0; i < $(".con-aside").find("a").length; i++) {
        $(".con-aside").find("a").click(function () {
            $(".Desktop").hide();
        })
    }

    //鼠标点击link下边的a链接后，给a增加一个类，改变字体颜色，点击其他a则移除
    for (var i = 0; i < $(".a").length; i++) {
        $(".a").eq(i).click(function () {
            $(this).addClass("blue").siblings().removeClass("blue");
            $(this).parent(".link").parent(".item-box").parent("li").siblings("li").find(".a").removeClass("blue");
        });
    }



})//不要超出这个