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
            var value = random(10, 15)
            const checkup = `SELECT * FROM Player WHERE discord_id = ${member.id};`
            const sql = `UPDATE Player SET ja_points = ja_points + ${value} , daily=TRUE WHERE discord_id = ${member.id}`;
            connection.query(checkup, function (err, rows1, fields) {
                //console.log(rows1)
                if (err) throw err;
                if (rows1.length == 0) {
                    interaction.reply({ content: "Tu n'as pas été trouvé, tu peux t'inscrire avec /register !"})
                } else {
                    connection.query(sql, function (err, rows, fields) {
                        interaction.reply({ content: `${value} points ajoutés. Solde actuel ${rows1[0].ja_points + value}`}) 
                    if (err) throw err;
                });
                }
            });


            
        }
};