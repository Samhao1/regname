$(function(){
    //鼠标移入时出现的边框阴影效果
    $("div.intr_prolist_list").on("mouseenter","div.products",function(){
        $(this).addClass("current").siblings().removeClass("current");
    });
    
    //团期鼠标移入效果
    $("div.select_box").on("mouseenter",function(){
        $(this).children().last().css({
            "display":"block",
        })
    })
    $("div.select_box").on("mouseleave",function(){
        $(this).children().last().css({
            "display":"none",
        })
    });


    //翻页按钮，点击变绿色效果
    $(".page_center a").click(function(){
        console.log(1111);
        $(this).addClass("current").siblings().removeClass("current");
    })

})