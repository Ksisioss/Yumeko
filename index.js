/***
 *     __      __                                  __                 
 *    /  \    /  |                                /  |                
 *    $$  \  /$$/__    __  _____  ____    ______  $$ |   __   ______  
 *     $$  \/$$//  |  /  |/     \/    \  /      \ $$ |  /  | /      \ 
 *      $$  $$/ $$ |  $$ |$$$$$$ $$$$  |/$$$$$$  |$$ |_/$$/ /$$$$$$  |
 *       $$$$/  $$ |  $$ |$$ | $$ | $$ |$$    $$ |$$   $$<  $$ |  $$ |
 *        $$ |  $$ \__$$ |$$ | $$ | $$ |$$$$$$$$/ $$$$$$  \ $$ \__$$ |
 *        $$ |  $$    $$/ $$ | $$ | $$ |$$       |$$ | $$  |$$    $$/ 
 *        $$/    $$$$$$/  $$/  $$/  $$/  $$$$$$$/ $$/   $$/  $$$$$$/  
 *    TODO
 *  message de bienvenue sur une image 
 *  Bienvenue sur l’académie
 *  アカデミーへようこそ                                                            
 */
const fs = require('fs');
const { Client, Collection, Intents, Guild, MessageEmbed } = require('discord.js');
const { Routes } = require('discord-api-types/v9');
const { REST } = require('@discordjs/rest');

const {TOKEN, GUILD_ID, NICK, ON, OFF, ALL} = require('./config.json');
const package = require('./package.json');
const loot = require('./commands/loot');
const status = require('./commands/status');
// Création du client
const client = new Client({ intents: 32767 })
module.exports = {client}
const commands = [];
//const channel = client.channels.find(channel => channel.id == '959359946804310067')
console.clear()
// Creating a collection for commands in client
client.commands = new Collection();
client.contextCommands = new Collection();
const commandFiles = fs.readdirSync('./commands').filter(file => file.endsWith('.js'));
for (const file of commandFiles) {
    const command = require(`./commands/${file}`);
    console.log(ON.some(item => item === command.data.name)+ "   " + command.data.name)
    if (ON.some(item => item === command.data.name)) {
        commands.push(command.data.toJSON());
        client.commands.set(command.data.name, command);
        console.log(`    Done : ${command.data.name}`)
    }
}

const contextMenus = fs.readdirSync('./contextuel').filter(file => file.endsWith('.js'));
for (const file of contextMenus) {
    const menu = require(`./contextuel/${file}`);
    commands.push(menu.data.toJSON());
    client.contextCommands.set(menu.data.name, menu);
}

const eventFiles = fs.readdirSync('./events').filter(file => file.endsWith('.js'));

for (const file of eventFiles) {
    const event = require(`./events/${file}`);
    if (event.once) {
        client.once(event.name, (...args) => event.execute(...args));
    } else {
        client.on(event.name, (...args) => event.execute(...args));
    }
}

function delay(time) {
    return new Promise(resolve => setTimeout(resolve, time));
}


// When the client is ready, this only runs once
client.on('ready', () => {
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
    for (i = 0; i < ALL.length; i++) {
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

});

client.on('interactionCreate', async interaction => {
    console.log(interaction.commandName)
    if (interaction.isSelectMenu()) {
        if (interaction.customId === 'lootStore') {
            loot.drop(interaction)
	    }
        if (interaction.customId === 'statusChoice') {
            console.log(interaction.values[0])
            switch(interaction.values[0]){
                case 'dnd':
                    client.user.setActivity("Je suis occupé !");
                    client.user.setStatus("dnd")
                    break;
                case 'online':
                    client.user.setActivity("Aller, au travail !")
                    client.user.setStatus("online")
                    break;
                case 'idle':
                    client.user.setActivity("Je suis AFK 2 minutes")
                    client.user.setStatus("idle")
                    break;
                default:
                    break;
            }
            interaction.reply({content: `Status mis à jour vers ${interaction.values[0]}`})
            delay(1000).then(() => interaction.deleteReply());
        }
    }
    if (interaction.isContextMenu()) {
        const cmd = client.contextCommands.get(interaction.commandName);
        if (!cmd) return;
        try {
            await cmd.execute(interaction, client);
        } catch (error) {
            if (error) console.error(error);
            await interaction.reply({ content: 'Une erreur est apparue', ephemeral: true });
        }
    }
    if (!interaction.isCommand()) return;
    const command = client.commands.get(interaction.commandName);
    //console.log(command)
    if (!command) return;
    try {
        await command.execute(interaction, client);
    } catch (error) {
        if (error) console.error(error);
        await interaction.reply({ content: 'Une erreur est apparue', ephemeral: true });
    }
});

client.login(TOKEN)