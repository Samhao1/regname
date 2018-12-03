$(function(){
 //注册框失去获取焦点
  $("#email").focus(function(){
      $(this).css({"border-color":"#44a5fc"});
      $("#ema").css({"display":"block"});
  });
  $("#email").blur(function(){
    $(this).css({"border-color":"rgb(204 204 204)"});
    $("#ema").css({"display":"none"});
  });

  $("#phone").focus(function(){
    $(this).css({"border-color":"#44a5fc"});
    $("#pho").css({"display":"block"});
  });
  $("#phone").blur(function(){
    $(this).css({"border-color":"rgb(204 204 204)"});
    $("#pho").css({"display":"none"});
  });

  $("input.reg_pwd1").focus(function(){
    $(this).css({"border-color":"#44a5fc"});
    $("#pass1").css({"display":"block"});
  });
  $("input.reg_pwd1").blur(function(){
    $(this).css({"border-color":"rgb(204 204 204)"});
    $("#pass1").css({"display":"none"});
  });
  $("input.reg_pwd").focus(function(){
    $(this).css({"border-color":"#44a5fc"});
    $("#pass2").css({"display":"block"});
  });
  $("input.reg_pwd").blur(function(){
    $(this).css({"border-color":"rgb(204 204 204)"});
    $("#pass2").css({"display":"none"});
  });
  
 //注册跳转功能
 $("input.submit_btn").click(function(e){
    e.preventDefault();
    var uname=$("input.reg_email").val();
    var upwd=$("input.reg_pwd1").val();
    var phone=$("input.reg_phone").val();
    var email=$("input.reg_email").val();
    
    
    //$("input.reg_pwd2").val()==$("input.reg_pwd1").val();
  (async function(){
    var res=await $.ajax({
        url:"http://localhost:3000/users/register",
        type:"post",
        data:{uname,upwd,email,phone},
        dataType:"json"
    })
    console.log(res);
    if(res==301){
        console.log(res);
        alert(res.msg);
    }else{   
        alert("注册成功,将跳转到登录页面");
        location.href="login.html";
    }
  })()
 });
 $("a.login").click(function(e){
     e.preventDefault();
     location.href="login.html"
 })
});
