const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageActionRow, MessageButton, EmbedBuilder, Colors} = require('discord.js');
const connection = require('../connectdb.js');

// Application du système de valeurs et de boutons de confirmation ou annulation
module.exports = {
    data: new SlashCommandBuilder()
        .setName('help')
        .setDescription("Tu es perdu ?"),
        async execute(interaction) {
            const fullsql = `SELECT * FROM Embeds WHERE command_embed='help';`
            connection.query(fullsql, function (err, rows, fields) {
                if (rows.length == 0) {
                    interaction.reply({ content: "La commande help est cassée. Contacte : <@243093183649677324>"})
                } else {
                    if (err) throw err;
                    let x = 0
                    const embed = new EmbedBuilder()
                    .setTitle(`${rows[x].title_embed}`)
                    .setColor(Colors.Red)
                    .setDescription(`${rows[x].description_embed}`)
                    .setFooter({ text: 'Yumeko à votre service !'})
                    interaction.reply({ embeds: [embed], ephemeral:false}) 
                    console.log(`HELP by ${interaction.member.user.username}`)
                }
            })
        },
};