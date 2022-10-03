const {
    MessageEmbed
} = require('discord.js');
const connection = require('../../connectdb.js');

function help(i, option) {
    console.log(option)
    const fullsql = `SELECT * FROM Embeds WHERE command_embed='${option[1]}';`
            connection.query(fullsql, function (err, rows, fields) {
                if (rows.length == 0) {
                    i.channel.send({ content: "La commande est cassée. Contacte : <@243093183649677324>"})
                } else {
                    console.log(rows[0])
                    if (err) throw err;
                    let x = 0
                    const embed = new MessageEmbed()
                    .setTitle(`${rows[x].title_embed}`)
                    .setColor(`${rows[x].color}`)
                    .setDescription(`${rows[x].description_embed}`)
                    .setFooter({ text: 'Yumeko à votre service !'})
                    i.channel.send({ embeds: [embed], ephemeral:false}) 
                    console.log(`Help by ${i.member.user.username}`)
                }
            })
}

module.exports = {
    help
}