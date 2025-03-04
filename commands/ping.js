const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageAttachment, MessageEmbed } = require('discord.js')
const connection = require('../connectdb.js');
const {client} = require('../index.js')


module.exports = {
    data: new SlashCommandBuilder()
        .setName('ping')
        .setDescription('Replies with pong'),
    async execute(interaction) {
        interaction.reply({ content: `Ping : ${Math.round(client.ws.ping)} ms`})
        console.log(`Ping by ${interaction.member.user.username}`)
    }
};