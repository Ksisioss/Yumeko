const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageActionRow, MessageAttachment, MessageEmbed} = require('discord.js');
const connection = require('../../connectdb.js');

module.exports = {
    data: new SlashCommandBuilder()
    .setName('explain')
    .setDescription("Affiche les details d'une carte."),
    async execute(interaction) {
            const file = new MessageAttachment(`./images/CARDS/STAFF/KsisiosSTAFF.jpg`);
            const file2 = new MessageAttachment(`./images/CARDS/category.jpg`);
            const embed = new MessageEmbed()
            .setTitle(`Qui est Yumeko ?`)
            .setDescription("Yumeko est un bot discord développé par <@243093183649677324> pour Japan Academia. Ce bot vous permet de gagner des points pour acheter des lootbox et collectionner des cartes telles que dans ce message.")
            .setImage(`attachment://KsisiosSTAFF.jpg`)
            .addField('ATTENTION', 'Il s\'agit de la version 1.0, par la suite nous prévoyons d\'ajouter de nouvelles choses.')
            .setFooter({ text: 'Yumeko à votre service !'})
            const embed1 = new MessageEmbed()
            .setTitle('Commencement :')
            .setDescription("Avant de pouvoir faire quoi que ce soit, tu dois effectuer la commande /register. \nSi tu as un problème demande à un membre du <@&908059700640251918>.")
            .setFooter({ text: 'Yumeko à votre service !'})
            const embed2 = new MessageEmbed()
            .setTitle('Obtenir des JA points <:japoints:972907566579458058> :')
            .setDescription("Pour l'instant, le seul moyen automatique d'obtenir des points est faire des quiz avec Kotoba dans les channels <#749621300342947963> & <#909560633555583016>. Les points sont ajoutés automatiquement lorsque le quiz est terminé.\nMalgré tout, des points peuvent être ajoutés lors d'event, de cours par des administrateurs.")
            .addField('ATTENTION', 'De nouvelles façons d\'obtenir des JA points sont en préparation (participation aux cours, events, qcm, validation de leçon).')
            .setFooter({ text: 'Yumeko à votre service !'})
            const embed3 = new MessageEmbed()
            .setTitle('Voir son profil :')
            .setDescription("Vous pouvez regarder votre profil ou n'importe quel autre avec la commande /search [mention du joueur]. Cela vous permettra de voir le profil de qui vous souhaitez. Dans les prochaines versions vous pourrez voir le classement de chacun et sûrement d'autres informations utiles.")
            .setFooter({ text: 'Yumeko à votre service !'})
            const embed4 = new MessageEmbed()
            .setTitle('Utiliser ses JA points <:japoints:972907566579458058>')
            .setDescription("Pour utiliser vos points, rendez-vous dans le salon <#987839822330753034> et choisissez la Lootbox de votre choix en fonction de votre solde (/search) la carte sera générée et envoyée dans le channel <#987840073233989672>.\nA ce moment là, vous obtiendrez la carte. (Hors lors d'un double, ayant un système intuitif.)")
            .setFooter({ text: 'Yumeko à votre service !'})
            const embed5 = new MessageEmbed()
            .setTitle('Consulter son inventaire :')
            .setDescription("Vous pouvez de plus consulter les cartes acquises en utilisant la commande /inventory ([x] x définissant la catégorie)")
            .setImage(`attachment://category.jpg`)
            .setFooter({ text: 'Yumeko à votre service !'})
            const embed6 = new MessageEmbed()
            .setTitle('Plus d\'infos')
            .setDescription('Il vous est également possible en envoyant vos preuves dans <#944538170857496576> en prenant des photos de votre travail sous les 7 thèmes suivants : \n- L\’écriture \n- La grammaire \n- L\’expression orale \n- L\’expression écrite \n- La compréhension écrite \n- La compréhension orale \n\nSelon le niveau, vous gagnerez un certain nombre de points que le <@&908059700640251918> définira.')

            interaction.reply({ embeds: [embed, embed1, embed2, embed3, embed4, embed5, embed6], files: [file, file2], ephemeral:false}) 
    },
};