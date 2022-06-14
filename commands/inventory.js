const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageActionRow, MessageButton, MessageEmbed} = require('discord.js');
const connection = require('../connectdb.js');
const wait = require('node:timers/promises').setTimeout;



module.exports = {
    data: new SlashCommandBuilder()
    .setName('inventory')
    .setDescription("Affiche les inventaires.")
    .addIntegerOption(option =>
        option.setName('category')
        .setDescription('La catégorie de ton choix')
        .setRequired(true)),
    async execute(interaction) {
        interaction.deferReply()
        interaction.deleteReply()
        var cat = interaction.options.getInteger('category');
        var member = interaction.member.user
        console.log(cat)

        connection.query(`SELECT * FROM Cards JOIN Category ON Cards.id_category = Category.id_category WHERE Cards.id_category = ${cat};`, function (err, rows, fields) {
            console.log(member)
            var desc="";
            var t1 = 0
            var t2 = 0
            connection.query(`SELECT * FROM Has JOIN Player ON Has.id_player=Player.id_player WHERE discord_id=${member.id}`, function (err1, rows1, field1) {
                console.log(rows[0])
                for (let i = 0; i < rows.length; i++) {
                    for (let j = 0; j < rows1.length; j++){
                        //console.log(rows[i].id_card)
                        //console.log(rows1[j].id_card)
                        if (rows[i].id_card === rows1[j].id_card){
                            console.log("YES")
                            desc += `\n<:Approuv:782353191328940073> ${rows[i].name_cards}`
                        }
                    }
                    desc += `\n<:Denied:782353207372283925> ${rows[i].name_cards}`
                    if ((desc.length > 3500 && t1 ==0) || (desc.length > 7000 && t2 == 0) ) {
                        if (desc.length > 3500)
                            t1 = 1
                        if (desc.length > 7000)
                            t2 = 1
                        desc += ";"
                    }
                }
                var array = desc.split(";"); 
                for (let i = 0; i < array.length; i++) {
                    const embed = new MessageEmbed()
                    .setTitle(`**Inventaire de ${member.username}**`)
                    .setFooter({
                        text: `Yumeko à votre service !`
                    })
                    .setThumbnail(`https://cdn.discordapp.com/avatars/${member.id}/${member.avatar}.png?size=256`)
                    .setDescription(`**${rows[0].name_category}**` + array[i])
                    interaction.channel.send({embeds:[embed]})
                }
            })
            
        })
    },
};