const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageActionRow, MessageButton, MessageEmbed} = require('discord.js');
const connection = require('../connectdb.js');

// Application du système de valeurs et de boutons de confirmation ou annulation

module.exports = {
    data: new SlashCommandBuilder()
        .setName('register')
        .setDescription("Enregistre toi pour accéder au jeux")
        .addMentionableOption(option => 
            option.setName('joueur')
            .setDescription('Le joueur que tu souhaites !')
            .setRequired(false)),
    async execute(interaction) {
            var status=0
            var member = interaction.member
            const hasRole = interaction.member.roles.cache.some(r => r.id === "908059700640251918")
            if (hasRole ==true && interaction.options.getMentionable('joueur') != null)
                member = interaction.options.getMentionable('joueur')
            else if (hasRole == false && interaction.options.getMentionable('joueur') != null) {
                interaction.reply({ content: "Pas la perm abruti"})
                return
            }
            const checkup = `SELECT COUNT(*) as count FROM Player WHERE discord_id = ${member.id};`
            const sql = `INSERT INTO Player (id_player, discord_id, name_player, placement, ja_points, daily) VALUES (NULL, "${member.id}", "<@${member.id}>", 0, 0, FALSE)`;
            connection.query(checkup, function (_err, rows, _fields) {
                if (rows[0].count == 0) {
                    status=1;
                }
                if (status == 1) {
                    connection.query(sql, function (_err, _rows, _fields) {
                        interaction.reply({ content: "Utilisateur: " + member.displayName + " ajouté ! (test avec l'id : " + `<@${member.id}>)`});
                    });
                } else {
                    interaction.reply({content: "Tu es déjà enregistré !"})
                }
            });
    },
};