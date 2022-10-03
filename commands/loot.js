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
const {PRICE, CHANNEL_LOOTBOX} = require('../config.json')

module.exports = {
    data: new SlashCommandBuilder()
        .setName('loot')
        .setDescription("Choix de la lootbox à acheter."),
    async execute(interaction, client) {
        /*if (interaction.channel.id != `${CHANNEL_LOOTBOX}`) {
            interaction.deferReply()
            interaction.deleteReply()
            interaction.channel.send({content:"Wrong channel"})
            return
        }*/
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

        **ATTENTION**
        Les cartes reçues sont dans le channel <#987840073233989672>.
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
        client.channels.cache.get(`${CHANNEL_LOOTBOX}`).send({
            embeds: [embed],
            components: [row]
        })
    }
}