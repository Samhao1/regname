$(function(){
    if(location.search.indexOf("lid=")!=-1){
        var lid=location.search.split("=")[1];
        (async function(){
            var res= await $.ajax({
                url:"http://localhost:3000/detail",
                type:"get",
                data:{lid},
                dataType:"json",
            });
            //console.log(res);
            var {product,pics}=res;
            $("#t1").children("h1").html(product.title+`<span class="code">【编号:${product.lid}】</span>`);//title
            $("span.s1").html(`<em>$</em>${product.price}<em style="font-size:14px">/起</em>`) //price

            $("#add_cart").attr("data-lid",`${product.lid}`);//加入购物车自定义lid
            
            //下层小图片
            var html="";
            for(var pic of pics){
                var {sm,md}=pic;
                html+=`<li><img src="${sm}" data-md="${md}" style="display: inline-block;"></li>`
            }
            $("#small").html(html);
            var width=(160*pics.length)+'px';
            $("#small").css('width',width);
            //第一张大图
            var mImg=$("ul.rel").children("li").children("img");
            mImg.attr('src',`${pics[0].md}`)
            
            //鼠标移入小图片切换大图
            $("#small").on("mouseenter","li>img",function(){
                $(this).parent().addClass("cur"); //增加边框
                var src=$(this).attr("src");
                $(".rel").children().children("img").attr("src",src);
            });
            $("#small").on("mouseleave","li>img",function(){
                $(this).parent().removeClass("cur");
            });  
        })()
        //加减按钮
        var $p=$("p.accountChose");
        $p.on("click","button",function(e){
            e.preventDefault();
            var $btn=$(this);
            var $input=$btn.parent().children("input");
            var n=parseInt($input.val());
            if($btn.html()=="+"){
                n++;
            }else if(n>1){
                n--;
            }
            $input.val(n);
        });

        //加入购物车
        $("#add_cart").on("click",function(e){
            e.preventDefault();
            var lid=$(this).attr("data-lid");
            var count=$(this).parent().prev().children("input").val();
            (async function(){
                var res=await $.ajax({
                    url:"http://localhost:3000/users/islogin",
                    type:"get",
                    dataType:"json"
                });
                if(res.ok==1){ 
                    await $.ajax({
                        url:"http://localhost:3000/cart/add",
                        type:"get",
                        data:{lid,count}
                    });
                    $("#add_cart").parent().prev().children("input").val(1);
                    alert("添加成功");
                    location.href="cart.html";
                }else{
                    alert("请先登录")
                }
            })()
        });
        /*
        */
    }
})
