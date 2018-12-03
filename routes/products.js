const express=require('express');
const router=express.Router();
const pool=require("../pool");

/*关键词查询商品分页路由*/ 
router.get("/",(req,res)=>{
    var kwords=req.query.kwords;
    var arr=kwords.split(" ");
    for(var i=0;i<arr.length;i++){
        arr[i]=`title like '%${arr[i]}%'`
    }
    var where=" where "+arr.join(" and ");
    var output={
        pageSize:10, //每页的数量
        pno:0        //页号
    };  
    output.pno=req.query.pno;
    var sql="select * from xmt_product";
    console.log(sql+where);
    pool.query(sql+where,[],(err,result)=>{
        if(err) console.log(err);
        output.count=result.length;   //商品总数
        output.pageCount=Math.ceil(output.count/output.pageSize);  //总页数
        output.products=result.slice(output.pno*9,output.pno*9+9);  //每页的商品
        console.log(output);
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf-8",
            "Access-Control-Allow-Origin":"*"
          })
          res.write(JSON.stringify(output))
          res.end();
    })
    //res.end();
})

module.exports=router; 