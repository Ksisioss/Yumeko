const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageActionRow, MessageButton, MessageEmbed} = require('discord.js');
const connection = require('../connectdb.js');
const wait = require('node:timers/promises').setTimeout;

function pageButton(index, limit) {
    if (index === 0) {
        const row = new MessageActionRow()
        .addComponents(
            new MessageButton()
            .setCustomId('next')
            .setLabel(`Page Suivante ${index+1}`)
            .setStyle('PRIMARY')
            .setEmoji('▶'),
        );
        return (row)    
    }
    if (index === limit) {
        const row = new MessageActionRow()
        .addComponents(
            new MessageButton()
            .setCustomId('previous')
            .setLabel(`Page Précédente ${index-1}`)
            .setStyle('PRIMARY')
            .setEmoji('◀'),
        );
        return(row)
    }
    const row = new MessageActionRow()
        .addComponents(
            new MessageButton()
            .setCustomId('previous')
            .setLabel(`Page Précédente ${index-1}`)
            .setStyle('PRIMARY')
            .setEmoji('◀'),
        )
        .addComponents(
            new MessageButton()
            .setCustomId('next')
            .setLabel(`Page Suivante ${index+1}`)
            .setStyle('PRIMARY')
            .setEmoji('▶'),
        );
    return(row)
}

module.exports = {
    data: new SlashCommandBuilder()
    .setName('inventory')
    .setDescription("Affiche les inventaires.")
    .addIntegerOption(option =>
        option.setName('category')
        .setDescription('La catégorie de ton choix')
        .setRequired(false)),
    async execute(interaction) {
        var cat = interaction.options.getInteger('category');
        if ((cat < 1 || cat > 15) && cat!=null) {
            console.log(cat)
            interaction.reply({content:"Tu peux spécifier une valeur entre 1 et 15"})
            return
        }
        console.log(cat)
        var member = interaction.member.user
        if (cat != null) {

            connection.query(`SELECT * FROM Cards JOIN Category ON Cards.id_category = Category.id_category WHERE Cards.id_category = ${cat};`, function (err, rows, fields) {
                var desc="";
                var x = 0;
                var t1 = 0
                var t2 = 0
                connection.query(`SELECT * FROM Has JOIN Player ON Has.id_player=Player.id_player WHERE discord_id=${member.id}`, function (err1, rows1, field1) {
                    console.log(`Inventory ${cat} for ${member.username}`)
                    for (let i = 0; i < rows.length; i++) {
                        x = 0
                        for (let j = 0; j < rows1.length; j++){
                            if (rows[i].id_card === rows1[j].id_card){
                                desc += `\n<:Approuv:782353191328940073> ${rows[i].name_cards}`
                                x = 1
                            }
                        }
                        if (x == 0)
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
                        interaction.reply({embeds:[embed]})
                    }
                })
                
            })
        } else {
            const checksql = `SELECT * FROM Player WHERE discord_id=${member.id}`
            connection.query(checksql, function (err, rows, field) {
                var x = rows[0].id_player
                var index = 0;
                connection.query(`SELECT * FROM Has JOIN Player ON Has.id_player=Player.id_player JOIN Cards ON Has.id_card=Cards.id_card WHERE Has.id_player=${rows[0].id_player};`, function(err1,rows1,fields) {
                    var array = new Array(Math.floor(rows1.length/25)+1)

                    let counter = 0
                    console.log(`Inventory ${cat} for ${member.username}`)
                    for (let i = 0; i < Math.floor(rows1.length/25)+1; i++) {
                        var tmp = ""
                        for (let j = 0; j < 25; j++) {
                            if (counter < rows1.length) {
                            tmp += `\n<:Approuv:782353191328940073> ${rows1[counter].name_cards}`
                            counter++
                            }
                        }
                        array[i]=tmp
                    }
                    const embed = new MessageEmbed()
                        .setTitle(`**Inventaire de ${member.username}**`)
                        .setFooter({
                            text: `Yumeko à votre service !`
                        })
                        .setThumbnail(`https://cdn.discordapp.com/avatars/${member.id}/${member.avatar}.png?size=256`)
                        .setDescription(array[index])
                    if (array.length != 1)
                        interaction.reply({embeds:[embed], components:[pageButton(index, array.length)]})
                    else 
                        interaction.reply({embeds:[embed]})
                    const collector = interaction.channel.createMessageComponentCollector({});
                    collector.on('collect', async i => {
                        if (i.customId == "next" || i.customId == "previous") {
                            i.deferReply();
                            i.deleteReply();
                            if (i.customId == "next") {
                                console.log(array.length)
                                index++;
                                console.log(index)
                                embed.setDescription(array[index])
                                interaction.editReply({embeds:[embed], components:[pageButton(index, array.length-1)]})
                            }
                            if (i.customId == "previous") {
                                index--;
                                console.log(index)
                                embed.setDescription(array[index])
                                interaction.editReply({embeds:[embed], components:[pageButton(index, array.length-1)]})
                            }
                        }
                    })
                })
            })
        }
    },
};