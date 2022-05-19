const { SlashCommandBuilder } = require('@discordjs/builders');
const {  MessageActionRow, MessageSelectMenu, MessageEmbed} = require('discord.js');
const connection = require('../connectdb.js');
//const {client} = require('../index.js')


module.exports = {
    data: new SlashCommandBuilder()
    .setName('status')
    .setDescription("Choisi le status du bot !"),
    async execute(interaction) {
        var member = interaction.member
        //console.log(member.id)
        const checksql = `SELECT ja_points FROM Player WHERE discord_id=${member.id}`
        connection.query(checksql, function(err, row, fields) {
            console.log(row[0].ja_points)
        })
        const row = new MessageActionRow()
        .addComponents(
            new MessageSelectMenu()
            .setCustomId('statusChoice')
            .setPlaceholder('Choisi le status du bot !')
            .addOptions([
                {
                    label: 'Online',
                    description: 'Mettre le status sur online',
                    value: 'online',
                },
                {
                    label: 'Indisponible',
                    description: 'Mettre le status en indisponible',
                    value: 'dnd',
                },
                {
                    label: 'AFK',
                    description: 'Mettre le status en AFK',
                    value: 'idle',
                },
            ]),
            );
            interaction.reply({components : [row]})
        }
    };