$(function(){
    //登录跳转+是否登录成功功能
    $("#btnLogin").click(function(e){
      e.preventDefault();
         location.href="login.html?back="+location.href;
     });
     $.ajax({
         url:"http://localhost:3000/users/islogin",
         type:"get",
         dataType:"json",
       success: function(res) {
           console.log(res);
             if(res.ok==0){
                 $("#aaa").show().next().hide(); //登录
             }else{
                 $("#aaa").hide().prev().show();
                 $("#xmtuname").html(res.uname);
             }
         }
     });
     //注销功能
     $("#btnSignout").click(function(e){
         alert(111);
         e.preventDefault();
         $.ajax({
             url:"http://localhost:3000/users/signout",
             type:"get",
             success:function(){
                 location.reload();
             }
         })
     });  
    //注册跳转功能
     $("#btnRegist").click(function(e){
         e.preventDefault();
         location.href="register.html?back="+location.href;
     });
     //关键词搜索跳转商品列表功能
     $("#btnClick").click(function(e){
         e.preventDefault();
         var kw=$("#s2").val().trim();
         if(kw!==""){
            location.href=`product.html?kwords=${kw}`;
         }
     });
     $("#s2").keyup(function(e){
         if(e.keyCode==13){
             $("#btnClick").click();
         }
     });
     if(location.search.indexOf("kwords")!=-1){
         var kwords=decodeURI(location.search.split("=")[1]);
         $("#s2").val(kwords);
     }
})