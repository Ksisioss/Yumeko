const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageActionRow, MessageButton} = require('discord.js');
const fs = require("fs");
const {client} = require('../index.js')
const config = require('../config.json');

module.exports = {
    data: new SlashCommandBuilder()
        .setName('command')
        .setDescription("Activer ou désactiver une commande")
        .addStringOption(option =>
            option.setName('commandname')
                .setDescription('Commande à éditer')
                .setRequired(true)),
    async execute(interaction) {
        const row = new MessageActionRow()
            .addComponents(
                new MessageButton()
                    .setCustomId('ACTIVER')
                    .setLabel('ACTIVER')
                    .setStyle('SUCCESS')
                    .setEmoji('<:Approuv:782353191328940073>'),
            )
            .addComponents(
                new MessageButton()
                    .setCustomId('DESACTIVER')
                    .setLabel('DESACTIVER')
                    .setStyle('DANGER')
                    .setEmoji('<:Denied:782353207372283925>'),
            );
        const string = interaction.options.getString('commandname');
        await interaction.reply({ content: `Commande à éditer : ${string}`, ephemeral: true, components: [row] });

        const collector = interaction.channel.createMessageComponentCollector({ time: 15000 });
        collector.on('collect', async i => {
            if (i.customId === 'ACTIVER') {
                if (config.OFF.some(item => item === string)) {
                    console.log(`Activating`)
                    var index = config.OFF.findIndex(function(item, i){
                        return item === string
                    });
                    console.log(index)
                    config.OFF.splice(index,1)
                    config.ON[Object.keys(config.ON).length] = string

                    var newPlayer2 = JSON.stringify(config);
                    fs.writeFile("config.json", newPlayer2, (err) => {
                        if (err) throw err;
                        console.log(`Activating ${string}`);
                    });
                }/*
                interaction.channel.send('Restarting...')
                    .then(async msg => {
                    client.destroy()
                    delay(1000).then(() => console.log("Restarting..."));
                    client.login(config.TOKEN)
                    })*/
                //interaction.editReply({content: "Resetting"})
                /*client.destroy()
                client.login(TOKEN);*/
            } else if (i.customId === "DESACTIVER") {
                if (config.ON.some(item => item === string)) {
                    console.log(`Desactivating`)
                    var index = config.ON.findIndex(function(item, i){
                        return item === string
                    });
                    config.ON.splice(index,1)
                    config.OFF[Object.keys(config.OFF).length] = string

                    var newPlayer2 = JSON.stringify(config);
                    fs.writeFile("config.json", newPlayer2, (err) => {
                    // Error checking
                        if (err) throw err;
                        console.log(`Activating ${string}`);
                    });
                }
                await interaction.followUp({ content: `remove`, ephemeral: true});
            }
            await interaction.editReply({ content: 'Commande terminée', components: []});;
        });

    },
};

            