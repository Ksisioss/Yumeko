
#Points

La liste des commandes sur les points et leur code pour une backup et plus de commentaires

- Daily
  La commande daily se reset dans la BDD à minuit tous les soirs à minuits via un boolean.
```javascript
const { SlashCommandBuilder } = require('@discordjs/builders');
const connection = require('../connectdb.js');
const schedule = require('node-schedule');

function random(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

const job = schedule.scheduleJob('0 0 * * *', function(){
    console.log('The answer to life, the universe, and everything!');
    const sql2 = `UPDATE Player SET daily = FALSE`;
    connection.query(sql2, function (err, rows1, fields) {
        if (err) throw err;
    });
});

module.exports = {
    data: new SlashCommandBuilder()
        .setName('daily')
        .setDescription('Récupère tes ja_points quotidiens'),
        async execute(interaction) {
            var member = interaction.member
            var value = random(25, 75)
            const checkup = `SELECT * FROM Player WHERE discord_id = ${member.id};`
            const sql = `UPDATE Player SET ja_points = ja_points + ${value} , daily=TRUE WHERE discord_id = ${member.id}`;
            connection.query(checkup, function (err, rows1, fields) {
                if (err) throw err;
                if (rows1.length == 0) {
                    interaction.reply({ content: "Tu n'as pas été trouvé, tu peux t'inscrire avec /register !"})
                } else {
                    if (rows1[0].daily == true) {
                        interaction.reply({ content: "Tu as déjà utilisé la commande aujourd'hui. Attends demain !"})
                    } else
                    connection.query(sql, function (err, rows, fields) {
                        console.log(`Daily by ${member.user.username}`)
                        interaction.reply({ content: `${value} points ajoutés. Solde actuel ${rows1[0].ja_points + value}`}) 
                    if (err) throw err;
                });
                }
            });
        }
};
```
- Add/Edit/Remove
  Pouvoir modifier les points d'une personne qui est mentionnée par la commande
  ```javascript
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
        // Récupération des différents paramètres
        const user = interaction.options.getMentionable('joueur');
        const edit = interaction.options.getString('edit');
        const qty = interaction.options.getInteger('quantite');
        var value = 0

        // Vérification du Role NEKO THIBAULT
        const hasRole = interaction.member.roles.cache.some(r => r.id === "958718586699001926")
        if (hasRole ==true) {
            // Vérification si le joueur existe
            const checkup = `SELECT * FROM Player WHERE discord_id = ${user.user.id};`
            connection.query(checkup, function (err, rows, fields) {
                if (err) throw err;
                if (rows.length == 0) {
                    interaction.reply({ content: "Le joueur n'a pas été trouvé, il peut s'inscrire avec /register !"})
                } else {
                    value = rows[0].ja_points
                    // Prépare la nouvelle valeur
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
                }
                // Ajout des points dans la base de donné et affichage
                if (status === 1) {
                    var editsql = `UPDATE Player SET ja_points=${value} WHERE discord_id=${user.user.id};`
                    console.log(`Points ${edit} with ${qty} for ${user.user.username} by ${interaction.member.user.username}`)
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
                            .setFooter({ text: 'Yumeko à votre service !'})
                        interaction.reply({ embeds: [embed]})
                    })
                }
            })
        } else {
            // La personne ne possède pas le role
            console.log(`Try using points on ${user.user.username} by ${interaction.member.user.username}`)
            interaction.reply({ content: "Tu n'as pas la permission d'utiliser cette commande."})
            return
        }
    }
};
```
