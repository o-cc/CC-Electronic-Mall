/**
 * Created by oo on 2018/2/27.
 */

    //0全局变量
    var myStrop ={
        "k":0,
        "timer":null,
        "timer1":null,
        "i":0,
        "o":0
        //"demoNum":true
    };
    $(function () {
        //1 显示隐藏浮动导航
        floatNav();
        function floatNav() {
            $("#con-category").find("li").mouseover(function () {
                //鼠标经过改变背景
                $(this).find("a").css("color", "#333").parent("li").css("background", "rgba(255,255,255,0.5)")
                    .end().css("width", "690px")  //鼠标经过li 宽度变
                    .end().find("div").show().parent("li").siblings("li").find("div").hide();

            })
            $("#con-category").find("li").mouseout(function () {
                //鼠标离开改变背景
                $(this).find("a").css("color", "#fff").parent("li").css("background", "rgba(0,0,0,0.6)")
                    .end().css("width", "184px")  //鼠标离开li 宽度变回来
                    .end().find("div").hide();
            });


            for (var d = 0; d < $(".alert").length; d++) {
                for (var j = 0; j < 5; j++) {
                    //循环给alert类名添加一个alert1到5的类名   -- 为了避免商品重叠
                    $(".alert").eq(myStrop.i).addClass("alert" + (j + 1) + "");
                    myStrop.i++;
                }
            }


            for (var i = 0; i < $(".ban-nav-li").length; i++) {
                //循环给nav的li的value绑定值  目的是为了分类显示alert商品
                $(".ban-nav-li").eq(i).val(i);
                $(".ban-nav-li").eq(i).mouseover(function () {
                    //计数器
                    myStrop.o = $(this).val();

                    $(".demo").show();
                    //循环显示datalist2-8
                    for (var j = 0; j < $(".ban-nav-li").length; j++) {
                        //只有当datalist2-8中与nav-li的value+2值相等才显示
                        if (myStrop.o === j) {
                            $(".datalist" + (j + 2) + "").show();
                        }
                        else {
                            $(".datalist" + (j + 2) + "").hide();
                        }
                    }
                })
            }
            //鼠标移开隐藏demo盒子
            $(".ban-nav").mouseout(function () {
                $(".demo").hide();
            })
            $(".demo").mouseover(function () {
                $(this).show();
            })
            $(".demo").mouseout(function () {
                $(this).hide();
            })

            //鼠标经过a 显示个人中心
            $(".r-li-c a").mouseover(function () {
                $(".mem2").show();
            });
            $(".r-li-c  a").mouseout(function () {
                $(".mem2").hide();
            });
            $(".mem2").mouseover(function () {
                $(".mem2").show();
            });
            $(".mem2").mouseout(function () {
                $(".mem2").hide();
            });



        }

        //2图片移动
        imgAnimate();
        function imgAnimate() {
            //复制table的第一个tr然后添加到table的后面
            var midTr = $("#midImage").children().children("tr").eq(0).clone(true);
            $("#midImage").children().append(midTr);
            clearInterval(myStrop.timer);
            myStrop.timer = setInterval(function () {
                myStrop.k++;
                if (myStrop.k > $("#midImage").children().children("tr").length - 1) {
                    myStrop.k = 1;
                    $("#midImage").css("top", 0);
                    $("#midImage").animate({ "top": -464 * myStrop.k }, 1000)
                } else {
                    $("#midImage").animate({ "top": -464 * myStrop.k }, 1000)
                }
            }, 2000);

        }

        //3 热品推荐的特效
        hotShop();
        function hotShop() {
            //  点击移动
            $(".hot-right-link>span").eq(0).on("click", function () {
                $(".hot-tab").removeClass("hot-tab1");
                //如果table有.hot-tab1 就添加hot-active给自己 删除另一个按钮的active   否则就删除当前的active 给另一个添加
                hotLink1();
            });
            $(".hot-right-link>span").eq(1).on("click", function () {
                $(".hot-tab").addClass("hot-tab1");
                hotLink1();
            });
            function hotLink1() {
                if ($(".hot-tab").hasClass("hot-tab1")) {
                    $(".hot-right-link>span").eq(1).removeClass("hot-active")
                        .end().siblings("span").eq(0).addClass("hot-active");
                } else {
                    $(".hot-right-link>span").eq(1).addClass("hot-active")
                        .end().siblings("span").eq(0).removeClass("hot-active");
                }
            }
            //自动移动
            clearInterval(myStrop.timer1);
            myStrop.timer1 = setInterval(hotTab, 6000);
            function hotTab() {
                if ($(".hot-tab").hasClass("hot-tab1")) {//判断table有没有这个class（默认没有）
                    $(".hot-tab").removeClass("hot-tab1");
                    $(".hot-right-link>span").eq(0).removeClass("hot-active");
                    $(".hot-right-link>span").eq(1).addClass("hot-active");
                } else {  //没有的话
                    //给它添加，目的是让它动起来
                    $(".hot-tab").addClass("hot-tab1");
                    //第二个按钮默认有的，table动了之后要让它没有所以删除
                    $(".hot-right-link>span").eq(1).removeClass("hot-active");
                    //第一个按钮默认是没有class的 是不能用的 所以添加
                    $(".hot-right-link>span").eq(0).addClass("hot-active");
                }
            }

            //鼠标放在span按钮上清除移动
            clearHot();
            function clearHot() {
                $(".hot-right-link>span").eq(0).mouseover(function () {
                    clearInterval(myStrop.timer1);
                })
                $(".hot-right-link>span").eq(0).mouseout(function () {
                    myStrop.timer1 = setInterval(hotTab, 6000);
                })
                $(".hot-right-link>span").eq(1).mouseover(function () {
                    clearInterval(myStrop.timer1);
                })
                $(".hot-right-link>span").eq(1).mouseout(function () {
                    myStrop.timer1 = setInterval(hotTab, 6000);
                })
            }

            //for循环添加border-top-color
            for (var i = 0; i < $(".hot-td").length; i++) {
                $(".hot-tab").find("td").eq(i).addClass("hot-td-rainbow-" + (i + 1) + "");
            }
        }





    })
    
    