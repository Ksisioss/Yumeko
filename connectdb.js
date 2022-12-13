var mysql = require('mysql');
var fs = require('fs');
const { USER, PASSWORD} = require('./config.json')
var connection = mysql.createConnection({
    host: 'mysql1.par1.adky.net',
    database: 's9212_Yumeko',
    port: '3306',
    user: USER,
    password: PASSWORD,
    charset: 'utf8mb4'

});

connection.connect();
module.exports = connection;

/*
connection.query('SELECT * FROM Category', function (err, rows, fields) {
    if (err) throw err;
    console.log(rows);
});
var test = "Test"
connection.query(`INSERT INTO Category (id_category, name_category) VALUES (NULL, "${test}")`, function (err, rows, fields) {
    if (err) throw err;
    //console.log(rows);
});
connection.query('SELECT * FROM Category', function (err, rows, fields) {
    if (err) throw err;
    console.log(rows);
});*/

//connection.end();