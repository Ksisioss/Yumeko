var fs = require('fs');
var mysql = require('mysql');
var fs = require('fs');
const { USER, PASSWORD} = require('../config.json')
var connection = mysql.createConnection({
    host: 'bdd2.adkynet.com',
    database: 's9212_Yumeko',
    port: '3306',
    user: USER,
    password: PASSWORD

});

connection.connect();

var array = fs.readFileSync('test.txt').toString().split("\n");
var array2
for(i in array) {
    array[i] = array[i].replace(/\n|\r/g,'');
    array[i] = array[i].replace('"','\"');
    array2 = array[i].toString().split(";");
    array[i]= array2
}

for(i in array) {
    if (array[i][1].length > 256)
        console.log(array[i][1].length + " ligne " + i + " :" + array[i][1] )
}

var sql = `INSERT INTO Cards (id_card,name_cards,description_cards,image_cards,quantity,price,id_category,id_rarity) VALUES (NULL, "${array[i][0]}", "${array[i][1]}", "${array[i][2]}", "${array[i][3]}", "${array[i][4]}", "${array[i][5]}", "${array[i][6]}"`

var content = `INSERT INTO Cards (id_card,name_cards,description_cards,image_cards,quantity,price,id_category,id_rarity) VALUES \n`

for(i in array) {
    content += `(NULL, "${array[i][0]}", "${array[i][1]}", "${array[i][2]}", ${array[i][3]}, ${array[i][4]}, ${array[i][5]}, ${array[i][6]}),\n`
}
//console.log(content)
fs.writeFile("test1", content, (err) => {
    if (err) throw err;
});

/*
connection.query('SELECT * FROM Category', function (err, rows, fields) {
    if (err) throw err;
    console.log(rows);
});*/