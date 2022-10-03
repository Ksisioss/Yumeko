// Quand un membre rejoint le serveur --> message
const {MessageEmbed} = require('discord.js')

module.exports = {
    name: 'guildMemberAdd',
    once: true,
    execute(member) {
        const channel = member.client.channels.cache.get("693115844292509788");
        //console.log(channel)
        const embed = new MessageEmbed()
            .setTitle(":tada: Un nouvel élève vient de nous rejoindre ! :tada:")
            .setDescription(`いらっしゃいませ・Bienvenue **${member}** dans **${member.guild.name}**.\nNous sommes désormais **${member.guild.memberCount}** !\n\n**La Japan Academia** te remercie **d'avoir rejoint**. Elle te propose des **cours**, des **activités** toutes liées au **Japon** et au **Japonais** ! Tu peux dès à présent **te lancer dans l'aventure !**\n\nN'hésite surtout pas à **parler** dans <#785187743385911296>, à te présenter dans <#714115609822232596> et pourquoi pas nous **rejoindre en vocal** !\n\nPour toutes lesinformations qu'il te faut (savoir comment fonctionne le serveur par exemple), je t'invite à faire a?help dans le salon <#714120073392160840>, tu auras toutes les informations que tu souhaites.\n\nBonne découverte, amuse-toi bien et surtout, Bon Apprentissage !`)
            .setColor("#F3C4CF")
            .setTimestamp()
        channel.send({embeds:[embed]})
        }
};