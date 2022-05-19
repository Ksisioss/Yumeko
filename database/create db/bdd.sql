DROP TABLE IF EXISTS Has;
DROP TABLE IF EXISTS Cards;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Rarity;
DROP TABLE IF EXISTS Player;
DROP TABLE IF EXISTS Embeds;
DROP TABLE IF EXISTS Thumbnail;

SET FOREIGN_KEY_CHECKS = 0;
SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE Player(
   id_player INT AUTO_INCREMENT,
   discord_id BIGINT,
   name_player VARCHAR(50),
   placement INT,
   ja_points BIGINT,
   daily BOOLEAN,
   PRIMARY KEY(id_player)
);
CREATE TABLE Rarity(
   id_rarity INT AUTO_INCREMENT,
   name_rarity VARCHAR(50),
   PRIMARY KEY(id_rarity)
);

CREATE TABLE Category(
   id_category INT AUTO_INCREMENT,
   name_category VARCHAR(50),
   color_category VARCHAR(7),
   PRIMARY KEY(id_category)
);

CREATE TABLE Cards(
   id_card INT AUTO_INCREMENT,
   name_cards VARCHAR(100),
   description_cards VARCHAR(256),
   image_cards VARCHAR(128),
   quantity SMALLINT,
   price INT,
   id_category INT,
   id_rarity INT NOT NULL,
   PRIMARY KEY(id_card),
   FOREIGN KEY(id_category) REFERENCES Category(id_category),
   FOREIGN KEY(id_rarity) REFERENCES Rarity(id_rarity)
);

CREATE TABLE Has(
   id_player INT,
   id_card INT,
   PRIMARY KEY(id_player, id_card),
   FOREIGN KEY(id_player) REFERENCES Player(id_player),
   FOREIGN KEY(id_card) REFERENCES Cards(id_card)
);

CREATE TABLE Thumbnail(
   id_thumbnail INT AUTO_INCREMENT,
   url_thumbnail VARCHAR(256),
   PRIMARY KEY(id_thumbnail)
);

CREATE TABLE Embeds(
   id_embed INT AUTO_INCREMENT,
   command_embed VARCHAR(128),
   title_embed VARCHAR(128),
   color VARCHAR(50),
   url_embed VARCHAR(256),
   description_embed VARCHAR(2048),
   id_thumbnail INT NOT NULL,
   image_embed VARCHAR(256),
   PRIMARY KEY(id_embed),
   FOREIGN KEY(id_thumbnail) REFERENCES Thumbnail(id_thumbnail)
);






SELECT * FROM Player;
SELECT * FROM Cards;
SELECT * FROM Has;
SELECT * FROM Category;
SELECT * FROM Rarity;
SELECT * FROM Thumbnail;
SELECT * FROM Embeds;

ALTER TABLE Player AUTO_INCREMENT=1;

