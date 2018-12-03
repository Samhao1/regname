$(function(){
    //用户密码框获取和失去焦点
    $("#reglogin").focus(function(){
          $(this).css({"border-color": "#44a5fc"});
          $("p.text_tip").css({"display":"block"});
    });
    $("#reglogin").blur(function(){
          $(this).css({"border-color":"rgb(204 204 204)"});
          $("p.text_tip").css({"display":"none"});
    });
    $("#regpwd").focus(function(){
        $(this).css({"border-color": "#44a5fc"});
        $("p.text_tip2").css({"display":"block"});
    });
    $("#regpwd").blur(function(){
        $(this).css({"border-color":"rgb(204 204 204)"});
        $("p.text_tip2").css({"display":"none"});
    });

    $("a.register").click(function(e){
        e.preventDefault();
        location.href="register.html"

    })
    //登录跳转回原页面
    $("input.submit_btn").click(function(){
        var uname=$("#reglogin").val();
        var upwd=$("#regpwd").val();
        (async function(){
            var res=await $.ajax({
                url:"http://localhost:3000/users/signin",
                type:"post",
                data:{uname,upwd},
                dataType:"json",
                beforeSend: function(request) {
                    request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
                }
            })       
            if(res==0){
             alert(res.msg);
            }else{
                alert("登录成功,将返回原页面");
                if(location.search.startsWith("?back=")){
                    var url=location.search.slice(6)
                }else{
                    var url=index.html
                }
                location.href=url;
            }  
        })()
    });
})

