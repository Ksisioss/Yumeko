const { SlashCommandBuilder } = require('@discordjs/builders');
const connection = require('../connectdb.js');
const schedule = require('node-schedule');

function random(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

const job = schedule.scheduleJob('0 0 * * *', function(){
    console.log('The answer to life, the universe, and everything!');
    const sql2 = `UPDATE Player SET daily = FALSE`;
    connection.query(sql2, function (err, rows1, fields) {
        if (err) throw err;
    });
});

module.exports = {
    data: new SlashCommandBuilder()
        .setName('daily')
        .setDescription('Récupère tes ja_points quotidiens'),
        async execute(interaction) {
            var member = interaction.member
            var value = random(25, 75)
            const sql = `UPDATE Player SET ja_points = ja_points + ? , daily=1 WHERE discord_id = ? AND daily=0;`;
            const selectSql = `SELECT ja_points FROM Player WHERE discord_id = ?;`;
            const params = [value, member.id];
            console.log("DAILY by " + member.user.username);
            connection.query(sql, params, function(err, rows, fields) {
                if (rows.length == 0) {
                    interaction.reply({ content: "Tu n'as pas été trouvé, tu peux t'inscrire avec /register !"})
                    console.log("DAILY : MISSING_USER");
                    return
                } else {
                    if (rows.affectedRows == 0) {
                        interaction.reply({ content: "Tu as déjà récupéré tes points aujourd'hui !"})
                        console.log("DAILY : ALREADY");
                        return
                    }
                    connection.query(selectSql, [member.id], function(err, selectRows, fields) {
                        if (err) throw err;
                        console.log(`DAILY : SUCCESS`)
                        interaction.reply({ content: `${value} points ajoutés. Solde actuel ${selectRows[0].ja_points}`});
                        return
                    });
                }
            })
        }
};