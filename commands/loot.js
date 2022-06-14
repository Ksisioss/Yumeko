const {
    SlashCommandBuilder
} = require('@discordjs/builders');
const {
    MessageActionRow,
    MessageSelectMenu,
    MessageEmbed,
    MessageAttachment,
    MessageButton
} = require('discord.js');
const connection = require('../connectdb.js');
const loot1 = {
    1: 75,
    2: 25
}
const loot2 = {
    1: 50,
    2: 35,
    3: 15
}
const loot3 = {
    1: 30,
    2: 40,
    3: 20,
    4: 10
}
const loot4 = {
    2: 40,
    3: 40,
    4: 20
}
const corres = {
    1: 'Commun',
    2: 'Rare',
    3: 'Epique',
    4: 'Legendaire'
}
const lootbox = {
    1: loot1,
    2: loot2,
    3: loot3,
    4: loot4
}
const lootbox1 = {
    1: 'loot1',
    2: 'loot2',
    3: 'loot3',
    4: 'loot4'
}
const {
    PRICE
} = require("../config.json")
var crateId = 0;

function random(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

function createEmbed(rows2, member) {
    const image = rows2[0].image_cards.split('/')
    const embed = new MessageEmbed()
        .setTitle(`${rows2[0].name_cards} reçu par ${member.username}!`)
        .setColor(`${rows2[0].color_category}`)
        .addField('Rareté :', `${rows2[0].name_rarity}`)
        .addField('Prix :', `${rows2[0].price}`)
        .addField('Catégorie :', `${rows2[0].name_category}`)
        .setImage(`attachment://${image[4]}`)
        .setFooter({
            text: 'Yumeko à votre service !'
        })
    return (embed)
}

function createDouble(card_value) {
    const row = new MessageActionRow()
        .addComponents(
            new MessageButton()
            .setCustomId('trade')
            .setLabel(`Récupère la moitié des points : ${ Math.floor(card_value/2)}`)
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
    return (row)
}

function getRarity(i) {
    crateId = 0
    var rarity = 0;
    for (var j in lootbox) {
        if (lootbox1[j] === i.customId) {
            crateId = j;
            rarity = generateRarity(lootbox[j])
            console.log("C'est EGAL" + lootbox1[i] + ' rarity :' + rarity);
        }
    }
    return rarity
}

var rare = 0
var epique = 0
var leg = 0

function generateRarity(loottable) {
    var result = random(0, 100)
    var value = 0;
    for (var i in loottable) {
        value += loottable[i]
        if (result <= value) {
            return (i)
        }
    }
}

module.exports = {
    data: new SlashCommandBuilder()
        .setName('loot')
        .setDescription("Choix de la lootbox à acheter."),
    async execute(interaction) {
        var member = interaction.member
        //console.log(member.id)
        const embed = new MessageEmbed()
            .setTitle(`**Lootbox**`)
            .setDescription(`**Commune :**
        Commun : 75 %, Rare : 25
        **Rare :**
        \        Commun : 50 %, Rare : 35%, Epique : 15
        **Épique :**
        \        Commun : 40 %, Rare : 30%, Epique : 20%, Légendaire : 10%
        
        **Légendaire :**
        \        Rare : 50 %, Epique : 30%, Légendaire : 20%
        `)
            .setFooter({
                text: `Yumeko à votre service !`
            })

        const row = new MessageActionRow()
            .addComponents(
                new MessageButton()
                .setCustomId('loot1')
                .setLabel(`Commune : ${PRICE[0]}`)
                .setStyle('SUCCESS')
                .setEmoji('<:japoints:972907566579458058>')
            )
            .addComponents(
                new MessageButton()
                .setCustomId('loot2')
                .setLabel(`Rare : ${PRICE[1]}`)
                .setStyle('SUCCESS')
                .setEmoji('<:japoints:972907566579458058>')
            )
            .addComponents(
                new MessageButton()
                .setCustomId('loot3')
                .setLabel(`Epique : ${PRICE[2]}`)
                .setStyle('SUCCESS')
                .setEmoji('<:japoints:972907566579458058>')
            )
            .addComponents(
                new MessageButton()
                .setCustomId('loot4')
                .setLabel(`Légendaire : ${PRICE[3]}`)
                .setStyle('SUCCESS')
                .setEmoji('<:japoints:972907566579458058>')
            );
        interaction.deferReply()
        interaction.deleteReply()
        interaction.channel.send({
            embeds: [embed],
            components: [row]
        })
        var rarity = 0;
        var error = 0;
        var randomtab = 0;
        var value = 0;
        var card_value = 0;
        var card;
        var member = interaction.member



        const collector = interaction.channel.createMessageComponentCollector({});
        collector.on('collect', async i => {
            if (i.customId == "loot1" || i.customId == "loot2" || i.customId == "loot3" || i.customId == "loot4") {
                member = i.member.user
                //console.log("MEMBER" + member)
                ///console.log(i.member.user)
                //TODO
                //Check if user has enough money.            
                i.deferReply();
                i.deleteReply();
                rarity = getRarity(i)
                console.log("rarity" + rarity)
                const checksql = `SELECT * FROM Player WHERE discord_id=${member.id}`
                connection.query(checksql, function (err, rows, field) {
                    error = 0
                    console.log(rows[0])
                    console.log(crateId)
                    var ja = rows[0].ja_points
                    if ((rows[0].ja_points - PRICE[crateId - 1]) < 0) {
                        error = -1
                        console.log("error 1 " + error)
                        i.channel.send({
                            content: "PAS LA THUNE"
                        })
                        return
                    } else {
                        console.log("error 2 " + error)
                        connection.query(`UPDATE Player SET ja_points=${(ja-PRICE[crateId-1])} WHERE discord_id=${member.id};`, function (err1, rows1, field1) {})
                        var getRarityCard = `SELECT * FROM Cards join Player on Player.discord_id = ${member.id} WHERE id_rarity = ${rarity}`
                        connection.query(getRarityCard, function (err, rows, fields) {
                            if (err) throw err;
                            randomtab = random(0, rows.length - 1)
                            value = rows[0].ja_points
                            var insert = `INSERT INTO Has (id_player, id_card) VALUES (${rows[randomtab].id_player}, ${rows[randomtab].id_card});`
                            connection.query(insert, function (err1, rows1, fields) {
                                if (err1) {
                                    if (err1.code === "ER_DUP_ENTRY") {
                                        error = 1
                                    }
                                }
                                console.log("error" + error)
                                connection.query(`SELECT * FROM Cards join Rarity on Cards.id_rarity = Rarity.id_rarity join Category on Cards.id_category = Category.id_category WHERE id_card = ${rows[randomtab].id_card} ;`, function (err2, rows2, fields) {
                                    if (err2) throw err2;
                                    const file = new MessageAttachment(`${rows2[0].image_cards}`);
                                    const embed = createEmbed(rows2, member)
                                    card_value = rows2[0].price
                                    if (error === 0)
                                        i.channel.send({
                                            embeds: [embed],
                                            files: [file],
                                            ephemeral: false
                                        })
                                    else {
                                        embed.setTitle(`${member.username}, tu as déjà ${rows2[0].name_cards}`)
                                        i.channel.send({
                                            embeds: [embed],
                                            files: [file],
                                            components: [createDouble(card_value)],
                                            ephemeral: false
                                        })
                                    }
                                    const collector = interaction.channel.createMessageComponentCollector({
                                        time: 15000
                                    });
                                    collector.on('collect', async j => {
                                        if (j.customId === 'trade') {
                                            var editsql = `UPDATE Player SET ja_points=${(value+card_value)} WHERE discord_id=${member.id};`
                                            console.log("aaaaa" + editsql)
                                            connection.query(editsql, function (err, rows, fields) {
                                                if (err) throw err;
                                            })
                                            j.channel.send({
                                                content: `Tu as maintenant : ${(value+Math.floor(card_value/2))} <:japoints:972907566579458058>`,
                                                embeds: [],
                                                files: [],
                                                components: []
                                            });;
                                        } else if (j.customId === "reload") {
                                            error = 0
                                            randomtab = random(0, rows.length - 1)
                                            var insert = `INSERT INTO Has (id_player, id_card) VALUES (${rows[randomtab].id_player}, ${rows[randomtab].id_card});`
                                            connection.query(insert, function (err3, rows3, fields) {
                                                if (err3) {
                                                    console.log(err3.code)
                                                    if (err3.code === "ER_DUP_ENTRY") {
                                                        error = 1
                                                        console.log("error " + error)
                                                        console.log("CATCH DUP")
                                                    }
                                                }
                                                connection.query(`SELECT * FROM Cards join Rarity on Cards.id_rarity = Rarity.id_rarity join Category on Cards.id_category = Category.id_category WHERE id_card = ${rows[randomtab].id_card} ;`, function (err4, rows4, fields) {
                                                    if (error === 0) {
                                                        const file = new MessageAttachment(`${rows4[0].image_cards}`);
                                                        const embed = createEmbed(rows4, member)
                                                        i.channel.send({
                                                            embeds: [embed],
                                                            files: [file],
                                                            ephemeral: false
                                                        })
                                                    } else {
                                                        i.channel.send({
                                                            content: `${member.username}, tu as déjà ${rows4[0].name_cards}`,
                                                            ephemeral: false
                                                        })
                                                    }
                                                })
                                            })
                                        }
                                    })
                                })
                            })
                        })
                    }
                })
            }
        })
    }
}