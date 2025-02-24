const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageActionRow, MessageButton, MessageEmbed} = require('discord.js');
const connection = require('../connectdb.js');
const {ROLE_ADMIN} = require("../config.json")

// Enregistrement du joueur dans la BDD

module.exports = {
    data: new SlashCommandBuilder()
        .setName('register')
        .setDescription("Enregistre toi pour accéder au jeux")
        .addMentionableOption(option => 
            option.setName('joueur')
            .setDescription('Le joueur que tu souhaites !')
            .setRequired(false)),
    async execute(interaction) {
        // Vérification si admin add ou self add
        var status=0
        var member = interaction.member
        const hasRole = interaction.member.roles.cache.some(r => r.id === `${ROLE_ADMIN}`)
        if (hasRole ==true && interaction.options.getMentionable('joueur') != null)
            member = interaction.options.getMentionable('joueur')
        else if (hasRole == false && interaction.options.getMentionable('joueur') != null) {
            console.log(`Try registering ${member.user.username} by ${interaction.member.user.username}`)
            interaction.reply({ content: "Tu n'as pas la permission d'enregistrer quelqu'un d'autre."})
            return
        }
        
        // Vérification si le joueur est déjà présent et ajout
        const checkup = `SELECT COUNT(*) as count FROM Player WHERE discord_id = ${member.id};`
        const sql = `INSERT INTO Player (id_player, discord_id, name_player, placement, ja_points, daily, avatar) VALUES (NULL, "${member.id}", "<@${member.id}>", 0, 0, FALSE, ${member.avatar})`;
        connection.query(checkup, function (_err, rows, _fields) {
            if (rows[0].count == 0) {
                status=1;
            }
            if (status == 1) {
                console.log(`Registering ${member.user.username} by ${interaction.member.user.username}`)
                connection.query(sql, function (_err, _rows, _fields) {
                    interaction.reply({ content: "Utilisateur: " + member.displayName + " ajouté ! (test avec l'id : " + `<@${member.id}>)`});
                });
            } else {
                interaction.reply({content: "Tu es déjà enregistré !"})
            }
        });
    },
};