INSERT INTO Rarity ( id_rarity, name_rarity ) VALUES
   (NULL, "Commun"),
(NULL, "Rare"),
(NULL, "Épique"),
(NULL, "Légendaire")
   (Null, "STAFF")
;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS Category;
INSERT INTO Category ( id_category, name_category, color_category ) VALUES
   (NULL, "Transports", "#000000"),
   (NULL, "Outils", "#747474"),
   (NULL, "Origamis", "#EEEEEE"),
   (NULL, "Examens", "#FFFFFF"),
   (NULL, "Culture", "#F9AFED "),
   (NULL, "Lieux connus", "#94ECFF"),
   (NULL, "Politique", "#007DF0"),
   (NULL, "Créatures du folklore", "#7534FF"),
   (NULL, "Symboles japonais", "#E30000 " ),
   (NULL, "Personnages historiques", "#AB5201"),
   (NULL, "Nourritures", "#D48339"),
   (NULL, "Sports", "#FF7A00"),
   (NULL, "Célébrités", "#FFEE51 "),
   (NULL, "Géographie", "#008215"),
   (NULL, "Staff", "#00FF11"),
   (NULL, "Environnements", "#BEFF96")
;

INSERT INTO Player ( id_player, discord_id, name_player, placement, ja_points, staff) VALUES
   (NULL,243093183649677300,'<@243093183649677324>',3,25,0),
   (NULL,695597395949518800,'<@695597395949518848>',2,162,0),
   (NULL,239796769846853630,'<@239796769846853632>',4,8,0),
   (NULL,275687597609844740,'<@275687597609844737>',0,992,0),
   (NULL,263413800043151360,'<@263413800043151361>',1,973,0)
;

INSERT INTO Thumbnail (id_thumbnail, url_thumbnail) VALUES
(NULL, "null");

INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (0,'test','Classement de l''Académie de Japonais','RANDOM','https://japacademia.com/classement/','TEST',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (1,'leaderboard','Classement de l''Académie de Japonais','RANDOM','https://japacademia.com/classement/',NULL,1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (2,'langues',':globe_with_meridians:┊Quelles langues parlez-vous/Apprenez-vous ?・L''Académie de japonais','#FFABD6',NULL,'__Cliquez sur la réaction correspondante pour recevoir le rôle__

:flag_fr:・Le français
:flag_gb:・L''anglais
:flag_es:・L''espagnol
:flag_cn:・Le chinois
:flag_in:・L''hindi
:star_and_crescent:・L''arabe
:flag_ru:・Le russe
:flag_pt:・Le portugais
:flag_id:・L''indonésien
:flag_de:・L''allemand
:flag_it:・L''italien
:flag_kr: ・Le coréen',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (3,'help','Voici les différentes commandes à votre disposition お兄ちゃん・お姉ちゃん :','RANDOM',NULL,'**a?1** : Qu''est-ce que l''académie de japonais ?
**a?2** : Je suis débutant, par où dois-je commencer le japonais ? Où sont les cours ?
**a?3** : Qui sont les membres du staff ?
**a?4** : Je souhaite m''entraîner, où puis-je aller ?
**a?5** : Dois-je me présenter ? Et où ?
**a?6** : J''ai des questions, où dois-je les poser ?
**a?7** : A quoi servent les tickets ? Et où-puis en ouvrir un ?
**a?8** : Où puis-je prendre des rôles ?
**a?9** : Je souhaite faire un partenariat, à qui dois-je m''adresser ?
**a?10** : Où dois-je poster mes objectifs ?
**a?11** : Où puis-je trouver des ressources pour avancer dans mon apprentissage ?
**a?12** : J''ai des problèmes sur des logiciels, où dois-je aller ?
**a?13** : Je souhaite parler japonais, est-ce qu''il y a un salon ?
**a?14** : Je souhaite apprendre les kanji, y a-t-il des cours spéciaux ?
**a?15** : Que sont les niveaux JLPT ?
**a?16** : Comment installer son clavier en japonais ?
**a?serveur** : Combien d''élèves y a-t-il sur le serveur ?
**a?play** : Pour pouvoir écouter de la musique si tous les autres bots sont pris !',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (4,'1','Qu''est-ce que l''académie de japonais ?','RANDOM',NULL,'L''Académie de Japonais est une **organisation** présente sur **Discord et Facebook** (https://www.facebook.com/groups/650259778678654), ayant pour ambition de devenir l''une des **meilleures écoles francophones de japonais**. Nous vous accompagnons avec **bienveillance** dans votre apprentissage, le tout de manière **gratuite** et dans une **ambiance de loisir**, car c''est **avec passion** que l''apprentissage se déroule **pour le mieux**.',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (5,'2','Je suis débutant, par où dois-je commencer le japonais ? Où sont les cours ?','RANDOM',NULL,'Tu commences le japonais ? Eh bien déjà, un grand merci de nous faire confiance pour tes premiers pas. Le japonais est une langue difficile, mais pas d''inquiétude, nos cours sont là pour toi !

Pour commencer, rends-toi dans <#777494504802484235>. Tu y trouveras l''ordre des cours à suivre pour progresser au mieux dans ton apprentissage. Par exemple, la première étape à franchir sera l''apprentissage des kana (hiragana et katakana).

Tu pourras ensuite retrouver les cours listés de <#777494504802484235> qui se trouve dans la catégorie Japonais JLPT N5, qui correspond au niveau débutant. Suis-bien l''ordre et n''hésite pas à poser des questions à tes aînés ou au staff !

 La catégorie <#747848517229346827>・<#738803237897109575> te sera très précieuse tout au long de ton apprentissage, car tu y retrouveras tous les mots dont tu auras besoin (vocabulaire, verbes, adverbes, adjectifs...) pour enrichir ton japonais et mieux comprendre les cours. Nous te conseillons de t''y intéresser dès que tu connaîtras tes kana.

Enfin, d''autres cours sont à retrouver dans <#789229809162125353> et dans la catégorie Cours sur le Japon (<#795954762478387200>, <#795955893572862013> et <#795955993677660190>). Ils portent sur la culture japonaise dans son ensemble et/ou sur des thèmes bien précis. Tu retrouveras par exemple dans <#789586571917131887> les phrases concoctés par notre équipe pour mettre quotidiennement ton apprentissage en application.',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (6,'3','Qui sont les membres du staff ?','RANDOM',NULL,'Le **staff** est composé de **8 membres**. Tu retrouveras @Gautier 先生 qui est le <@&782312527689154560> (le **professeur principal**) et le **fondateur du serveur**. Viennent ensuite les <@&473103706276233225> qui **gèrent** le serveur, qui font faire **respecter** le **règlement** et contribuent aux **cours** ou aux **activités**. Les <@&772084234725883934> sont quant à eux chargés des **Animations et Events** que vous retrouvez **toutes les semaines** sur le serveur.',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (7,'4','Je souhaite m''entraîner, où puis-je aller ?','RANDOM',NULL,'Afin de compléter ton apprentissage, tu retrouveras déjà le logiciel disponible sur PC. Si tu veux le télécharger, merci d''aller sur <#825298961567842315> et tu retrouveras sur le serveur **divers salons** te permettant de t''exercer via des **quizz**. Ces derniers sont dans la catégorie **Révisions** et portent les **doux noms** de : <#718038904581783572> et <#749621300342947963>. N''hésite pas à **t''y rendre et à t''y exercer**. En cas de **besoin**, tu retrouveras les **commandes dans les cours** et dans les **messages épinglés** de ces **salons**. Par **exemple**, le quiz des **hiragana** s''utilise ainsi : **k!q hiragana**.',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (8,'5','Dois-je me présenter ? Et où ?','RANDOM',NULL,'Nous sommes une **communauté vivante** et chaque **membre actif** est accueilli **comme il se doit** ! Afin de mieux **te connaître**, de cerner **ton niveau** et **tes motivations**, nous t''invitons bien sûr à faire une **présentation** dans <#714115609822232596>, n''oublie pas d''utiliser le **modèle déjà présent** et n''hésite pas à **t''inspirer** de celles **déjà présentes** si tu as un **doute**. Si tu souhaites **te présenter** en **japonais**, tu peux le faire dans <#756897066088661042>!',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (9,'6','J''ai des questions, où dois-je les poser ?','RANDOM',NULL,'Lors de **ton apprentissage**, tu auras sans doute un **tas de questions** ! Si c''est **le cas**, n''hésite pas à nous **les poser** dans <#473097692604661780> ! Le **staff** ou les **autres membres** te répondront **le plus rapidement possible**.',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (10,'7','A quoi servent les tickets ? Et où-puis en ouvrir un ?','RANDOM',NULL,'Les **tickets**, à retrouver dans le **salon** <#782648871947075584> (qui sont à utiliser **avec modération** bien sûr), servent à **contacter** directement le **staff**, ce, pour diverses **raisons** :

 :arrow_right: Si vous avez une **plainte** à faire concernant un **membre du serveur** ou **autre**.
:arrow_right: Si vous avez une **suggestion** par rapport au **serveur** et que vous ne souhaitez **pas la dévoiler** à tout le monde.
:arrow_right: Pour décider de ton **rôle personnalisé** lorsque tu **boosts** le serveur ou bien pour **le modifier**.
:arrow_right: Si vous souhaitez avoir une **iscussion privée** avec un membre pour **régler vos comptes**, ça se fera ici et **aucune modération** ne sera effectuée sur les **propos dits** dans un ticket entre différents membres.
:arrow_right: Et enfin si vous souhaitez **faire un partenariat** avec notre serveur.',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (11,'8','Où puis-je prendre des rôles ?','RANDOM',NULL,'Qui dit **serveur communautaire** dit **rôles** ! Vous retrouverez tout un **tas de rôles utiles** dans <#843552462329085984>.

Les **rôles infos** servent à mieux **vous connaître** en un coup d''œil. Par exemple, pour dire si vous êtes **une fille ou un garçon**, **votre âge**, **vos objectifs** et **votre niveau en japonais**.

Les **rôles pings** servent quant à eux à **être notifiés** selon votre **bon vouloir**. Vous pourrez par exemple choisir **d''être ping**, donc **mentionné**, à chaque fois qu''il y a **un cours ou un event**.',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (12,'9','Je souhaite faire un partenariat, à qui dois-je m''adresser ?','RANDOM',NULL,'Tu as ton **propre serveur** et souhaite **nouer des liens** avec le nôtre ? Dans ce cas n''hésite pas à **contacter notre staff** via un **ticket** dans le **salon** <#782648871947075584> !',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (13,'10','Où dois-je poster mes objectifs ?','RANDOM',NULL,'*Je deviendrai le roi des pirates* !
*Devenir Hokage, c''est mon rêve* !

Comme vous le voyez se **donner des objectifs** et les **mettre à jour** est un **levier** très **important de motivation**, surtout lorsqu''ils sont **partagés** avec d''autres **personnes motivés**. Vous pouvez donc **partager vos objectifs** dans <#781874763239784489> !',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (14,'11','Où puis-je trouver des ressources pour avancer dans mon apprentissage ?','RANDOM',NULL,'En dehors de ce serveur, il existe **énormément de ressources** utiles pour **l''apprentissage**. **Faute de pouvoir** vous proposer une liste **exhaustive**, voici quelques **types de ressources** qui **vous aideront** :

__**Les applications mobiles**__ : il existe un très **grand nombre d''applications mobiles** qui vous apporteront une **grande aide** dans **votre apprentissage**. Citons par exemple *Kana Town*, parfait pour **s''entraîner quotidiennement** aux **Kana**, ou encore *Kanji Burger*, une **application très polyvalente**, aussi bien pour l''**apprentissage des Kana**, son **dictionnaire**, sa **liste de kanji** et ses **quizz**.

__**Les chaines dédiées**__ : il existe sur **YouTube, Instagram et autres réseaux** de nombreuses **chaînes** ou **comptes** entièrement dédiés au **japonais**. N''hésitez pas à **demander des références** aux membres du serveurs.

__**Les livres**__ : de très **nombreux livres** existent sur l''**apprentissage du japonais**, n''hésitez pas non plus à **consulter les ainés** du serveur **avant un achat** ou **à demander des conseils** sur le **livre** dans lequel **investir**.

__**Les audios**__ : comme pour l''**apprentissage** de toute **autre langue**, la partie **compréhension orale** est **indispensable** et **inéluctable**.
・Alors **écoutez** !
・Mais Quoi ?
・Je te conseille de **regarder des animés**, des **émissions**, avec les **sous-titrages** évidemment, mais vous entrainerez **vos oreilles** à découper les **syllabes**, à **reconnaitre des mots**, des **expressions** et cela **facilitera votre apprentissage** !

Vous trouverez **toutes les ressources** que nous vous **conseillons** dans le **salon** <#823125668744527932>',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (15,'12','J''ai des problèmes sur des logiciels, où dois-je aller ?','RANDOM',NULL,'Pour toute **question relative** à des **problèmes logiciels**, n''hésitez pas **à aller** dans le **salon** <#473097692604661780>.',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (16,'13','Je souhaite parler japonais, est-ce qu''il y a un salon ?','RANDOM',NULL,'Qui dit **apprentissage** dit **expression** !
Pour **l''oral** comme pour **l''écrit**, vous avez bien sûr des **espaces dédiés** sur ce serveur.

Pour la **partie orale**, il existe le **salon vocal** *日本語*.
En ce qui concerne **l''écrit**, vous pouvez **vous exprimer** dans le **salon** <#473117650239881216>. Même si c''est avec des **expressions simples** comme **おはよう** (bonjour pour le matin) ou **おやすみ** (bonne nuit), n''hésitez pas à **participer fréquemment** pour **enregistrer ces mots/phrases usuelles**. N''ayez pas peur de **faire des erreurs**, c''est la **meilleure manière** d''apprendre !',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (17,'14','Je souhaite apprendre les kanji, y a-t-il des cours spéciaux ?','RANDOM',NULL,'Qui dit **japonais** dit bien-sûr **kanji** ! Vous retrouverez donc en effet des **kanji** sur ce **serveur** ! Il existe tout d''abord le **salon** <#738803237897109575>, où vous retrouverez une **introduction aux kanji**, c''est-à-dire **avant de les apprendre**. **En ce moment** se déroule également le **programme** *Mission Kanji*, qui vise à **apprendre** **tous les kanjis de l''école primaire** (1006), de **manière régulière**, en **groupe** et avec des **contrôles**, c''est disponible à tous !',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (18,'15','Que sont les niveaux JLPT ?','RANDOM',NULL,'Le **JLPT** est l''**équivalent japonais** du **CECRL** pour nous les **européens**. C''est un **test** permettant d''**évaluer** notre **niveau en japonais**. Le **JLPT** se passe tel un **concours** et est **payant**. Plus globalement, on estime donc **son niveau de japonais** par la **correspondance** avec les **niveaux du JLPT**.

__**Les niveaux**__ :

**N5** : niveau débutant, connaissance des règles de base de grammaire, conversation simple et lecture de phrases simples, environ **80 kanji** et **600 mots de vocabulaires**. Il faut environ **150h d''apprentissage**.
**N4** : niveau médian, est capable de lire des phrases assez simples, de tenir une conversation de tous les jours, environ **230 kanji** et **1 250 mots de vocabulaire**. Il faut environ **300h d''apprentissage**.
**N3** : niveau transitoire entre le N4 et le N2 censé apporté les connaissances nécessaire pour solidifier les bases et permettre de passer un grand cap de difficulté dans la langue. Environ **600 kanji*** et **3 000 mots de vocabulaire**. Il faut environ **450h d''apprentissage**.
**N2** : niveau avancé, permet de tenir des conversations plus complexe, connaissances de nouvelles règles de grammaire, niveau de lecture et d''écriture de texte plus exigeants. Environ **1 000 kanji**, **6 000 mots de vocabulaire** pour **600h d''apprentissage**.
**N1** : bilingue, maîtrise parfaite de la grammaire et capacité à tenir des conversations sur de nombreux sujets et à lire le journal. Demande la connaissance d''environ **2 000 kanji** (tous les jôyô kanji), **10 000 mots de vocabulaires** pour **900h d''apprentissage**',1,NULL);
INSERT INTO Embeds(id_embed,command_embed,title_embed,color,url_embed,description_embed,id_thumbnail,image_embed)VALUES (19,'16','Comment installer son clavier en japonais ?','RANDOM',NULL,'Sous **WINDOWS 10**

**Étape 1 : Installation du module de langue Japonaise** :
-│Paramètre > Heure et Langue > Langue > [+] Ajouter une langue > Japonais
-│Cocher tout SAUF Utiliser comme langue par défaut/d''affichage Ça va faire drôle au redémarrage du PC
-│/!\ PAS DE CONNEXION LIMITÉ, SINON ÇA NE MARCHE PAS

**Étape 2 : Seulement les claviers non QWERTY** :
-│Win + R\-│regedit
-│Ordinateur\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\00000411
-│Layout File
-│KBDJPN.DLL ➞ KBDFR.DLL
-│Puis redémarrer votre PC (Peut être le plus long)
-│Au redémarrage

**Étape 3 : Utilisation du clavier japonais** :
-│Faites Win + Space ou Alt+ Shif pour changer de clavier
-│Vous avez un A en bas à droite. Cliquer dessus et cela sera remplacé par あ. Vous pouvez écrire en japonais sans problème.\-│Pour revenir, la même manipe que pour utiliser le clavier Japonais

**Sur ANDROID**
Installer le clavier de chez Google. Vous avez le choix entre trois claviers : FULL JAPONAIS avec les variantes (Passer de か au autres) avec possibilité de mettre des tenten et marumaru. Si ça vous dérange, vous aurez le clavier QWERTY japonais à régler dans les paramètres :
-│Tapez une zone de texte pour afficher le clavier
-│Appuyez longtemps dans le globe
-│Choisissez Japonais
-│Choisissez votre style de clavier :
-│Manuscrite
-│12 touches
-│GODAN
-│QWERTY

Je vous conseille de mettre **QWERTY** car ce sera moins embêtant pour écrire, juste pas en QWERTY. Pour revenir au clavier Français, appuyer un fois sur le globe ou prolongé si vous avez beaucoup de clavier.

**IPHONE**
*Sur IOS 12+*
-│Réglages
-│Général
-│Clavier
-│Claviers
-│Ajouter un clavier
-│*Japonais - Romaji* ou *Japonais - Kana*
La méthode est là depuis IOS 8 et n''a pas forcément bougé

**WINDOWS PHONE**
Achetez vous un autre téléphone ou une tablette Windows 10.',1,NULL);

INSERT INTO Cards (id_card,name_cards,description_cards,image_cards,quantity,price,id_category,id_rarity) VALUES (
   NULL, 
   'Monkey D.Luffy', 
   'Monkey D. Luffy, surnommé de manière récurrente Luffy au chapeau de paille, est un personnage de fiction et principal protagoniste de la franchise japonaise One Piece créée par Eiichirō Oda.',
   './images/CARDS/ANIME/luffy0.png',
   1,
   50,
   1,
   4);
