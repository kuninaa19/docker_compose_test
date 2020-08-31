'use strict';

const express = require('express');
const mysql = require('mysql');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var usersRouter = require('./routes/users');

const app = express();

const connection = mysql.createConnection({
    host:'mysql',
    user: 'root',
    post: 3306,
    password: 'mysql1@',
    database: 'testDB'
  });

  connection.connect(function(error){
    if(!!error)
    {
        console.log('mysql Error',error);
    }
    else
    {
        console.log('mysql connected');
    }
});
const redis = require('redis');

const client = redis.createClient({
  host: 'redis',
  port: 6379
})

client.set('visits', 0);

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

// 상수a
const PORT = 3000;
const HOST = '0.0.0.0';

// 앱
app.get('/', (req, res) => {
  

  client.get('visits', (err, visits) => {
  res.send('Number of visits is: ' + visits + 1)

  client.set('visits', parseInt(visits) + 1)

  })
  // res.send("hello World!");
});

app.use('/users', usersRouter);

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);