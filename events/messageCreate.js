// Quand un message est créé
const {
    MessageEmbed,
    MessageActionRow,
    MessageButton,
    MessageSelectMenu,
    Message
} = require('discord.js');
const {
    help
} = require('../commands/command_script/helpscript');
const connection = require('../connectdb.js');

//TODO UNIQUEMENT LE PREMIER DES MULTIJOUEURS SE FAIT

/**
 * 
 * @param {Message} message Discord message recieved when id = kotoba
 */
async function kotoba(message) {
    for (let embed of message.embeds) {
        if (embed.title != null && embed.title.includes("Quiz Ended")) {
            console.log("QUIZ")
            for (let field of embed.fields) {
                if (field.name != null && field.name === "Final Scores") {
                    let firstGet = field.value.split('\n');
                    let secondGet = new Array(firstGet.length);
                    for (i = 0; i < firstGet.length; i++) {
                        firstGet[i] = firstGet[i].replace('<', "");
                        firstGet[i] = firstGet[i].replace('>', "");
                        firstGet[i] = firstGet[i].replace('@', "");
                        secondGet[i] = firstGet[i].split(' ')
                        player = firstGet[i].split(' ')[0]
                        value = firstGet[i].split(' ')[2]
                        await getQuery(player, value)
                    }
                }
            }
        }
    }
}

/**
 * 
 * @param {player} player Player to get 
 * @param {point} value Value of the point added to player
 * @returns 
 */
function getQuery(player, value) {
    return new Promise((resolve, reject) => {
        newvalue = 0;
        connection.query(`SELECT * FROM Player WHERE discord_id="${player}";`, function (err, rows, fields) {
            if (err) throw err;
            if (rows.length == 0) {
                console.log(rows.length)
                resolve()
                return
            }
            newvalue = parseInt(rows[0].ja_points) + parseInt(value)
            console.log(rows[0].stringed_name + " got " + value + " points, old value is " + rows[0].ja_points + ", new value is " + newvalue)
            connection.query(`UPDATE Player SET ja_points=${parseInt(newvalue)} WHERE discord_id="${player}";`, function (err1, rows1, fields1) {})
            resolve(rows);
        })
    });
}

module.exports = {
    name: 'messageCreate',
    once: false,
    execute(message) {
        if (message.author.id == "251239170058616833") {
            kotoba(message)
        }
        if (message.content.startsWith("a?")) {
            const helpopt = message.content.split('?')
            if (parseInt(helpopt[1]) > 0 && parseInt(helpopt[1]) < 20) {
                help(message, helpopt)
            }
        }
    }
};