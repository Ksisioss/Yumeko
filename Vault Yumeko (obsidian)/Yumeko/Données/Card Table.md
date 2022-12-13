There is the [[Database (SQL)|SQL]] table for the [[Cards]] data.

```sql
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
```
