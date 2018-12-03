const mysql=require('mysql');
var pool=mysql.createPool({
    post:'127.0.0.1',
    user:'root',
    password:'',
    database:'xmt',
    connectionLimit: 20
})
module.exports=pool;
