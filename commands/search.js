const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageActionRow, MessageButton, EmbedBuilder} = require('discord.js');
const connection = require('../connectdb.js');
const {ROLE_ADMIN, JA_POINTS} = require("../config.json")

module.exports = {
    data: new SlashCommandBuilder()
        .setName('search')
        .setDescription("Affiche les details d'un joueurs.")
        .addMentionableOption(option => 
            option.setName('joueur')
            .setDescription('Le joueur que tu souhaites !')
            .setRequired(true)),
        async execute(interaction) {
            const user = interaction.options.getMentionable('joueur');
            const checkup = `SELECT * FROM Player WHERE discord_id = ${user.user.id};`
            connection.query(checkup, function (err, rows, fields) {
                if (err) throw err;
                if (rows.length == 0) {
                    interaction.reply({ content: "Le joueur n'a pas été trouvé, il peut s'inscrire avec /register !"})
                } else {
                    const embed = new EmbedBuilder()
                    .setTitle("Fiche de joueur")
                    .setColor("#FFABD6")
                    .setDescription(`Voici la fiche récapitulative du joueur`)
                    .addFields(
                        {name:'Joueur :', value:`${rows[0].name_player}`},
                        {name:'Rang :', value:`${rows[0].placement}`},
                        {name:'Points :', value:`${rows[0].ja_points} <:japoints:${JA_POINTS}>`})
                    .setFooter({ text: 'Yumeko à votre service !'})
                    .setThumbnail(user.user.displayAvatarURL())
                    const hasRole = interaction.member.roles.cache.some(r => r.id === `${ROLE_ADMIN}`)
                    if (hasRole ==true) {
                        embed.addField('ID :', `${rows[0].id_player}`)
                    }
                    interaction.reply({ embeds: [embed]}) 
                }
                console.log(`Search ${user.user.username} by ${interaction.member.user.username}`)
            });
        },
    };