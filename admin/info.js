const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageActionRow, MessageAttachment, MessageEmbed} = require('discord.js');
const connection = require('../connectdb.js');

module.exports = {
    data: new SlashCommandBuilder()
        .setName('info')
        .setDescription("recrée toutes les embes d'informations"),
    async execute(interaction) {
        const file = new MessageAttachment("./admin/img/aca_informations.png");
        const embed1 = new MessageEmbed()
            .setTitle("Pour commencer, nous te souhaitons la bienvenue sur notre serveur ! Je te présente Yumeko, la mascotte de notre serveur !")
            .setColor("#FFABD6")
        const embed2 = new MessageEmbed()
            .setTitle(":newspaper:┊Informations・L'Académie de japonais")
            .setColor("#FFABD6")
            .setDescription(`:small_orange_diamond: Qu'est-ce que l'Académie de japonais ?
L'Académie de Japonais est une organisation présente sur Discord et Facebook, ayant pour ambition de devenir l'une des meilleures écoles francophones de japonais.

:small_orange_diamond: Logiciel d'apprentissage

Notre application a pour but de vous aider à vous perfectionner dans la lecture et l'écriture de la langue Japonaise. Toutes les informations sont disponibles dans le salon •<#825298961567842315>.

:small_orange_diamond: Les rôles de niveaux
Les niveaux sur le serveur ne correspondent pas à votre niveau en japonais. Il s'agit simplement d'un niveau d'activité sur les salons textuels !

:small_orange_diamond: Avantage des boosts
✹ Un rôle Booster affiché en tête de liste sur votre droite
✹ Un rôle personnalisé avec une couleur au choix modifiables à tout moment
✹ Permission de move en vocal, mute, mettre en sourdine (abus sanctionnable)

:small_orange_diamond: Salons importants
<#714115609822232596>・Faites votre présentation afin qu'on en sache un peu plus sur vous !
<#781874763239784489>・Partagez vos objectifs avec les autres membres afin de vous motiver !
<#823125668744527932>・Tout un tas de ressources disponibles pour apprendre efficacement !
<#839159746845474897>・Des exercices y sont postés régulièrement !
<#473097692604661780>・Si vous avez une question sur la langue japonaise ou sur le serveur !
<#749621300342947963> & <#909560633555583016>・Ces salons sont disponibles pour vous permettre de vous entraîner avec le bot Kotoba !
<#473117650239881216>・Parlez en japonais avec les autres membres, peu importe votre niveau !`)
            .setFooter({ text: 'Yumeko à votre service !'})
        const embed3 = new MessageEmbed()
            .setTitle(':small_orange_diamond: Nos liens')
            .setColor("#FFABD6")
            .setDescription(`
                ✹ Site Web : https://cutt.ly/VbEG5pj
                ✹ Twitter : https://cutt.ly/ObEG02j
                ✹ Instagram : https://cutt.ly/abEG1th
                ✹ YouTube : https://cutt.ly/SbEGNCS
                ✹ Facebook : https://cutt.ly/ibEHqX8

                D'autres questions ? Veuillez utiliser la commande a?help dans <#714120073392160840>`)
        
        const file2 = new MessageAttachment("./admin/img/aca_reglement_ecrit.png");
        const embed4 = new MessageEmbed()
            .setTitle(`:scroll:┊Règlement : salons textuels (1ère partie)・L'Académie de japonais`)
            .setColor("#FFABD6")
            .setDescription(`**Règle n°1** : La politesse est primordial ! Utilisez un langage sain et courtois, peu importe la situation sous peine d'un mute.

**Règle n°2** : Le flood et le spam ne sont pas tolérés, merci de les éviter au maximum sous peine d'un mute.

**Règle n°3** : On peut rire de tout mais si un membre n'apprécie pas votre humour, merci de le respecter. Faites attention à l'interprétation de vos paroles. Tout le monde n'a pas le même vécu ni la même vision des choses. Et s'excuser ne coûte rien, si ce n'est un peu d'égo.

**Règle n°4** : Se moquer de la langue japonaise en disant des ching chong ou ce genre de chose sera très mal pris, vous risquez de vous faire bannir instant.

**Règle n°5** : La publicité pour d'autres serveurs, sans accord, est strictement interdite. Si un membre du serveur se plaint de publicité en message privé avec preuve (screen) à l'appui, on ban.

**Règle n°6** : En cas de moquerie du pseudo d'un membre, une excuse sera demandée envers cette personne sous peine de ban.

**Règle n°7** : Tout troll toxique se verra banni. On peut rigoler, mais si on vous dit d'arrêter, arrêtez, au sinon ban.

**Règle n°8** : Votre pseudonyme et photo de profil ne doivent pas contenir de propos discriminatoires et/ou pornographiques, un avertissement vous sera donné et un changement sera nécessaire.

**Règle n°9** : Partager tout type de contenu pornographique et/ou discriminatoire/diffamatoire est catégoriquement interdit sous peine d'un mute.`)
        const embed5 = new MessageEmbed()
            .setColor("#FFABD6")
            .setDescription(`:scroll:┊Règlement : salons textuels (2ème partie)・L'Académie de japonais

**Règle n°10 **: Les débats sont autorisés tant qu'ils se déroulent en toute courtoisie. Veillez à ne pas heurter la sensibilité des autres membres.

**Règle n°11** : Nous vous demandons de ne pas partager de contenu NSFW

Les sanctions peuvent être prises sans avertissement préalable.

Ces règles sont indicatives. Un modérateur peut modérer sur des critères évidents même s'ils ne sont pas inscrits ci-dessus...

Veuillez respecter le Staff et ne pas remettre en cause et/ou critiquer leurs décisions.
En cas d'abus ou d'erreur de la part d'un membre du Staff, vous êtes priés d'ouvrir un ticket dans le salon prévu à cet effet (<#782648871947075584>). Donc dans ce cas, merci de ne pas faire de débats dans les salons publics.`)
        interaction.channel.send({ files: [file], embeds: [embed1, embed2, embed3]}) 
        interaction.channel.send({ files: [file2], embeds: [embed4, embed5]})
    }
};