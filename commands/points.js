const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageAttachment, MessageEmbed } = require('discord.js')
const connection = require('../connectdb.js');
var status = 0



module.exports = {
    data: new SlashCommandBuilder()
        .setName('points')
        .setDescription('Ajoute, Retire ou modifie tes points')
        .addMentionableOption(option => 
            option.setName('joueur')
            .setDescription('Le joueur que tu souhaites !')
            .setRequired(true))
        .addStringOption(option =>
            option.setName('edit')
            .setDescription('add/remove/edit')
            .setRequired(true))
        .addIntegerOption(option => 
            option.setName('quantite')
            .setDescription('La quantité à modifier')
            .setRequired(true)),
    async execute(interaction) {
        const user = interaction.options.getMentionable('joueur');
        const edit = interaction.options.getString('edit');
        const qty = interaction.options.getInteger('quantite');
        var value = 0

        const hasRole = interaction.member.roles.cache.some(r => r.id === "908059700640251918")
        console.log("hasrole " + hasRole)
        if (hasRole ==true) {
            const checkup = `SELECT * FROM Player WHERE discord_id = ${user.user.id};`
            connection.query(checkup, function (err, rows, fields) {
                if (err) throw err;
                if (rows.length == 0) {
                    interaction.reply({ content: "Le joueur n'a pas été trouvé, il peut s'inscrire avec /register !"})
                } else {
                    value = rows[0].ja_points
                    console.log(value + " " + qty)
                    switch(edit){
                        case 'add':
                            value+=qty
                            break;
                        case 'remove':
                            if ((value-qty) < 0)
                                interaction.reply({content: "Impossible son solde est trop bas !"});
                            else
                                value-=qty
                            break;
                        case 'edit':
                            value=qty
                            break   
                        default:
                            break;
                    }
                    status=1
                    console.log("test" + edit + "aaaa" + value + "status" + status)
                }
                console.log("Status" + status)
                if (status === 1) {
                    var editsql = `UPDATE Player SET ja_points=${value} WHERE discord_id=${user.user.id};`
                    console.log(editsql)
                    connection.query(editsql, function (err, rows2, fields) {
                        if (err) throw err;
                    })
                    connection.query(checkup, function (err, rows3, fields) {
                        if (err) throw err;
                        const embed = new MessageEmbed()
                            .setTitle("Solde mis à jour")
                            .setColor("#FFABD6")
                            .addField('Joueur :',`${rows3[0].name_player}`)
                            .addField('Points :',`${rows3[0].ja_points}`)
                            .setFooter('Yumeko à votre service !')
                        interaction.reply({ embeds: [embed]})
                    })
                }
            })
        } else
            interaction.reply({ content: "Pas la perm abruti"});
    }
};