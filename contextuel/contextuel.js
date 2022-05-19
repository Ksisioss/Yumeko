const { MessageEmbed, Client, Permissions } = require("discord.js");
const { ContextMenuCommandBuilder} = require('@discordjs/builders')
const connection = require('../connectdb.js');

module.exports = {
    data: new ContextMenuCommandBuilder()
        .setName('Collectionneur')
        .setType(2),
    /** 
     * @param {ContextMenuInteraction} interaction 
     * @param {Client} client
     */
    async execute(interaction, client) {
        //try {
            const user = await interaction.guild.members.fetch(interaction.targetId);
            const checkup = `SELECT * FROM Player WHERE discord_id = ${interaction.targetId};`
            connection.query(checkup, function (err, rows, fields) {
                if (err) throw err;
                if (rows.length == 0) {
                    interaction.reply({ content: "Le joueur n'a pas été trouvé, il peut s'inscrire avec /register !"})
                } else {
                    const embed = new MessageEmbed()
                    .setTitle("Fiche de joueur")
                    .setColor("#FFABD6")
                    .setDescription(`Voici la fiche récapitulative du joueur`)
                    .addField('Joueur :',`${rows[0].name_player}`)
                    .addField('Rang :',`${rows[0].placement}`)
                    .addField('Points :',`${rows[0].ja_points} <:japoints:972907566579458058>`)
                    .setFooter({ text: 'Yumeko à votre service !'})
                    .setThumbnail(user.user.displayAvatarURL())
                    interaction.reply({ embeds: [embed]}) 
                }
            });
        /*},
            const executer = client.guilds.cache.get(interaction.guildId).members.cache.get(interaction.user.id)
            if(executer.permissions.has(Permissions.FLAGS.ADMINISTRATOR)) {
            const target = await interaction.guild.members.fetch();
            const response = new MessageEmbed()
            .setAuthor({ name: `${target.user.tag}`, iconURL: target.user.avatarURL({ dynamic: true, size: 512 }) })
            .setColor('WHITE')
            .setThumbnail(target.user.avatarURL({ dynamic: true, size: 512 }))
            .addField("ID", `${target.user.id}`)
            .addField("ROLES", `${target.roles.cache.map(r => r).join(" ").replace('@everyone', ' ') || 'None'}`)
            .addField("Joined Server", `<t:${parseInt(target.joinedTimestamp / 1000)}:R>`, true)
            .addField("Joined Discord", `<t:${parseInt(target.user.createdTimestamp / 1000)}:R>`, true)

        interaction.reply({ embeds: [response], ephemeral: false, allowedMentions: { repliedUser: false } })
            } else {
                return interaction.reply({ content: ':x: You don\'t have `ADMINISTRATOR` permission', ephemeral : false })
            }
        
            */
        //}  catch (err) {
          //  if(err) 
            //return interaction.reply({ content: 'err', ephemeral: true })
        //}
    
    }
}