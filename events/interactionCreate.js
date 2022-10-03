//const loot = require('../commands/loot');
const {
    client
} = require("..");
const {
    loot
} = require("../commands/command_script/lootscript")

module.exports = {
    name: 'interactionCreate',
    once: false,
    async execute(interaction) {
        //console.log(interaction.customId)
        if (interaction.isContextMenu()) {
            const cmd = interaction.client.contextCommands.get(interaction.commandName);
            if (!cmd) return;
            try {
                await cmd.execute(interaction, client);
            } catch (error) {
                if (error) console.error(error);
                await interaction.reply({
                    content: 'Une erreur est apparue',
                    ephemeral: true
                });
            }
        }
        if (interaction.isButton()) {
            loot(interaction, client)
        }
        if (!interaction.isCommand()) return;
        const command = interaction.client.commands.get(interaction.commandName);
        if (!command) return;
        try {
            await command.execute(interaction, interaction.client);
        } catch (error) {
            if (error) console.error(error);
            await interaction.reply({
                content: 'Une erreur est apparue',
                ephemeral: true
            });
        }
    }
}