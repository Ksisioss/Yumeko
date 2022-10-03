const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageAttachment, MessageEmbed } = require('discord.js')
const connection = require('../../connectdb.js');
const {client} = require('../../index.js')


module.exports = {
    data: new SlashCommandBuilder()
        .setName('dc')
        .setDescription('disconnect'),
    async execute(interaction) {
        interaction.reply({ content: "Disconnecting Yumeko..."});
        client.destroy();
    }
};