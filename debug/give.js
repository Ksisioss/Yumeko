const connection = require('../connectdb.js');

function insertCard(member, rarity, error, randomtab, interaction) {
    var card_value = 0;
    for (let i = 0; i < 491; i++) {
        var insert = `INSERT INTO Has (id_player, id_card) VALUES (20,${i});`
        connection.query(insert, function (err1, rows1, fields) {
            console.log(i)
        })
    }
};

insertCard()