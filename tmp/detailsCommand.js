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
const client = new Client({ intents: 32767 })

client.once('ready', () => {
    console.log(`Le bot est online !`)
});

client.login(TOKEN)