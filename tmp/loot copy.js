const { SlashCommandBuilder } = require('@discordjs/builders');
const {  MessageActionRow, MessageSelectMenu, MessageEmbed, MessageAttachment, MessageButton} = require('discord.js');
const connection = require('../connectdb.js');
const loot1 = {1:75, 2:25}
const loot2 = {1:50, 2:35, 3:15}
const loot3 = {1:30, 2:40, 3:20, 4:10}
const loot4 = {2:40, 3:40, 4:20}
const corres = {1:'Commun', 2:'Rare', 3:'Epique', 4:'Legendaire'}
const lootbox ={1:loot1, 2:loot2, 3:loot3, 4:loot4}
const lootbox1 ={1:'loot1', 2:'loot2', 3:'loot3', 4:'loot4'}

function random(min, max)
{
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

var rare = 0
var epique = 0
var leg = 0
function generateRarity(loottable) {
    var result = random(0, 100)
    var value = 0;
    for (var i in loottable) {
        value+=loottable[i]
        //console.log(result + " rareté :" +value);
        if (result <= value) {
            //console.log("TROUVE :" + i + corres[i] + "   " + result + " rareté :" +value)
            /*if (i == 2)
            rare++
            if (i == 3)
            epique++
            if (i ==4)
            leg++*/
            return (i)
        }
    }
}
/*
for (var i = 0; i < 100; i++) {
    rare = 0
    epique = 0
    leg = 0
    for (var j = 0; j < 100; j++) {
        generateRarity(loot4)
    }
    console.log('rare ' + rare + " epique " + epique + ' leg ' + leg)
}*/

/*
TODO
Relancer la lootbox si l'user a déjà la carte.
*/         

const row = new MessageActionRow()
                .addComponents(
                    new MessageSelectMenu()
                    .setCustomId('lootStore')
                    .setPlaceholder('Choisis la lootbox à acheter (prix en ja_points, /inv)')
                    .addOptions([
                        {
                            label: 'Lootbox Commune, Prix : {x} ja_points',
                            description: 'Commun : 75 %, Rare : 25%',
                            value: 'loot1',
                        },
                        {
                            label: 'Lootbox Rare, Prix : {x} ja_points',
                            description: 'Commun : 50 %, Rare : 35%, Epique : 15%',
                            value: 'loot2',
                        },
                        {
                            label: 'Lootbox Epique, Prix : {x} ja_points',
                            description: 'Commun : 40 %, Rare : 30%, Epique : 20%, Légendaire : 10%',
                            value: 'loot3',
                        },
                        {
                            label: 'Lootbox Légendaire, Prix : {x} ja_points',
                            description: 'Rare : 50 %, Epique : 30%, Légendaire : 20%',
                            value: 'loot4',
                        },
                    ]),
                    );
module.exports = row

function doubleCard(card_value, member, rarity, interaction){
    connection.query(`SELECT * FROM Cards join Rarity on Cards.id_rarity = Rarity.id_rarity join Category on Cards.id_category = Category.id_category WHERE id_card = ${rarity} ;`, function (err2, rows2, fields) {
        if (err2) throw err2;
        card_value =  Math.floor(101/2)
        console.log("CARD VALUE" + card_value)
        const file = new MessageAttachment(`${rows2[0].image_cards}`);
        const image = rows2[0].image_cards.split('/')
        const embed = new MessageEmbed()
        .setTitle(`${member.user.username}, tu as déjà ${rows2[0].name_cards}`)
        .setColor(`${rows2[0].color_category}`)
        .addField('Rareté :',`${rows2[0].name_rarity}`)
        .addField('Prix :',`${rows2[0].price}`)
        .setImage(`attachment://${image[4]}`)
        .setFooter({ text: 'Yumeko à votre service !'})
        const row = new MessageActionRow()
        .addComponents(
            new MessageButton()
            .setCustomId('trade')
            .setLabel(`Récupère la moitié des points : ${card_value}`)
            .setStyle('SUCCESS')
            .setEmoji('<:japoints:972907566579458058>'),
            )
            .addComponents(
                new MessageButton()
                .setCustomId('reload')
                .setLabel('Relance une fois')
                .setStyle('PRIMARY')
                .setEmoji('🔁'),
                );
                interaction.reply({embeds: [embed], components:[row], files: [file]})
                console.log("3 "+ card_value)
                return(card_value)
            });
        }
        
        module.exports = {
            data: new SlashCommandBuilder()
            .setName('loot')
            .setDescription("Choix de la lootbox à acheter."),
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
                    .setCustomId('lootStore')
                    .setPlaceholder('Choisis la lootbox à acheter (prix en ja_points, /inv)')
                    .addOptions([
                        {
                            label: 'Lootbox Commune, Prix : {x} ja_points',
                            description: 'Commun : 75 %, Rare : 25%',
                            value: 'loot1',
                        },
                        {
                            label: 'Lootbox Rare, Prix : {x} ja_points',
                            description: 'Commun : 50 %, Rare : 35%, Epique : 15%',
                            value: 'loot2',
                        },
                        {
                            label: 'Lootbox Epique, Prix : {x} ja_points',
                            description: 'Commun : 40 %, Rare : 30%, Epique : 20%, Légendaire : 10%',
                            value: 'loot3',
                        },
                        {
                            label: 'Lootbox Légendaire, Prix : {x} ja_points',
                            description: 'Rare : 50 %, Epique : 30%, Légendaire : 20%',
                            value: 'loot4',
                        },
                    ]),
                    );
                    interaction.reply({components : [row]})    
                },
                async drop(interaction) {
                    var rarity;
                    var error = 0;
                    var randomtab = 0;
                    var value = 0;
                    var card_value = 0;
                    var member = interaction.member
                    //console.log(member)
                    interaction.deleteReply()
                    interaction.channel.send({components : [row]})    
                    for (var i in lootbox){
                        if(lootbox1[i] === interaction.values[0]){
                            rarity = generateRarity(lootbox[i])
                            //console.log("C'est EGAL" + lootbox1[i] + ' rarity :' + rarity);
                        }
                    }
                    console.log(rarity, member.id)
                    const checkup = `SELECT * FROM Cards join Player on Player.discord_id = ${member.id} WHERE id_rarity = ${rarity};`
                    connection.query(checkup, function (err, rows, fields) {
                        console.log(rows)
                        if (err) throw err;
                        randomtab = random(0, rows.length-1)
                        value = rows[0].ja_points
                        console.log("JA" + value)
                        
                        rarity = rows[randomtab].id_card
                        //var insert = `INSERT INTO Has (id_player, id_card) VALUES (${rows[randomtab].id_player}, ${rows[randomtab].id_card});`
                        var insert = `INSERT INTO Has (id_player, id_card) VALUES (3,843);`
                        connection.query(insert, function (err1, rows1, fields) {
                            if (err1) {
                                console.log(err1.code)
                                if (err1.code === "ER_DUP_ENTRY")
                                error = 1
                                console.log("CATCH DUP")
                            };
                            if (error == 0) {
                                /*interaction.deferReply()
                                interaction.deleteReply()*/
                                connection.query(`SELECT * FROM Cards join Rarity on Cards.id_rarity = Rarity.id_rarity join Category on Cards.id_category = Category.id_category WHERE id_card = ${rarity} ;`, function (err2, rows2, fields) {
                                    if (err2) throw err2;
                                    const file = new MessageAttachment(`${rows2[0].image_cards}`);
                                    const image = rows2[0].image_cards.split('/')
                                    const embed = new MessageEmbed()
                                    .setTitle(`${rows2[0].name_cards} reçu par ${member.user.username}!`)
                                    .setColor(`${rows2[0].color_category}`)
                                    .addField('Rareté :',`${rows2[0].name_rarity}`)
                                    .addField('Prix :',`${rows2[0].price}`)
                                    .addField('Catégorie :',`${rows2[0].name_category}`)
                                    .setImage(`attachment://${image[4]}`)
                                    .setFooter({ text: 'Yumeko à votre service !'})
                                    interaction.channel.send({ embeds: [embed], files: [file], ephemeral:false})
                                    
                                });
                            } else {
                                console.log("1 " +card_value)
                                card_value = doubleCard(card_value, member, rarity, interaction).parseInt()
                                console.log("2 " +card_value)
                            }
                        })
                    });   
                    const collector = interaction.channel.createMessageComponentCollector({ time: 15000 });
                    collector.on('collect', async i => {
                        if (i.customId === 'trade') {
                            var editsql = `UPDATE Player SET ja_points=${(value+card_value)} WHERE discord_id=${member.id};`
                            console.log("aaaaa" + editsql)
                            connection.query(editsql, function (err, rows, fields) {
                                if (err) throw err;
                            })
                            interaction.editReply({ content: `Tu as maintenant : ${(value+card_value)} <:japoints:972907566579458058>`, embeds: [], files: [], components: []});;
                        } else if (i.customId === "reload") {
                        }
                    })
                }
            };
            
            
