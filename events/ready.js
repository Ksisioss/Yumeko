const { Routes } = require('discord-api-types/v9');
const { REST } = require('@discordjs/rest');
const package = require('../package.json');
const {TOKEN, GUILD_ID, NICK, ON, OFF, ALL} = require('../config.json');
const { MessageEmbed, Interaction } = require('discord.js');
const connection = require('../connectdb.js');
const {client} = require('../index.js')


function correctDB() {
    console.log("CORRECTION")
    connection.query("SELECT * FROM Player;", function (_err, rows, _fields) {
        for (let i = 0; i < rows.length; i++) {
            //console.log(rows[i])
            rows[i].name_player = rows[i].name_player.replace('<', '')
            rows[i].name_player = rows[i].name_player.replace('>', '')
            rows[i].name_player = rows[i].name_player.replace('@', '')
            var user = client.users.cache.find(user => user.id === rows[i].discord_id)
            console.log(`USER : ${user}`)
            if (user) {
                console.log(user.username)
                connection.query(`UPDATE Player SET stringed_name='${user.username}', avatar='${user.avatar}' WHERE discord_id=${rows[i].name_player};`, function (_err2, rows2, _fields) {
                    console.log(_err2)
                })
            }
        }
    })
}

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
    //client.application.commands.set([])
    //console.log(client.guilds.fetch(GUILD_ID))
    const CLIENT_ID = client.user.id;
    const rest = new REST({ version: '9' }).setToken(TOKEN);
    const timestamp = new Date();
    var time = timestamp.getDay() + "/" + timestamp.getMonth() + "/" + timestamp.getFullYear() + "  "+ timestamp.getHours() + ":" + timestamp.getMinutes() + ":" + timestamp.getSeconds();
    var result = "";
    var embed = new MessageEmbed()
        .setTitle('Liste des commandes actives');
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
    correctDB()
    /*for (i = 0; i < ALL.length; i++) {
        if(ON.some(item => item === ALL[i]))
            result += "<:Approuv:782353191328940073> " + ALL[i] + " \n"
        if(OFF.some(item => item === ALL[i]))
            result += "<:Denied:782353207372283925> " + ALL[i] + " \n"
    }
    embed.setDescription(result);
    //client.user.setPresence({activities:[{name:"Aller au travail !"}], status:"online"})
    client.user.setActivity("Gautier est mon esclave");// WATCHING, LISTENING ou pas type mais url:lien twitch pour STREAMING  
    //client.user.setStatus('dnd'); //dnd, invisible, online, idle
    //client.channels.cache.get("959359946804310067").send({content: `[${time}] \nDémarrage`, embeds: [embed]});
    client.channels.cache.get("1018057731661381686").send({content:"/loot  "})
    */
    }
}