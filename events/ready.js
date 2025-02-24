const { Routes } = require('discord-api-types/v9');
const { REST } = require('@discordjs/rest');
const package = require('../package.json');
const {TOKEN, GUILD_ID, NICK, ON, OFF, ALL} = require('../config.json');
const { MessageEmbed, Interaction } = require('discord.js');
// const connection = require('../connectdb.js');
const {client} = require('../index.js')

module.exports = {
    name: 'ready',
    once: true,
    async execute(client, commands) {
    console.log(`

                                                                                                                        
    YYYYYYY       YYYYYYY                                                             kkkkkkkk                          
    Y:::::Y       Y:::::Y                                                             k::::::k                          
    Y:::::Y       Y:::::Y                                                             k::::::k                          
    Y::::::Y     Y::::::Y                                                             k::::::k                          
    YYY:::::Y   Y:::::YYYuuuuuu    uuuuuu     mmmmmmm    mmmmmmm       eeeeeeeeeeee    k:::::k    kkkkkkk ooooooooooo   
       Y:::::Y Y:::::Y   u::::u    u::::u   mm:::::::m  m:::::::mm   ee::::::::::::ee  k:::::k   k:::::koo:::::::::::oo 
        Y:::::Y:::::Y    u::::u    u::::u  m::::::::::mm::::::::::m e::::::eeeee:::::eek:::::k  k:::::ko:::::::::::::::o
         Y:::::::::Y     u::::u    u::::u  m::::::::::::::::::::::me::::::e     e:::::ek:::::k k:::::k o:::::ooooo:::::o
          Y:::::::Y      u::::u    u::::u  m:::::mmm::::::mmm:::::me:::::::eeeee::::::ek::::::k:::::k  o::::o     o::::o
           Y:::::Y       u::::u    u::::u  m::::m   m::::m   m::::me:::::::::::::::::e k:::::::::::k   o::::o     o::::o
           Y:::::Y       u::::u    u::::u  m::::m   m::::m   m::::me::::::eeeeeeeeeee  k:::::::::::k   o::::o     o::::o
           Y:::::Y       u:::::uuuu:::::u  m::::m   m::::m   m::::me:::::::e           k::::::k:::::k  o::::o     o::::o
           Y:::::Y       u:::::::::::::::uum::::m   m::::m   m::::me::::::::e         k::::::k k:::::k o:::::ooooo:::::o
        YYYY:::::YYYY     u:::::::::::::::um::::m   m::::m   m::::m e::::::::eeeeeeee k::::::k  k:::::ko:::::::::::::::o
        Y:::::::::::Y      uu::::::::uu:::um::::m   m::::m   m::::m  ee:::::::::::::e k::::::k   k:::::koo:::::::::::oo 
        YYYYYYYYYYYYY        uuuuuuuu  uuuummmmmm   mmmmmm   mmmmmm    eeeeeeeeeeeeee kkkkkkkk    kkkkkkk ooooooooooo   
                                                                                                                        
    Description: ${package.description}         Author: ${package.author}       Version: ${package.version}
    ${NICK} est online !`)
    // Registering the commands in the client
    const CLIENT_ID = client.user.id;
    const rest = new REST({ version: '9' }).setToken(TOKEN);
    const timestamp = new Date();
    var time = timestamp.getDay() + "/" + timestamp.getMonth() + "/" + timestamp.getFullYear() + "  "+ timestamp.getHours() + ":" + timestamp.getMinutes() + ":" + timestamp.getSeconds();
    (async () => {
        try {
            await rest.put(
                Routes.applicationGuildCommands(CLIENT_ID, GUILD_ID), {
                    body: commands
                },
            );
            //console.log(commands)
            console.log('    Commandes enregistrées pour ' + (await client.guilds.fetch(GUILD_ID)).name);
        } catch (error) {
            if (error) console.error(error);
        }
    })();
    /*  
    rest.put(Routes.applicationGuildCommands(CLIENT_ID, GUILD_ID), { body: [] })
	.then(() => console.log('Successfully deleted all guild commands.'))
	.catch(console.error);*/
    // correctDB()
    // everyone()
    }
}

/**
 * This function will add all missing plyaer to database
 */
function everyone() {
    const guild = client.guilds.cache.find(guild =>guild.id == 473097441374109706)
    //console.log(guild.members);
    guild.members.fetch().then(members => {
        console.log(`List of members in ${guild.name}:`);
        members.forEach(member => {
            let status = 0
            const checkup = `SELECT COUNT(*) as count FROM Player WHERE discord_id = ${member.user.id};`
            const sql = `INSERT INTO Player (id_player, discord_id, name_player, placement, ja_points, daily, avatar) VALUES (NULL, "${member.user.id}", "<@${member.user.id}>", 0, 0, FALSE, "${member.user.avatar}")`;
            connection.query(checkup, function (_err, rows, _fields) {
                if (rows[0].count == 0) {
                    status=1;
                }
                if (status == 1) {
                    connection.query(sql, function (err, rows, _fields) {
                        console.log(`Registering ${member.user.username}`)
                    });
                } else {
                    console.log(`Déjà mis`)
                }
            });
        });
    }).catch(console.error);
}

/**
 * This function has the goal to correct any stuff in database
 */
function correctDB() {
    console.log("CORRECTION")
    connection.query("SELECT * FROM Player;", function (_err, rows, _fields) {
        for (let i = 0; i < rows.length; i++) {
            //console.log(rows[i])
            rows[i].name_player = rows[i].name_player.replace('<', '')
            rows[i].name_player = rows[i].name_player.replace('>', '')
            rows[i].name_player = rows[i].name_player.replace('@', '')
            var user = client.users.cache.find(user => user.id === rows[i].discord_id)
            //console.log(`USER : ${user}`)
            if (user) {
                //console.log(user.username)
                connection.query(`UPDATE Player SET username='${user.username}', avatar='${user.avatar}' WHERE discord_id=${rows[i].name_player};`, function (_err2, rows2, _fields) {
                    //console.log(_err2)
                })
            }
        }
    })
}