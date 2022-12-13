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


const {TOKEN, GUILD_ID, NICK, ALL, PRICE} = require('./config.json');
// Création du client
const client = new Client({ intents: 32767 })
module.exports = {client}
const commands = [];
const connection = require('./connectdb.js');


// Creating a collection for commands in client
client.commands = new Collection();
client.contextCommands = new Collection();
const commandFiles = fs.readdirSync('./commands').filter(file => file.endsWith('.js'));
for (const file of commandFiles) {
    const command = require(`./commands/${file}`);
    //console.log(ON.some(item => item === command.data.name)+ "   " + command.data.name)
    if (ALL.some(item => item === command.data.name)) {
        console.log(`    Active : ${command.data.name}`)
    }
    commands.push(command.data.toJSON());
    client.commands.set(command.data.name, command);
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
        client.once(event.name, (...args) => event.execute(...args, commands));
    } else {
        client.on(event.name, (...args) => event.execute(...args));
    }
}

function delay(time) {
    return new Promise(resolve => setTimeout(resolve, time));
}

function correctDB() {
    console.log("CORRECTION")
    connection.query("SELECT * FROM Player;", function (_err, rows, _fields) {
        console.log(rows)
        for (let i = 0; i < rows.length; i++) {
            //console.log(rows[i])
            rows[i].name_player = rows[i].name_player.replace('<', '')
            rows[i].name_player = rows[i].name_player.replace('>', '')
            rows[i].name_player = rows[i].name_player.replace('@', '')
            var user = client.users.cache.find(user => user.id === rows[i].discord_id)
            console.log(user)
            if (user) {
                console.log(user.username)
                connection.query(`UPDATE Player SET stringed_name='${user.username}', avatar='${user.avatar}' WHERE discord_id=${rows[i].name_player};`, function (_err2, rows2, _fields) {
                    console.log(_err2)
                })
            }
        }
    })
}

function channels_create(guild, name) {
    const data = fs.readFileSync('./info.json')
    obj = JSON.parse(data);
    guild.channels.create(name, { 
            type: "GUILD_TEXT",
            permissionOverwrites: [{ //Set permission overwrites
                id: GUILD_ID,
                allow: ['VIEW_CHANNEL'],              
            }]
        }).then(channel => {
            //channel.send('LESGOOOO')
            obj.channels.push({id: channel.id, title:name})
            json = JSON.stringify(obj);
            fs.writeFile('./info.json', json, function(err) {
                if (err) throw err;
                console.log('complete create');
                });
        })
        
}

function channels_remove(guild, name) {
    const data = fs.readFileSync('./info.json')
    obj = JSON.parse(data);
    guild.channels.cache.forEach(channel => { // Looping through the guild channels.
        if (channel.name === name) {
            channel.delete().catch(error => { // Deleting the channel(s) and catching any errors.
                console.log(`Couldn't delete ${channel.name}.`)
            });
            for (let i = 0; i < obj.channels.length; i++) {
                if (obj.channels[i].title === name) {
                    obj.channels[i].pop()
                    json = JSON.stringify(obj);
                    fs.writeFile('./info.json', json, function(err) {
                        if (err) throw err;
                        console.log('complete remove');
                        });
                }
            }
        }
    });
}

function remove_all(guild) {
    const data = fs.readFileSync('./info.json')
    obj = JSON.parse(data);

    for (let i = obj.channels.length-1; i >= 0; i--) {
        console.log(obj.channels[i].id)
        client.channels.fetch(obj.channels[i].id)
        .then(channel =>
            channel.delete()
        )
        console.log(obj.channels[i])
        obj.channels.pop(obj.channels[i])
    }

    json = JSON.stringify(obj);
    fs.writeFile('./info.json', json, function(err) {
        if (err) throw err;
        console.log('complete remove');
    });
}


//correctDB()
client.login(TOKEN)