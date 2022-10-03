const {
    MessageActionRow,
    MessageEmbed,
    MessageAttachment,
    MessageButton
} = require('discord.js');
const connection = require('../../connectdb.js');

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
    PRICE, CHANNEL_CARTES
} = require("../../config.json")
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
        }
    }
    return rarity
}

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

function loot(i, client) {
    let channel = client.channels.cache.get(`${CHANNEL_CARTES}`); 
    member = i.member.user
    if (i.customId == "loot1" || i.customId == "loot2" || i.customId == "loot3" || i.customId == "loot4") {
        i.deferReply();
        i.deleteReply();
        rarity = getRarity(i)
        const checksql = `SELECT * FROM Player WHERE discord_id=${member.id}`
        connection.query(checksql, function (err, rows, field) {
            error = 0
            var ja = rows[0].ja_points
            if ((rows[0].ja_points - PRICE[crateId - 1]) < 0) {
                error = -1
                console.log(`Looting impossible for ${member.username}`)
                i.channel.send({
                    content: "Tu n'as pas assez de fonds."
                })
                return
            } else {
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
                        connection.query(`SELECT * FROM Cards join Rarity on Cards.id_rarity = Rarity.id_rarity join Category on Cards.id_category = Category.id_category WHERE id_card = ${rows[randomtab].id_card} ;`, function (err2, rows2, fields) {
                            if (err2) throw err2;
                            const file = new MessageAttachment(`${rows2[0].image_cards}`);
                            const embed = createEmbed(rows2, member)
                            card_value = rows2[0].price
                            if (error === 0) {
                                console.log(`Loot card ${rows2[0].id_card} with ${i.customId} for ${member.username}`)
                                channel.send({
                                    embeds: [embed],
                                    files: [file],
                                    ephemeral: false
                                })
                                return
                            } else {
                                console.log(`Double ${rows2[0].id_card} with ${i.customId} for ${member.username}`)
                                embed.setTitle(`${member.username}, tu as déjà ${rows2[0].name_cards}`)
                                channel.send({
                                    embeds: [embed],
                                    files: [file],
                                    content: `<@${member.id}>`,
                                    components: [createDouble(card_value)],
                                    ephemeral: false
                                })
                            }
                        })
                    })
                })
            }
        })
    }
    if ((i.customId === 'trade' || i.customId === 'reload') && i.message.content != `<@${i.member.id}>`) {
        i.deferReply()
        i.deleteReply()
        channel.send({
            content: `<@${i.member.id}> ce n'est pas ta carte !`
        })
        return
    }
    //check wich user calls it 
    if (i.customId === 'trade') {
        card_value = parseInt(i.message.embeds[0].fields[1].value)
        connection.query(`SELECT * FROM Player WHERE discord_id=${member.id}`, function (err, rows1 , fields) {
            if (err) throw err;
            value = rows1[0].ja_points
            var editsql = `UPDATE Player SET ja_points=${(value+Math.floor(card_value/2))} WHERE discord_id=${member.id};`
            connection.query(editsql, function (err, rows, fields) {
                if (err) throw err;
            })
            channel.send({
                content: `<@${member.id}> Tu as maintenant : ${(value+Math.floor(card_value/2))} <:japoints:972907566579458058>`,
                embeds: [],
                files: [],
                components: []
            });;
            i.deferReply()
            i.deleteReply()
            i.message.delete()
            console.log(`Trade for ${member.username}`)
        })
    } else if (i.customId === "reload") {
        let test = {
            customId: "loot2"
        }
        rarity = getRarity(test)
        console.log(`Reload for ${member.username}`)
        var getRarityCard = `SELECT * FROM Cards join Player on Player.discord_id=${member.id} WHERE id_rarity=${rarity};`
        connection.query(getRarityCard, function (err, rows, fields) {
            error = 0
            randomtab = random(0, rows.length - 1)
            var insert = `INSERT INTO Has (id_player, id_card) VALUES (${rows[randomtab].id_player}, ${rows[randomtab].id_card});`
            connection.query(insert, function (err3, rows3, fields) {
                if (err3) {
                    if (err3.code === "ER_DUP_ENTRY") {
                        error = 1
                    }
                }
                connection.query(`SELECT * FROM Cards join Rarity on Cards.id_rarity = Rarity.id_rarity join Category on Cards.id_category = Category.id_category WHERE id_card = ${rows[randomtab].id_card} ;`, function (err4, rows4, fields) {
                    if (error === 0) {
                        console.log(`Loot insert double card ${rows4[0].id_card} with lootbox ${i.customId} for ${member.username}`)
                        const file = new MessageAttachment(`${rows4[0].image_cards}`);
                        const embed = createEmbed(rows4, member)
                        channel.send({
                            embeds: [embed],
                            files: [file],
                            ephemeral: false
                        })
                    } else {
                        channel.send({
                            content: `${member.username}, tu as déjà ${rows4[0].name_cards}`,
                            ephemeral: false
                        })
                    }
                })
            })
        })
        i.deferReply()
        i.deleteReply()
        i.message.delete()
    }
}

module.exports = {
    loot
}