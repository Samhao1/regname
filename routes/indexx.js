const express=require('express');
const router=express.Router();
const pool=require("../pool");

/*主页折扣路由*/ 
router.get("/code",(req,res)=>{
    var sql="select * from xmt_index_code ";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

module.exports=router;