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

INSERT INTO Cards (id_card,name_cards,description_cards,image_cards,quantity,price,id_category,id_rarity) VALUES (
   NULL, 
   'Monkey D.Luffy', 
   'Monkey D. Luffy, surnommé de manière récurrente Luffy au chapeau de paille, est un personnage de fiction et principal protagoniste de la franchise japonaise One Piece créée par Eiichirō Oda.',
   './images/CARDS/ANIME/luffy0.png',
   1,
   50,
   1,
   4);
