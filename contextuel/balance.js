const { MessageEmbed, Client, MessageAttachment } = require("discord.js");
const { ContextMenuCommandBuilder} = require('@discordjs/builders')
const connection = require('../connectdb.js');

module.exports = {
    data: new ContextMenuCommandBuilder()
        .setName('Balance')
        .setType(2),
    /** 
     * @param {ContextMenuInteraction} interaction 
     * @param {Client} client
     */
    async execute(interaction, client) {
        //try 
            const file = new MessageAttachment(`./images/japoints.png`);
            const user = await interaction.guild.members.fetch(interaction.targetId);
            const checkup = `SELECT * FROM Player WHERE discord_id = ${interaction.targetId};`
            connection.query(checkup, function (err, rows, fields) {
                if (err) throw err;
                if (rows.length == 0) {
                    interaction.reply({ content: "Le joueur n'a pas été trouvé, il peut s'inscrire avec /register !"})
                } else {
                    const embed = new MessageEmbed()
                    .setTitle(`Compte de ${user.user.username}`)
                    .addField("JA Points :", `${rows[0].ja_points}`)
                    .setColor("#FFABD6")
                    .setFooter({ text: 'Yumeko à votre service !'})
                    .setThumbnail(`attachment://japoints.png`)
                    interaction.reply({ embeds: [embed], files: [file]}) 
                }
            });
    }
}