const {
    SlashCommandBuilder
} = require('@discordjs/builders');
const {
    MessageActionRow,
    MessageAttachment,
    MessageEmbed
} = require('discord.js');
const connection = require('../connectdb.js');
const {
    ROLE_ADMIN
} = require("../config.json")
/**Culture : Rose (50 cartes)
Symboles japonais : Rouge (50 cartes)
Origamis : Gris/Blanc : couleur papier (50 cartes)
Examens : Blanc (50 cartes)
Célébrités : jaune (50 cartes)
Personnages historiques : Bois (50 cartes)
Politique : Bleu foncé (50 cartes)
Géographie : vert foncé (50 cartes)
Créatures du folklore : Violet (50 cartes)
Environnement : Vert clair (50 cartes)
Lieux connus : Bleu clair (50 cartes)
Nourritures : Marron clair (50 cartes)
Outils : Gris foncé (50 cartes)
Transports : Noir (50 cartes)
Sports : Orange (50 cartes)
STAFF: Vert FLUO */

module.exports = {
    data: new SlashCommandBuilder()
        .setName('disp')
        .setDescription("Affiche les info de base d'une carte.")
        .addStringOption(option =>
            option.setName('carte')
            .setDescription('Le nom de la carte que tu veux !')
            .setRequired(true)),
    async execute(interaction) {
        const card = interaction.options.getString('carte');
        const fullsql = `SELECT * FROM Cards join Rarity on Cards.id_rarity = Rarity.id_rarity join Category on Cards.id_category = Category.id_category WHERE name_cards LIKE '${card}%' ;`
        connection.query(fullsql, function (err, rows, fields) {
            //console.log(rows[0])
            if (rows.length == 0) {
                console.log(`Disp FAIL by ${interaction.member.user.username} on ${card}`)
                interaction.channel.send({
                    content: "La carte n'as pas été trouvée."
                })
            } else {
                if (err) throw err;
                let x = 0
                const file = new MessageAttachment(`${rows[x].image_cards}`);
                const image = rows[x].image_cards.split('/')
                //console.log(image[4])
                const embed = new MessageEmbed()
                    .setTitle(`${rows[x].name_cards}`)
                    .setColor(`${rows[x].color_category}`)
                    .addField('Prix :', `${rows[x].price}`)
                    .addField('Rareté :', `${rows[x].name_rarity}`)
                    .addField('Demandé par :', `<@${interaction.user.id}>`)
                    .setImage(`attachment://${image[4]}`)
                    .setFooter({
                        text: `Yumeko à votre service !`
                    })
                const hasRole = interaction.member.roles.cache.some(r => r.id === `${ROLE_ADMIN}`)
                if (hasRole == true) {
                    embed.addField('ID :', `${rows[x].id_card}`)
                }
                interaction.channel.send({
                    embeds: [embed],
                    files: [file],
                    ephemeral: false
                })
                console.log(`Disp SUCCESS by ${interaction.member.user.username} on ${card}`)
            }
            interaction.deferReply()
            interaction.deleteReply()
        })
    },
};