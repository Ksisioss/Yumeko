const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageAttachment, MessageEmbed } = require('discord.js')
const connection = require('../connectdb.js');
const {client} = require('../index.js')


module.exports = {
    data: new SlashCommandBuilder()
        .setName('ping')
        .setDescription('Replies with pong'),
    async execute(interaction) {
        const hasRole = interaction.member.roles.cache.some(r => r.id === "908059700640251918")
        if (hasRole ==true) {
            interaction.reply({ content: `Ping : ${Math.round(client.ws.ping)} ms`})
        } else {
            interaction.reply({ content: ":ping_pong: Pong ! (mais si tu demande à un admin il verra les ms)"});
        }
        console.log(`Ping by ${interaction.member.user.username}, admin : ${hasRole}`)
    }
};