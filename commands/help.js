const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageActionRow, MessageButton, MessageEmbed} = require('discord.js');

// Application du système de valeurs et de boutons de confirmation ou annulation
module.exports = {
    data: new SlashCommandBuilder()
        .setName('help')
        .setDescription("Tu es perdu ?")
        .addStringOption(option =>
            option.setName('choix')
                .setDescription('Quel aide')
                .setRequired(false)),
        async execute(interaction) {
            const row = new MessageActionRow()
                .addComponents(
                    new MessageButton()
                        .setCustomId('CONFIRMER')
                        .setLabel('CONFIRMER')
                        .setStyle('PRIMARY')
                        .setEmoji(''),
                )
            const choix = interaction.options.getString('choix');
            if (choix && choix < 16) {
                const embed = new MessageEmbed()
                    .setTitle(`Testing`)
                    .setDescription(`This is the description`)
                    .setTimestamp();
                    
                await interaction.reply({ embeds: [embed] });
                
            }
        },
};