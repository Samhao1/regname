const express=require('express');
const bodyParser=require('body-parser');
const session = require('express-session');
const cookieParser = require('cookie-parser');

/*引入路由模块*/
const users=require("./routes/users");
const indexx=require("./routes/indexx");
const products=require("./routes/products");
const detail=require("./routes/detail");
const cart=require("./routes/cart");
var app=express();
var server=app.listen(3000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
app.use(cookieParser());
app.use(session({
    secret: '128位随机字符串',
    resave: false,
    cookie: { maxAge: 36288000 },
    saveUninitialized: true,
  }))


/*使用路由器来管理路由*/
app.use("/users",users);
app.use("/indexx",indexx);
app.use("/products",products);
app.use("/detail",detail);
app.use("/cart",cart);
