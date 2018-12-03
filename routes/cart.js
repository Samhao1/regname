const express=require('express');
const router=express.Router();
const pool=require("../pool");
//添加到购物车
router.get("/add",(req,res)=>{
    var lid=req.query.lid;  //商品编号701
    var count=req.query.count;
    var pid=req.session.pid;
    pool.query(
        "select * from xmt_cart where user_id=? and product_id=?",
        [pid,lid],
        (err,result)=>{
          if(err) console.log(err);
          if(result.length==0){
            var sql="INSERT INTO xmt_cart VALUES(null,?,?,?,0)";
            pool.query(sql,[pid,lid,count],(err,result)=>{
            if(err) console.log(err);
            res.end();
            });
          }else{
            pool.query(
                "update xmt_cart set count=count+? where user_id=? and product_id=?",
                [count,pid,lid,],
                (err,result)=>{
                  if(err) console.log(err);
                  res.end();
            });
          }
    });
});
//查询数据
router.get("/items",(req,res)=>{
    var pid=req.session.pid;
    var sql=`SELECT * FROM xmt_cart inner join xmt_product on xmt_cart.product_id=xmt_product.lid where user_id=?`;
    pool.query(sql,[pid],(err,result)=>{
      if(err) console.log(err);
      res.writeHead(200);
      res.write(JSON.stringify(result))
      res.end();
    });
  })

//从购物车删除商品
router.get("/update",(req,res)=>{
    var iid=req.query.iid;
    var count=req.query.count;
    if(count>0){
      var sql="update xmt_cart set count=? where iid=?";
      var data=[count,iid];
    }else{
      var sql="delete from xmt_cart where iid=?";
      var data=[iid];
    }
    pool.query(sql,data,(err,result)=>{
      if(err) console.log(err);
      res.end();
    })
  })

module.exports=router;