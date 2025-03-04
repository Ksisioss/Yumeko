const { SlashCommandBuilder } = require('@discordjs/builders');
const { AttachmentBuilder, EmbedBuilder} = require('discord.js');
const connection = require('../connectdb.js');
const wait = require('node:timers/promises').setTimeout;

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
    .setName('inspect')
    .setDescription("Affiche tout les details d'une carte.")
    .addStringOption(option =>
        option.setName('carte')
        .setDescription('Le nom de la carte que tu veux !')
        .setRequired(true)),
    async execute(interaction) {
        const card = interaction.options.getString('carte');
        const fullsql = `SELECT * FROM Cards join Rarity on Cards.id_rarity = Rarity.id_rarity join Category on Cards.id_category = Category.id_category WHERE name_cards LIKE BINARY '%${card}%';`
        connection.query(fullsql, function (err, rows, fields) {
            if (rows.length == 0) {
                interaction.channel.send({ content: "La carte n'as pas été trouvée."})
                console.log(`INSPECT FAIL : ${card} : ${interaction.member.user.username} `)
            } else {
                if (err) throw err;
                let x = 0
                const file = new AttachmentBuilder(`${rows[x].image_cards}`);
                const image = rows[x].image_cards.split('/')
                const embed = new EmbedBuilder()
                .setTitle(`${rows[x].name_cards}`)
                .setColor(`${rows[x].color_category}`)
                .setDescription(`${rows[x].description_cards}`)
                .addFields(
                    {name: 'Prix :', value: `${rows[x].price}`},
                    {name: 'Rareté :', value: `${rows[x].name_rarity}`},
                    {name: 'Catégorie :', value: `${rows[x].name_category}`},
                    {name: 'Demandé par :', value: `<@${interaction.user.id}>`}
                )
                .setImage(`attachment://${image[4]}`)
                .setFooter({ text: 'Yumeko à votre service !'})
                interaction.channel.send({ embeds: [embed], files: [file], ephemeral:false}) 
                console.log(`INSPECT SUCCESS : ${rows[x].id_card} : ${interaction.member.user.username}`)
            }
        })
    },
};