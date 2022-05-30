const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageActionRow, MessageAttachment, MessageEmbed} = require('discord.js');
const connection = require('../connectdb.js');

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

function delay(time) {
    return new Promise(resolve => setTimeout(resolve, time));
}

module.exports = {
    data: new SlashCommandBuilder()
    .setName('all')
    .setDescription("Affiche les details d'une carte."),
    async execute(interaction) {
        console.log("allllllll")
        const fullsql = `SELECT * FROM Cards join Rarity on Cards.id_rarity = Rarity.id_rarity join Category on Cards.id_category = Category.id_category;`
        connection.query(fullsql, function (err, rows, fields) {
            console.log(rows[0])
            if (err) throw err;
            for (let x = 0; x < rows.length; x++) {
                console.log("x :" + x)
                const file = new MessageAttachment(`${rows[x].image_cards}`);
                const image = rows[x].image_cards.split('/')
                const embed = new MessageEmbed()
                .setTitle(`${rows[x].name_cards}`)
                .setColor(`${rows[x].color_category}`)
                .setImage(`attachment://${image[4]}`)
                .setFooter({ text: `Yumeko à votre service !             ${x}/${rows.length}`})
                interaction.channel.send({ embeds: [embed], files: [file], ephemeral:false})
            }
        })
    },
};