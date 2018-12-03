const express=require('express');
const router=express.Router();
const pool=require("../pool");
//登录路由
 router.post("/signin",(req,res)=>{
     var {uname,upwd}=req.body;
     var sql=" select * from xmt_user where uname=? and upwd=?";
     pool.query(sql,[uname,upwd],(err,result)=>{
         if(err) console.log(err);
         res.writeHead(200,{
             "Content-Type":"application/json;charset=utf-8",
             "Access-Control-Allow-Origin":"*"
         })
         if(result.length>0){
             var user=result[0];
             req.session.pid=user.pid;
             res.write(JSON.stringify({ok:1}))
             res.end();
         }else{
             res.write(JSON.stringify({
                 ok:0,
                 msg:"用户名或者密码错误"
            
            }))
         }  
     })
 });

 //判断是否登录成功
 router.get("/islogin",(req,res)=>{
     res.writeHead(200,{
        "Content-Type":"application/json;charset=utf-8",
        "Access-Control-Allow-Origin":"*"
    });
     if(req.session.pid!=undefined){ 
        var pid=req.session.pid;
         var sql=" select * from xmt_user where pid=?";
         pool.query(sql,[pid],(err,result)=>{
             if(err) console.log(err);
             var user=result[0];
             res.write(JSON.stringify({
                 ok:1,
                 uname:user.uname
             }))
             res.end()
         })
        //res.send()
     }else{
        res.write(JSON.stringify({ok:0}))
        res.end()
     }
 });

 //注销路由
 router.get("/signout",(req,res)=>{
    req.session.pid=undefined;
    res.end();
});

//验证是否已经注册
router.get("/regemail",(req,res)=>{
    var email=req.query.email;
    var sql=" select * from xmt_user where email=?";
    pool.query(sql,[email],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.write(JSON.stringify({ok:0,msg:"邮箱已被占用"}));
        }else{
            res.write(JSON.stringify({ok:1}));
        }
        res.end();
    })
})

//注册路由
router.post("/register",(req,res)=>{
    //浏览器发送的数据
    //console.log(req.body);
    var obj=req.body;
    //验证表单提交的内容是否为空
    //验证用户名为空
    var uname=obj.email;
    if(uname==''){
      res.write(JSON.stringify({code:401,msg:'uname required'}));
      return;//终止函数中的代码继续执行
    }
    //验证密码为空
    var upwd=obj.upwd;
    if(upwd==''){
      res.write(JSON.stringify({code:403,msg:'upwd required'}));
      return;
    }
    //验证邮箱
    var email=obj.email;
    if(email==''){
      res.write(JSON.stringify({code:402,msg:'email required'}));
      return;
    }
    //验证手机
    var phone=obj.phone;
    if(phone==''){
      res.write(JSON.stringify({code:402,msg:'phone required'}));
      return;
    }
    //以上验证都通过了，执行插入数据库操作
    var sql='INSERT INTO xmt_user VALUES(NULL,?,?,?,?)';
    pool.query(sql,[uname,upwd,email,phone],(err,result)=>{
      if(err) throw err;
      res.writeHead(200,{
        "Content-Type":"application/json;charset=utf-8",
        "Access-Control-Allow-Origin":"*"
    });
      //如何判断插入成功————affectedRows
      if(result.affectedRows>0){
        res.write(JSON.stringify({code:200,msg:'reg success'}));
      }else{
        res.write(JSON.stringify({code:301,msg:'reg error'}));
      }
      res.end();
    });
  });
module.exports=router;