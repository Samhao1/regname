$(function(){
    async function loadCart(){
        var res=await $.ajax({
            url:"http://localhost:3000/users/islogin",
            type:"get",
            dataType:"json"
        });
        if(res.ok==0){
            alert("暂未登录，无法使用购物车");
        }else{
            var res=await $.ajax({
                url:"http://localhost:3000/cart/items",
                type:"get",
                dataType:"json"
            });
            console.log(res);
            var num=res.length; //商品数量
            var totalPrice=0;  //全部总价
            var html="";
            for(var item of res){
               var total=0;  //单个总价
               var {iid,lid,title,img_url,price,count}=item;
               total+=price*count;
               console.log(count,total);
               html+=`<div id="contenbt_box_body">
               <div class="imfor">
                 <div class="check">
                   <div class="Each">
                     <span class="true">
                         <img src="img/details/product_normal.png">
                     </span>
                     <input type="hidden" name="lid" value="5">
                    </div>
                 </div>
                 <div class="pudc">
                   <div class="pudc_information" id="766">
                     <a href="details.html?lid=${lid}"><img src="${img_url}" class="lf" id="image"></a>
                     <input type="hidden" name="" value="">
                         <span class="des lf">
                             <a href="details.html?lid=${lid}">${title}</a>
                             <input type="hidden" name="" value="">
                         </span>
                   </div>
                 </div>
                 <div class="pices" id="pp">
                   <p class="pices_des">欣美途专享价</p>
                   <p class="pices_information">
                       <b>$</b>
                       <span>${price.toFixed(2)}  
                           <input type="hidden" name="" value="">
                        </span>
                   </p>
                 </div>
                 <div class="num">
                     <span class="reduc" data-iid=${iid}>&nbsp;-&nbsp;</span>
                     <input type="text" value="${count}">
                     <span class="add" data-iid=${iid}>&nbsp;+&nbsp;</span>
                 </div>
                 <div class="totle">
                   <span>$</span>
                   <span class="totle_information">${total.toFixed(2)}</span>
                 </div>
                 <div class="del">
                   <a href="javascript:;" class="del_d">删除</a>
                 </div>
               </div>
             </div>`;
             $("#boxx").html(html);
             totalPrice+=total;
            }
            $("span.num1").html(`${num}`);
            $("span.num2").html(`${totalPrice}`);
        }
        
    }
    loadCart();

    //购物车加减按钮
    var $cart=$("#boxx");
    //console.log($cart);
    $cart.on("click","div.num>span",function(){
        var $span=$(this);
        console.log($span);
        console.log($span.val());       
        (async function(){
            var iid=$span.attr("data-iid");
            var count=$span.parent().children("input").val();
           // console.log(count);
            if($span.html()=="&nbsp;-&nbsp;"){
                count--;
            }else{
                count++;
            }
            if(count==0){
                if(!confirm("是否删除该商品"))
                return;
            }

            await $.ajax({
                url:"http://localhost:3000/cart/update",
                data:"get",
                data:{iid,count}
            })
            loadCart()
        })()
    })   
})
