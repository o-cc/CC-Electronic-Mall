//点击aside的订单链接 让iframe显示 让first隐藏
$(function () {
    $(".occ").eq(0).on("click", function () {
        $(".first-show").hide();
        $(".iframe").show();
    });
    $(".occ").eq(1).on("click", function () {
        $(".first-show").hide();
        $(".iframe").show();
    });
    $(".occ").eq(2).on("click", function () {
        $(".first-show").hide();
        $(".iframe").show();
    });
    $(".icon-1-a").eq(0).on("click", function () {

        $(".first-show").hide();
        $(".iframe").show();
    
    });
    $(".icon-1-a").eq(1).on("click", function () {

        $(".first-show").hide();
        $(".iframe").show();

    });
    $(".w").on("click", function () {

        $(".first-show").hide();
        $(".iframe").show();

    });


})