SET FOREIGN_KEY_CHECKS = 0;

SET FOREIGN_KEY_CHECKS = 1;

DROP TABLE IF EXISTS Cards;
DROP TABLE IF EXISTS Has;

SELECT * FROM Cards WHERE id_category= 1;

SELECT
    *
FROM
    Has
    JOIN Player ON Has.id_player = Player.id_player
    JOIN Cards ON Has.id_cards = Cards.id_cards
WHERE
    Has.id_player = 3;

SELECT
    *
FROM
    Cards
    JOIN Category ON Cards.id_category = Category.id_category
WHERE
    Cards.id_category = 16;
SELECT * FROM Player WHERE name_player="<@243093183649677324>";
SELECT * FROM Player WHERE discord_id=243093183649677324;
SELECT * FROM Player WHERE discord_id=243093183649677324;
--  Auto-generated SQL script #202206141724

DELETE FROM s9212_Yumeko.Player WHERE id_player=6;
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

INSERT INTO
    Cards (
        id_card,
        name_cards,
        description_cards,
        image_cards,
        quantity,
        price,
        id_category,
        id_rarity
    )
VALUES
    (
        NULL,
        "Gautier",
        "Gautier est le fondateur du serveur.",
        "./images/CARDS/STAFF/GautierSTAFF.jpg",
        1,
        1000000,
        15,
        5
    ),
    (
        NULL,
        "Ksisios",
        "Ksisios est le Développeur du serveur.",
        "./images/CARDS/STAFF/KsisiosSTAFF.jpg",
        1,
        1000000,
        15,
        5
    ),
    (
        NULL,
        "Angel",
        "Angel est un des administrateurs du serveur.",
        "./images/CARDS/STAFF/AngelSTAFF.jpg",
        1,
        1000000,
        15,
        5
    ),
    (
        NULL,
        "Norah",
        "Norah est une des administratrices du serveur.",
        "./images/CARDS/STAFF/NorahSTAFF.jpg",
        1,
        1000000,
        15,
        5
    ),
    (
        NULL,
        "Azurda",
        "Azurda est un des administrateurs du serveur.",
        "./images/CARDS/STAFF/AzurdaSTAFF.jpg",
        1,
        1000000,
        15,
        5
    ),
    (
        NULL,
        "Brenda",
        "Brenda est une des surveillantes du serveur.",
        "./images/CARDS/STAFF/BrendaSTAFF.jpg",
        1,
        1000000,
        15,
        5
    ),
    (
        NULL,
        "Waseda Université",
        "L'université Waseda, couramment abrege en Sōdai, est une université japonaise privee situee à Tokyo. Elle a ete fondee en 1882 par l'homme d'etat Ōkuma Shigenobu comme ecole specialisee, et a accede au statut d'université en 1920.",
        "./images/CARDS/EDUCATION/Waseda_Universite.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "Université",
        "Etablissement d'enseignement superieur destine à la transmission des connaissances entre les professeurs et les etudiants. Etablissement scolaire qui fedère la production, la transmission et la conservation du savoir.",
        "./images/CARDS/EDUCATION/Universite.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Tsukuba Université",
        "L'Universite de Tsukuba est une université nationale japonaise, situee à Tsukuba dans la prefecture d'Ibaraki.",
        "./images/CARDS/EDUCATION/Tsukuba_Universite.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "Tokyo Université",
        "L'université de Tokyo, couramment abrege en Tōdai, est une université nationale japonaise, situee à Tokyo. Fondee en 1877, comme l'une des universités imperiales du Japon, et appartient depuis 2004 à l'association des universités nationales du Japon.",
        "./images/CARDS/EDUCATION/Tokyo_Universite.jpg",
        1,
        1000,
        4,
        4
    ),
    (
        NULL,
        "Tokyo Technology Université",
        "L'université de technologie de Tokyo, souvent abregee en 東工大 ou en TokyoTech, est une université japonaise situee à Tokyo, et specialisee dans les sciences et les technologies.",
        "./images/CARDS/EDUCATION/Tokyo_Technology_Universite.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "Tokyo Arts Université",
        "L'université des arts de Tokyo, officiellement abregee en TUA et couramment abregee en Geidai, precedemment université nationale des beaux-arts et de la musique de Tokyo, est la plus ancienne et plus prestigieuse ecole d'art et de musique au Japon.",
        "./images/CARDS/EDUCATION/Tokyo_Arts_Universite.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "Tokai Université",
        "L'université Tōkai est une université privee japonaise fondee en 1942. Elle possède des campus à Shibuya et Minato-ku à Tokyo, à Hiratsuka et Isehara dans la prefecture de Kanagawa, et à Shizuoka et Numazu dans la prefecture de Shizuoka.",
        "./images/CARDS/EDUCATION/Tokai_Universite.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Sophia Université",
        "L'université Sophia est une université privee japonaise situee dans l'arrondissement de Chiyoda à Tokyo. L'université Sophia fait partie des trois meilleures universités privees du Japon, les deux autres etant l'université Keio et l'université Waseda.",
        "./images/CARDS/EDUCATION/Sophia_Universite.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "Uniforme scolaire japonais",
        "L'uniforme scolaire japonais est courant dans les etablissements secondaires, depuis la fin du xixe siècle pour les garçons, debut du xxe siècle pour les filles. Il consiste generalement en une veste assortie à un pantalon ou à une jupe.",
        "./images/CARDS/EDUCATION/Uniforme_scolaire_japonais.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "Sailor Fuku",
        "Sailor fuku est un terme japonais designant l'uniforme de marin, parfois appele « marinière », qui est l'un des uniformes, sans doute le plus emblematique, couramment porte par les collegiennes et lyceennes japonaises.",
        "./images/CARDS/EDUCATION/Sailor_Fuku.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "Rikkyo Université",
        "L'université Rikkyō, egalement connue sous le nom d'université de Saint Paul, est une université chretienne japonaise privee de Tōkyō, situe dans le quartier d'Ikebukuro. Cette université dispose d'un collège doctoral franco-japonais.",
        "./images/CARDS/EDUCATION/Rikkyo_Universite.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Otani Université",
        "L'université Ōtani est une université japonaise privee bouddhiste, fondee en 1665 et situee dans l'arrondissement de Kita-ku à Kyoto.",
        "./images/CARDS/EDUCATION/Otani_Universite.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Osaka Université",
        "L'université d'Osaka, souvent abrege en Handai, est une université japonaise situee à Suita, dans la prefecture d'Osaka dans la region du Kansai. D'abord ecole de medecine, creee en 1880, elle fut elevee au rang d'université imperiale en 1931. .",
        "./images/CARDS/EDUCATION/Osaka_Universite.jpg",
        1,
        500,
        4,
        3
    ),
    (
        NULL,
        "Nagoya Université",
        "L'université de Nagoya est une université japonaise, à Nagoya. Elle a ete fondee en 1939 comme l'une des universités imperiales du Japon. En 2014, l'université a produit six laureats du prix Nobel.",
        "./images/CARDS/EDUCATION/Nagoya_Universite.jpg",
        1,
        500,
        4,
        3
    ),
    (
        NULL,
        "Nagaoka Université",
        "L'Universite technique de Nagaoka est une université nationale japonaise, situee à Nagaoka dans la prefecture de Niigata. .",
        "./images/CARDS/EDUCATION/Nagaoka_Universite.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "ministre education shinsuke suematsu",
        "Shinsuke Suematsu est un homme politique japonais, membre du Parti liberal democrate. Il est membre de la Chambre des conseillers depuis 2004 et ministre de l'education, de la Culture, des Sports, des Sciences et de la Technologie depuis 2021.",
        "./images/CARDS/EDUCATION/ministre_education_shinsuke_suematsu.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "Meiji Université",
        "L'université Meiji, ou meidai en abrege, est une université privee du Japon. Elle est situee dans la partie nord du quartier Kandasurugadai à Tokyo. Elle fait partie des Tokyo 6, tournois de baseball qui opposent les grandes universités de Tokyo.",
        "./images/CARDS/EDUCATION/Meiji_Universite.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Lycee Fr Tokyo",
        "Le lycee français international de Tokyo ou LFI Tokyo est un etablissement d'enseignement international à Tokyo, au Japon.",
        "./images/CARDS/EDUCATION/Lycee_Fr_Tokyo.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "Lycee",
        "le lycee correspond au second cycle des etudes secondaires. Au Japon, elle dure pendant 2 ans, de 16 ans à 18 ans.",
        "./images/CARDS/EDUCATION/Lycee.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "Lycee Fr Kyoto",
        "Le lycee français international de Kyoto est un etablissement scolaire de droit prive fonde et gere par un groupement de parents d'elèves et conventionne par l'Agence pour l'enseignement français à l'etranger.",
        "./images/CARDS/EDUCATION/Lycee_Fr_Kyoto.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "Kyushu Université",
        "L'université de Kyūshū, souvent abregee en Kyudai, est une université nationale japonaise situee à Fukuoka, dans l'île de Kyūshū.",
        "./images/CARDS/EDUCATION/Kyushu_Universite.jpg",
        1,
        500,
        4,
        3
    ),
    (
        NULL,
        "Kyoto Université",
        "L’université de Kyoto, couramment abrege en Kyōdai, est une université japonaise situee à Kyoto. Elle a ete fondee en 1897 en tant qu’université imperiale du Japon et appartient depuis 2004 à l’association des universités nationales du Japon.",
        "./images/CARDS/EDUCATION/Kyoto_Universite.jpg",
        1,
        500,
        4,
        3
    ),
    (
        NULL,
        "Kobe Université",
        "L'université de Kobe est une université nationale japonaise situee à Kobe. Elle a ete etablie en 1949 et comprend onze facultes de premier cycle et douze facultes de cycles superieurs avec un total de 15000 etudiants.",
        "./images/CARDS/EDUCATION/Kobe_Universite.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "Keio Université",
        "L'université Keiō ou université Keiō Gijuku est une université privee japonaise situee à Tokyo. Elle fut fondee en 1858 par Yukichi Fukuzawa en tant qu'ecole privee d'etudes occidentales et ouvrit sa première faculte universitaire en 1890.",
        "./images/CARDS/EDUCATION/Keio_Universite.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "N1 certificate",
        "Le certificat du N1 atteste que vous avez le JLPT N1.",
        "./images/CARDS/EDUCATION/N1_certificate.jpg",
        1,
        1000,
        4,
        4
    ),
    (
        NULL,
        "JLPT N5",
        "Le JLPT N5 correspond au niveau debutant avec un niveau des base de grammaire, pouvant faire une conversation simple et lecture de phrases simples. Il y a environ 100 kanji et 800 mots de vocabulaire. Et il faut environ 150h d'apprentissage.",
        "./images/CARDS/EDUCATION/JLPT_N5.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "N5 certificate",
        "Le certificat du N5 atteste que vous avez le JLPT N5.",
        "./images/CARDS/EDUCATION/N5_certificate.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "JLPT N4",
        "Le JLPT N4 correspond au niveau median, en etant capable de lire des phrases assez simples, de tenir une conversation de tous les jours. Il y a environ 230 kanji et 1 250 mots de vocabulaire. Il faut environ 300h d'apprentissage.",
        "./images/CARDS/EDUCATION/JLPT_N4.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "N4 certificate",
        "Le certificat du N4 atteste que vous avez le JLPT N4.",
        "./images/CARDS/EDUCATION/N4_certificate.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "JLPT N3",
        "Le JLPT N3 correspond au niveau transitoire entre le N4 et le N2 cense apporte les connaissances necessaire pour solidifier les bases et permettre de passer un grand cap de difficulte dans la langue. Il y a environ 600 kanji et.",
        "./images/CARDS/EDUCATION/JLPT_N3.jpg",
        1,
        500,
        4,
        3
    ),
    (
        NULL,
        "N3 certificate",
        "3 000 mots de vocabulaire. Il faut environ 450h d'apprentissage.",
        "./images/CARDS/EDUCATION/N3_certificate.jpg",
        1,
        500,
        4,
        3
    ),
    (
        NULL,
        "JLPT N2",
        "Le JLPT N2 correspond à un niveau avancé, permet de tenir des conversations complexes, grammaire avancé, lecture complexe. Le JLPT N2 demande une connaissance d'environ 1 000 kanji, 6 000 mots de vocabulaire et pour environ 600 heures d'apprentissage.",
        "./images/CARDS/EDUCATION/JLPT_N2.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "N2 certificate",
        "Le certificat du N2 atteste que vous avez le JLPT N2.",
        "./images/CARDS/EDUCATION/N2_certificate.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "Hosei Université",
        "L'université Hōsei est une université privee situee à Tōkyō au Japon. C'est à l'origine une faculte de droit en 1880, et fusionnee avec un institut d'etudes françaises en 1889.",
        "./images/CARDS/EDUCATION/Hosei_Universite.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "Hokkaido Université",
        "L’université de Hokkaidō est une université nationale du Japon. Elle a ete fondee en 1876 comme collège d'agriculture de Sapporo, avant d'être elevee au rang d'université imperiale du Japon en 1918.",
        "./images/CARDS/EDUCATION/Hokkaido_Universite.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Hiroshima Université",
        "L'université de Hiroshima est une université nationale japonaise, situee à Higashihiroshima dans la prefecture d'Hiroshima.",
        "./images/CARDS/EDUCATION/Hiroshima_Universite.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Gakushuin Université",
        "L'université Gakushūin est une université privee japonaise, situee dans le quartier de Mejiro de l'arrondissement de Toshima à Tokyo. Elle depend de la compagnie d'enseignement scolaire du même nom.",
        "./images/CARDS/EDUCATION/Gakushuin_Universite.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Ecole primaire",
        ", l'ecole primaire est l'ecole qui accueille les enfants à partir de 7 ans. Elle represente la suite de la maternelle. Au Japon, elle dure 6 ans et en sort à 13 ans. .",
        "./images/CARDS/EDUCATION/Ecole_primaire.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Ecole maternelle",
        "L'ecole maternelle est une ecole qui accueille de très jeunes enfants pour les preparer aux apprentissages fondamentaux de la lecture, de l'ecriture et du calcul.",
        "./images/CARDS/EDUCATION/Ecole_maternelle.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Doshisha Université",
        "L'universite Dōshisha est une universite japonaise privee, situee à Kyoto. Fondee en 1875 par Joseph Hardy Neesima sous le nom de Doshisha English School in Kyoto. ",
        "./images/CARDS/EDUCATION/Doshisha_Universite.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Collège",
        "Le collège est l’appellation courante du premier cycle des etudes du second degre. Au Japon, c’est un enseignement de 3 ans, qui fait suite à l’ecole elementaire. La fourchette d'âge est de 13 ans à 16 ans.",
        "./images/CARDS/EDUCATION/College.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Chuo Université",
        "L’Universite Chūō, est une universite privee japonaise situee à Tokyo. Connue pour sa faculte de droit d'où sont issus plusieurs grands chefs d'entreprises japonais. Elle dispose de trois campus, l'un pour les arts, un pour les sciences et pour le droit.",
        "./images/CARDS/EDUCATION/Chuo_Universite.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Chiba Université",
        "L'universite de Chiba est une universite nationale situee dans la ville de Chiba. Elle propose des doctorats en education dans le cadre d'une coalition avec l'universite Tokyo Gakugei, l'universite Saitama et l'universite nationale de Yokohama.",
        "./images/CARDS/EDUCATION/Chiba_Universite.jpg",
        1,
        250,
        4,
        2
    ),
    (
        NULL,
        "Bukkyo Université",
        "L'université Bukkyo est une université privee situee à Kita-ku, Kyoto dans la prefecture de Kyoto, au Japon. Le predecesseur de l'ecole a ete fonde en 1912 et a reçu une charte en tant que junior college en 1949.",
        "./images/CARDS/EDUCATION/Bukkyo_Universite.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Akita Université",
        "L'université d'Akita est une université nationale japonaise, situee à Akita. Elle a ete creee en 1949, mais son origine remonte à une structure creee en 1873.",
        "./images/CARDS/EDUCATION/Akita_Universite.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Aizu Université",
        "L'université d'Aizu à Aizuwakamatsu, au Japon, est la première université consacree à l'ingenierie informatique au Japon. Elle compte environ 1 100 etudiants inscrits dans ses programmes de premier et de deuxième cycle. .",
        "./images/CARDS/EDUCATION/Aizu_Universite.jpg",
        1,
        100,
        4,
        1
    ),
    (
        NULL,
        "Meiji Jingu",
        "Le Meiji-jingū ou sanctuaire Meiji, est un sanctuaire shintoïste situé en plein cœur de Tokyo, dans l'arrondissement de Shibuya, en bordure du quartier Harajuku.",
        "./images/CARDS/LIEUX_CONNUS/Meiji_Jingu.jpg",
        1,
        520,
        6,
        3
    ),
    (
        NULL,
        "Parc de Ueno",
        "Le parc d'Ueno est un grand parc public situé dans le quartier d'Ueno, au nord-est du centre de Tokyo, au Japon.",
        "./images/CARDS/LIEUX_CONNUS/Parc_de_Ueno.jpg",
        1,
        250,
        6,
        2
    ),
    (
        NULL,
        "Siege du gouvernement",
        "Le siège du gouvernement métropolitain de Tokyo ou Tochō, est situé dans le quartier de Nishi Shinjuku dans l'arrondissement de Shinjuku.",
        "./images/CARDS/LIEUX_CONNUS/Siege_du_gouvernement.jpg",
        1,
        500,
        6,
        3
    ),
    (
        NULL,
        "Temple Asakusa",
        "Asakusa-jinj, ou sanctuaire d'Asakusa, également nommé Sanja-sama, est un sanctuaire shinto situé dans le quartier d'Asakusa, à Tokyo.",
        "./images/CARDS/LIEUX_CONNUS/Temple_Asakusa.jpg",
        1,
        250,
        6,
        2
    ),
    (
        NULL,
        "Tokyo Dome",
        "Le Tokyo Dome est un stade de 55 000 sièges dans l'arrondissement de Bunkyo. C'est le terrain des Yomiuri Giants, une équipe de baseball japonaise.",
        "./images/CARDS/LIEUX_CONNUS/Tokyo_Dome.jpg",
        1,
        250,
        6,
        2
    ),
    (
        NULL,
        "Tour de Tokyo",
        "La tour de Tokyo est une tour rouge et blanche située dans l'arrondissement de Minato à Tokyo. Son concept est fondé sur la tour Eiffel de Paris. Elle a été réalisée par l'architecte Tachū Naitō. C'est l'une des plus hautes tours en métal du monde.",
        "./images/CARDS/LIEUX_CONNUS/Tour_de_Tokyo.jpg",
        1,
        500,
        6,
        3
    ),
    (
        NULL,
        "Carrefour de Shibuya",
        "Le carrefour de Shibuya est un croisement de routes, situé à la sortie Hachiko de la gare de Shibuya à Tokyo. Reconnaissable pour ses passages piétons très empruntés dont un en diagonale, le carrefour attire de nombreux touristes.",
        "./images/CARDS/LIEUX_CONNUS/Carrefour_de_Shibuya.jpg",
        1,
        250,
        6,
        2
    ),
    (
        NULL,
        "Marche de Toyosu",
        "Le marché aux poissons de Toyosu est le principal marché aux poissons de Tokyo au Japon. Ouvert en 2018, il a remplacé le marché aux poissons de Tsukiji. À son ouverture, il est devenu le plus grand marché de gros au poisson au monde.",
        "./images/CARDS/LIEUX_CONNUS/Marche_de_Toyosu.jpg",
        1,
        500,
        6,
        3
    ),
    (
        NULL,
        "Tokyo Sky Tree",
        "La Tokyo Skytree est une tour de radiodiffusion du Japon, située dans l'arrondissement Sumida de Tokyo. Haute de 634 mètres, elle devient, le jour de son inauguration en 2012, la deuxième plus haute structure autoportante du monde.",
        "./images/CARDS/LIEUX_CONNUS/Tokyo_Sky_Tree.jpg",
        1,
        500,
        6,
        3
    ),
    (
        NULL,
        "Yamanashi préfecture",
        "Yamanashi est une préfecture du Japon située au centre du Chūbu.",
        "./images/CARDS/GEOGRAPHIE/Yamanashi_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Yamaguchi préfecture",
        "La préfecture de Yamaguchi est une préfecture du Japon, la plus à l'ouest de Honshū.",
        "./images/CARDS/GEOGRAPHIE/Yamaguchi_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Yamagata préfecture",
        "Yamagata, préfecture située sur l'île japonaise d'Honshu, est réputée pour ses montagnes, ses sources thermales et ses temples.",
        "./images/CARDS/GEOGRAPHIE/Yamagata_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Wakayama préfecture",
        "La préfecture de Wakayama est une préfecture du Japon, la plus au sud de l'île de Honshū.",
        "./images/CARDS/GEOGRAPHIE/Wakayama_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Toyama préfecture",
        "Toyama est l'une des préfectures de l'île principale du Japon, Honshu. Les monts Hida sont connus pour leurs sources chaudes et leurs stations de ski.",
        "./images/CARDS/GEOGRAPHIE/Toyama_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Tottori préfecture",
        "Tottori est une préfecture du Japon située au nord de la région de Chūgoku.",
        "./images/CARDS/GEOGRAPHIE/Tottori_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Tokyo préfecture",
        "Capitale animée du Japon, Tokyo associe les styles ultramodernes et traditionnels, dans un mélange de gratte-ciel aux néons lumineux et de temples anciens.",
        "./images/CARDS/GEOGRAPHIE/Tokyo_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Tokushima préfecture",
        "La préfecture de Tokushima, à l'extrémité est de l'île de Shikoku, est reliée par un pont à l'île principale de Honshū. Point de départ traditionnel d'un chemin de pèlerinage traversant toute l'île sur 1 200 km et incluant 88 temples bouddhistes.",
        "./images/CARDS/GEOGRAPHIE/Tokushima_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Tohoku region",
        "Tōhoku est une région de l'île japonaise de Honshū connue pour ses volcans, son paysage montagneux et ses pistes de ski. .",
        "./images/CARDS/GEOGRAPHIE/Tohoku_region.jpg",
        1,
        500,
        14,
        3
    ),
    (
        NULL,
        "Tochigi préfecture",
        "La préfecture de Tochigi est une préfecture du Japon située au centre de l'île de Honshū. Elle comprend 25 municipalités, dont sa capitale : la ville d'Utsunomiya.",
        "./images/CARDS/GEOGRAPHIE/Tochigi_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Shizuoka préfecture",
        "Shizuoka est une préfecture japonaise sur la côte Pacifique de l'île centrale d'Honshū. Elle est dominée par le mont Fuji, le plus haut sommet du Japon, qui culmine à 3 776 m.",
        "./images/CARDS/GEOGRAPHIE/Shizuoka_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Shikoku Ile",
        "Shikoku est la plus petite des îles principales du Japon. Sa circonférence est marquée par les 1 200 km du chemin de pèlerinage (henro) bouddhiste des 88 temples, en l'honneur du moine du Kūkai, mort au IXe siècle.",
        "./images/CARDS/GEOGRAPHIE/Shikoku_Ile.jpg",
        1,
        1000,
        14,
        4
    ),
    (
        NULL,
        "Shiga préfecture",
        "Shiga est une préfecture du Japon située au centre de Honshū.",
        "./images/CARDS/GEOGRAPHIE/Shiga_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Saitama préfecture",
        "La préfecture de Saitama est une préfecture du Japon située au centre du Kantō dont la capitale est Saitama.",
        "./images/CARDS/GEOGRAPHIE/Saitama_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Saga préfecture",
        "La préfecture de Saga est située dans la partie nord-ouest de Kyūshū, au Japon.",
        "./images/CARDS/GEOGRAPHIE/Saga_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Osaka préfecture",
        "Osaka est une préfecture du Japon située au centre-ouest de l'île de Honshū.",
        "./images/CARDS/GEOGRAPHIE/Osaka_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Okinawa préfecture",
        "Okinawa est une préfecture japonaise comprenant plus de 150 îles dans la mer de Chine orientale, entre Taïwan et l'île principale du Japon. Elle est connue pour son climat tropical, ses grandes plages et ses récifs coralliens.",
        "./images/CARDS/GEOGRAPHIE/Okinawa_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Okayama préfecture",
        "La préfecture d'Okayama, dans la partie sud de l'île japonaise d'Honshū, se caractérise par ses paysages principalement ruraux, ses châteaux féodaux et plusieurs musées d'art notables.",
        "./images/CARDS/GEOGRAPHIE/Okayama_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Oita préfecture",
        "Ōita est une préfecture côtière de l'île japonaise de Kyūshū. Elle est réputée pour ses onsen (sources chaudes), notamment celles de la ville populaire de Beppu.",
        "./images/CARDS/GEOGRAPHIE/Oita_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Niigata préfecture",
        "Sur la côte ouest de l'île japonaise d'Honshū, la préfecture de Niigata borde la mer du Japon et comprend l'île de Sado. Elle est réputée pour ses stations de ski, ses parcs nationaux et ses nombreux onsen (sources chaudes).",
        "./images/CARDS/GEOGRAPHIE/Niigata_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Nara préfecture",
        "Nara est une préfecture du Japon située au milieu de la péninsule de Kii dans la Région du Kansai. .",
        "./images/CARDS/GEOGRAPHIE/Nara_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Nagasaki préfecture",
        "Sur la côte ouest de l'île japonaise de Kyūshū, la préfecture de Nagasaki est connue pour ses volcans, ses îles boisées et ses bains de sources chaudes.",
        "./images/CARDS/GEOGRAPHIE/Nagasaki_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Nagano préfecture",
        "La ville de Nagano se trouve à l'ouest de Tokyo, sur l'île principale du Japon. Elle doit sa renommée au temple Zenkō-ji, qui date du VIIe siècle et dissimule une statue de Bouddha qui n'est montrée au public que tous les 6 ans.",
        "./images/CARDS/GEOGRAPHIE/Nagano_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Miyazaki préfecture",
        "La préfecture de Miyazaki se trouve sur l'île de Kyūshū, au sud du Japon. Elle est réputée pour ses plages et ses routes au bord de l'océan.",
        "./images/CARDS/GEOGRAPHIE/Miyazaki_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Miyagi préfecture",
        "La préfecture de Miyagi est une préfecture du Japon située dans le Tōhoku.",
        "./images/CARDS/GEOGRAPHIE/Miyagi_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Kyuushuu Ile",
        "Kyūshū, la plus au sud-ouest des îles principales du Japon, bénéficie d'un climat essentiellement subtropical. Elle est connue pour ses volcans en activité, ses plages et ses sources chaudes naturelles comme celles de Beppu.",
        "./images/CARDS/GEOGRAPHIE/Kyuushuu_Ile.jpg",
        1,
        1000,
        14,
        4
    ),
    (
        NULL,
        "Kyushuu-Okinawa region",
        "Kyushuu-Okinawa est la plus méridionale des quatre îles principales du Japon, la troisième par sa taille. Elle est considérée comme le lieu de naissance de la civilisation japonaise.",
        "./images/CARDS/GEOGRAPHIE/Kyushuu-Okinawa_region.jpg",
        1,
        500,
        14,
        3
    ),
    (
        NULL,
        "Kyoto préfecture",
        "Ancienne capitale du Japon, Kyoto est une ville située sur l'île de Honshū. Elle est réputée pour ses nombreux temples bouddhistes classiques, ainsi que ses jardins, ses palais impériaux, ses sanctuaires shinto et ses maisons en bois traditionnelles.",
        "./images/CARDS/GEOGRAPHIE/Kyoto_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Kumamoto préfecture",
        "Kumamoto est une préfecture de la partie centrale de l'île de Kyūshū, au sud-ouest du Japon. Elle compte, des éléments naturels, de nombreux volcans en activité, des rivières avec des rapides et des bains thermaux alimentés par des sources chaudes.",
        "./images/CARDS/GEOGRAPHIE/Kumamoto_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Kochi préfecture",
        "La préfecture de Kōchi, sur l'île japonaise de Shikoku, est une région à dominante rurale connue pour ses montagnes, ses cours d'eau et ses plages du Pacifique.",
        "./images/CARDS/GEOGRAPHIE/Kochi_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Kanto region",
        "La région du Kantō est une division géographique de Honshū, l'île principale du Japon.",
        "./images/CARDS/GEOGRAPHIE/Kanto_region.jpg",
        1,
        500,
        14,
        3
    ),
    (
        NULL,
        "Kansai region",
        "La région du Kansai ou Kansai, appelée région de Kinki officiellement, est une aire géographique située sur l'île de Honshū, l'île principale du Japon.",
        "./images/CARDS/GEOGRAPHIE/Kansai_region.jpg",
        1,
        500,
        14,
        3
    ),
    (
        NULL,
        "Kanagawa préfecture",
        "Kanagawa est une préfecture du Japon située au centre-est de l'île Honshū.",
        "./images/CARDS/GEOGRAPHIE/Kanagawa_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Kagoshima préfecture",
        "Kagoshima, une préfecture située à l'extrémité sud de l'île japonaise de Kyūshū, borde la baie de Kagoshima et comprend un groupe d'îles plus petites au sud-ouest.",
        "./images/CARDS/GEOGRAPHIE/Kagoshima_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Kagawa préfecture",
        "Kagawa est une préfecture du Japon située dans le Nord de Shikoku.",
        "./images/CARDS/GEOGRAPHIE/Kagawa_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Iwate préfecture",
        "Iwate est une préfecture du Japon située dans le nord-est du pays.",
        "./images/CARDS/GEOGRAPHIE/Iwate_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Ishikawa préfecture",
        "Ishikawa est une préfecture du Japon située au centre-nord de l'île de Honshū, face à la mer du Japon.",
        "./images/CARDS/GEOGRAPHIE/Ishikawa_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Hyogo préfecture",
        "La préfecture de Hyōgo est une préfecture du Japon, située dans la région du Kansai et au centre-ouest de l'île de Honshū. Elle s'étend également sur l'île naturelle d'Awaji et les îles artificielles de Rokkō et de l'île du Port.",
        "./images/CARDS/GEOGRAPHIE/Hyogo_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Honshuu ile",
        "Honshū est la plus grande île du Japon, autrefois connue en Occident sous le nom de « Hondo », sur laquelle se trouvent entre autres les villes de Tokyo, Osaka, Kyoto, Hiroshima, Yokohama, Nara et Nagoya.",
        "./images/CARDS/GEOGRAPHIE/Honshuu_ile.jpg",
        1,
        1000,
        14,
        4
    ),
    (
        NULL,
        "Hokkaido préfecture",
        "Hokkaidō, la plus septentrionale des îles principales du Japon, est réputée pour ses volcans, ses sources chaudes naturelles (onsen) et ses domaines skiables.",
        "./images/CARDS/GEOGRAPHIE/Hokkaido_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Hokkaido region",
        "Hokkaido est aussi une région.",
        "./images/CARDS/GEOGRAPHIE/Hokkaido_region.jpg",
        1,
        500,
        14,
        3
    ),
    (
        NULL,
        "Hokkaido Ile",
        "Hokkaidō est une île située dans le nord du Japon, à proximité de la Sibérie. Elle est entourée par l'océan Pacifique (à l'est), la mer du Japon (à l'ouest) et la mer d'Okhotsk (au nord). Elle est séparée de Honshū par le détroit de Tsugaru.",
        "./images/CARDS/GEOGRAPHIE/Hokkaido_Ile.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Hiroshima préfecture",
        "Située sur l'île principale du Japon, Honshū, la préfecture d'Hiroshima est bordée par la mer intérieure de Seto, au sud, et par les monts Chūgoku, au nord-ouest.",
        "./images/CARDS/GEOGRAPHIE/Hiroshima_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Gunma préfecture",
        "Gunma est une préfecture montagneuse et enclavée située sur l'île japonaise de Honshū. Elle est connue pour ses sources chaudes (onsen) et ses domaines skiables.",
        "./images/CARDS/GEOGRAPHIE/Gunma_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Aichi préfecture",
        "La préfecture d'Aichi est une préfecture du Japon située dans la région du Chūbu.",
        "./images/CARDS/GEOGRAPHIE/Aichi_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Akita préfecture",
        "Akita est une préfecture du Japon située au nord de l'île de Honshū. Sa capitale est la ville d'Akita.",
        "./images/CARDS/GEOGRAPHIE/Akita_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Gifu préfecture",
        "La préfecture de Gifu est située au centre de Honshū, la plus grande île du Japon.",
        "./images/CARDS/GEOGRAPHIE/Gifu_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Fukuoka préfecture",
        "La préfecture de Fukuoka est une préfecture du Japon dont la capitale est Fukuoka, située au nord de l'île de Kyūshū.",
        "./images/CARDS/GEOGRAPHIE/Fukuoka_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Fukushima préfecture",
        "Fukushima est une préfecture du Japon située dans le Tōhoku. Fukushima signifie littéralement « île du bonheur/fortune ». Sa capitale est la ville de Fukushima.",
        "./images/CARDS/GEOGRAPHIE/Fukushima_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Fukui préfecture",
        "Fukui est une préfecture du Japon située au centre de Honshū.",
        "./images/CARDS/GEOGRAPHIE/Fukui_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Ehime préfecture",
        "Ehime est une préfecture du Japon. Ehime signifie la chère jeune-fille en japonais.",
        "./images/CARDS/GEOGRAPHIE/Ehime_prefecture.jpg",
        1,
        100,
        14,
        1
    ),
    (
        NULL,
        "Chubu region",
        "La région du Chūbu est la partie centrale de Honshū, l'île principale du Japon.",
        "./images/CARDS/GEOGRAPHIE/Chubu_region.jpg",
        1,
        500,
        14,
        3
    ),
    (
        NULL,
        "Chiba préfecture",
        "Chiba est une préfecture japonaise formée de la banlieue est de Tokyo et d’une partie de la péninsule de Bōsō, une région montagneuse.",
        "./images/CARDS/GEOGRAPHIE/Chiba_prefecture.jpg",
        1,
        250,
        14,
        2
    ),
    (
        NULL,
        "Ayakashi",
        "Dans l'ouest du Japon, on dit que les ayakashi sont les esprits vengeurs de ceux qui sont morts en mer et qu'ils tentent de capturer d'autres personnes pour les rejoindre.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Ayakashi.jpg",
        1,
        100,
        8,
        1
    ),
    (
        NULL,
        "Ashiarai Yashiki",
        "Ashiaraiyashiki est un démon du folklore japonais. Il apparait la nuit sous la forme d'un pied géant couvert de boue qui sort du plafond. Si une personne lave le pied, celui-ci disparait, dans le cas contraire, il détruit l'intérieur de la maison.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Ashiarai_Yashiki.jpg",
        1,
        100,
        8,
        1
    ),
    (
        NULL,
        "Inugami",
        "Un inugami est un type de shikigami, émanant d'un chien et lui ressemblant. Il exécute une vengeance ou agit comme gardien si le propriétaire de l’inugami le lui ordonne. Les inugami sont extrêmement puissants, capables de se retourner de son propriétaire.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Inugami.jpg",
        1,
        500,
        8,
        3
    ),
    (
        NULL,
        "Teke Teke",
        "Teke teke est le nom d'un monstre issu de la légende urbaine japonaise qui raconte l'histoire du fantôme d'une jeune femme ou d'une écolière qui serait tombée sur une voie ferrée, où son corps a été coupé en deux par un train.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Teke_Teke.jpg",
        1,
        250,
        8,
        2
    ),
    (
        NULL,
        "Oni",
        "Les oni sont une sorte de yōkai, des créatures du folklore japonais, présents dans les arts, la littérature et le théâtre japonais. Ils ressemblent aux trolls, en français, on traduit leur nom par « ogre », voire par « démons », « diables ».",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Oni.jpg",
        1,
        500,
        8,
        3
    ),
    (
        NULL,
        "Yama Uba",
        "Yama-Uba est un monstre ressemblant à une vieille femme relativement hideuse. Sa bouche est aussi large que sa tête et la créature peut même avoir une deuxième bouche au sommet de sa tête. Elle est capable de changer d'apparence pour capturer ses victimes.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Yama_Uba.jpg",
        1,
        100,
        8,
        1
    ),
    (
        NULL,
        "Yurei",
        "La mort d'une personne ne signifie pas nécessairement la montée au paradis. Certaines personnes qui ont laissé sur terre des chagrins, des colères, ou des regrets, ne peuvent pas quitter ce monde, ce sont des fantômes, les yūrei.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Yurei.jpg",
        1,
        100,
        8,
        1
    ),
    (
        NULL,
        "Tengu",
        "Les tengu sont un type de créatures légendaires de la religion populaire japonaise, et ils sont aussi considérés comme des dieux shinto (kami) ou comme des yōkai.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Tengu.jpg",
        1,
        1000,
        8,
        4
    ),
    (
        NULL,
        "Jorogumo",
        "Jorōgumo est un type de yōkai, une créature, un fantôme ou un gobelin du folklore japonais. Il peut se transformer en une belle femme.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Jorogumo.jpg",
        1,
        100,
        8,
        1
    ),
    (
        NULL,
        "Akaname",
        "L'Akaname est un esprit du folklore japonais. C'est un yōkai inoffensif, qui a l'habitude de lécher la saleté des baignoires la nuit.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Akaname.jpg",
        1,
        100,
        8,
        1
    ),
    (
        NULL,
        "Tanuki",
        "Le tanuki est, dans la mythologie japonaise, un des yōkai de la forêt, inspiré du chien viverrin, une espèce de canidés ressemblant au raton laveur et également parfois confondu avec le blaireau, auquel les Japonais attribuent des pouvoirs magiques.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Tanuki.jpg",
        1,
        500,
        8,
        3
    ),
    (
        NULL,
        "Rokurokubi",
        "Le rokurokubi est une créature étrange de la mythologie japonaise, proche du nukekubi. Le jour, on dirait quelqu'un de tout à fait normal mais la nuit, son cou s'allonge. Un rokurokubi peut être soit un homme, soit une femme.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Rokurokubi.jpg",
        1,
        100,
        8,
        1
    ),
    (
        NULL,
        "Bakeneko",
        "Le Bakeneko est une créature fabuleuse de la mythologie japonaise. C'est un yokai, un esprit chat dont le nom signifie « monstre chat » ou encore « chat changé ». Le Bakeneko est un chat qui a des pouvoirs surnaturels.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Bakeneko.jpg",
        1,
        250,
        8,
        2
    ),
    (
        NULL,
        "Burabura",
        "Burabura est un tsukumogami à lanterne qui apparaît lorsqu'il y a de grands groupes de yōkai dans les environs. .",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Burabura.jpg",
        1,
        100,
        8,
        1
    ),
    (
        NULL,
        "Hinoenma",
        "Hinoenma, connu également sous le nom d'Enshoujo, est une créature du folklore japonais représentée a un monstre volant dans \"Picture Book Million Tale\" de la période Edo.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Hinoenma.jpg",
        1,
        100,
        8,
        1
    ),
    (
        NULL,
        "Kitsune",
        "Le kitsune désigne le renard, ainsi qu'un personnage du folklore japonais, un esprit surnaturel (yōkai), animal polymorphe, tout comme le tanuki. Le kitsune a souvent été associé à Inari, une divinité shintoïste, comme étant son messager.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Kitsune.jpg",
        1,
        1000,
        8,
        4
    ),
    (
        NULL,
        "Kirin",
        "Le Kirin est un animal composite fabuleux issu de la mythologie chinoise possédant plusieurs apparences. Il tient généralement un peu du cerf et du cheval, possède un pelage, des écailles ou les deux, et une paire de cornes semblables à celle du cerf.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Kirin.jpg",
        1,
        250,
        8,
        2
    ),
    (
        NULL,
        "Kasa Obake",
        "Le Kasa-obake est un yōkai du folklore japonais, qui représente une ombrelle dotée d'un œil, de deux bras et se tenant sur une unique jambe. Son nom provient d'une ancienne variété d'ombrelles à armature de bois et tendues de papier huilé.",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Kasa_Obake.jpg",
        1,
        100,
        8,
        1
    ),
    (
        NULL,
        "Kappa",
        "Le kappa ou kawatarō est un monstre du folklore japonais, décrit comme un génie ou un diablotin d'eau. Le kappa est réputé pour chercher à attirer les humains ou les animaux dans l'eau. .",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Kappa.jpg",
        1,
        250,
        8,
        2
    ),
    (
        NULL,
        "Mujina",
        "Les mujina, qui est un vieux désignant le blaireau, sont fréquemment représentés comme des yōkai qui se métamorphosent et trompent les humains. L'une des formes que le Mujina est censé prendre est celle d'un \"fantôme sans visage\". .",
        "./images/CARDS/CREATURES_DU_FOLKLORE/Mujina.jpg",
        1,
        100,
        8,
        1
    ),
    (
        NULL,
        "Usu et Kine",
        "Un usu est un mortier japonais de grande taille, avec un pilon nommé kine, utilisé pour moudre le riz ou le millet. Le usu est habituellement composé de métal et de bois. Le kine est un long maillet en bois dont la longueur dépasse le mètre.",
        "./images/CARDS/OUTILS/Usu_et_Kine.jpg",
        1,
        100,
        2,
        1
    ),
    (
        NULL,
        "Unagi Saki",
        "Un unagisaki hōchō est un couteau spécialisé pour lever les filets d'unagi. L'extrémité pointue du couteau est insérée dans le poisson près de la tête puis glissée tout le long du corps de l'anguille pour l'ouvrir sur toute sa longueur.",
        "./images/CARDS/OUTILS/Unagi_Saki.jpg",
        1,
        250,
        2,
        2
    ),
    (
        NULL,
        "Tamagoyaki ki",
        "La poêle carrée japonaise est un ustensile de cuisine spécialement conçu pour réaliser les tamagoyaki, ces omelettes japonaises roulées que l'on trouve, par exemple, dans les sushi et bento.",
        "./images/CARDS/OUTILS/Tamagoyaki_ki.jpg",
        1,
        250,
        2,
        2
    ),
    (
        NULL,
        "Suribachi",
        "Le suribachi est un mortier japonais. Le suribachi est un mortier en céramique rainuré. Il est notamment utilisé pour piler le sésame dans la recette du gomasio.",
        "./images/CARDS/OUTILS/Suribachi.jpg",
        1,
        100,
        2,
        1
    ),
    (
        NULL,
        "Suihanki cuiseur de riz",
        "Il s’agit d’un cuiseur pour cuire le riz et le garder au chaud. Avant, pour ce faire, on utilisait une casserole spéciale nommée «kama» ou “suihan-gama”, que l’on trouve de plus en plus rarement dans les maisons.",
        "./images/CARDS/OUTILS/Suihanki_cuiseur_de_riz.jpg",
        1,
        500,
        2,
        3
    ),
    (
        NULL,
        "Shakushi",
        "Un shakushi est une spatule japonaise, plate ou légèrement creuse, utilisée pour servir le riz. Il est parfois appelé shamoji, surtout par les femmes. Un shakushi peut être en bois ou en plastique, rarement en métal.",
        "./images/CARDS/OUTILS/Shakushi.jpg",
        1,
        100,
        2,
        1
    ),
    (
        NULL,
        "Saibaishi",
        "Les saibaishi sont de grandes baguettes ustensiles de la cuisine japonaise. Elles sont utilisées lors de la préparation des plats japonais, et ne sont pas destinées à la dégustation.",
        "./images/CARDS/OUTILS/Saibaishi.jpg",
        1,
        100,
        2,
        1
    ),
    (
        NULL,
        "Plaque a Takoyaki",
        "Cette plaque sert à réaliser de très bons takoyaki à manger très chaud !.",
        "./images/CARDS/OUTILS/Plaque_a_Takoyaki.jpg",
        1,
        250,
        2,
        2
    ),
    (
        NULL,
        "Otoshibuta",
        "Un otoshibuta Un couvercle en bois qui  permet d'accélérer la cuisson et faciliter la circulation de la chaleur qui se pose directement sur la nourriture.",
        "./images/CARDS/OUTILS/Otoshibuta.jpg",
        1,
        250,
        2,
        2
    ),
    (
        NULL,
        "Oroshigane",
        "Les oroshigane sont des râpes, ustensiles de la cuisine japonaise. Ces râpes diffèrent des râpes occidentales car les aliments sont râpés plus finement.",
        "./images/CARDS/OUTILS/Oroshigane.jpg",
        1,
        100,
        2,
        1
    ),
    (
        NULL,
        "Makisu",
        "Les makisu, littéralement « rideau à rouleau » est, en cuisine japonaise, une natte formée à l'aide de tiges de bambou reliées par une ficelle de coton.",
        "./images/CARDS/OUTILS/Makisu.jpg",
        1,
        250,
        2,
        2
    ),
    (
        NULL,
        "Couteau Deba Bouchou",
        "Les deba bōchō sont des couteaux de cuisine de style japonais principalement utilisés pour couper le poisson et la viande. Ils existent en différentes tailles, parfois jusqu'à 30 cm de longueur.",
        "./images/CARDS/OUTILS/Couteau_Deba_Bouchou.jpg",
        1,
        1000,
        2,
        4
    ),
    (
        NULL,
        "Couteau Usuba Bouchou",
        "Les couteaux usuba sont des couteaux utilisés pour les légumes. Usuba signifie littéralement « fine lame », indiquant sa minceur relative par rapport à d'autres couteaux. On l'utilise pour couper des légumes fermes sans les fissurer.",
        "./images/CARDS/OUTILS/Couteau_Usuba_Bouchou.jpg",
        1,
        500,
        2,
        3
    ),
    (
        NULL,
        "Couteau multi usages Santoku",
        "Le couteau santoku est un couteau utilisé par les chefs cuisiniers japonais, proche du couteau de chef.",
        "./images/CARDS/OUTILS/Couteau_multi_usages_Santoku.jpg",
        1,
        250,
        2,
        2
    ),
    (
        NULL,
        "Couteau Sashimi bouchou",
        "Les couteaux à sushi et à sashimi sont extrêmement tranchants et conçus pour une tâche spécifique, de sorte qu'ils nécessitent des instructions très précises. Le nom des pièces doit être connu pour une meilleure manipulation et un meilleur entretien.",
        "./images/CARDS/OUTILS/Couteau_Sashimi_bouchou.jpg",
        1,
        500,
        2,
        3
    ),
    (
        NULL,
        "Totoro",
        "Voici l'origami de Totoro dans le film Ghibli \"Mon voisin Totoro\".",
        "./images/CARDS/ORIGAMIS/Totoro.jpg",
        1,
        500,
        3,
        3
    ),
    (
        NULL,
        "Toad",
        "Voici l'origami de Toad dans le jeu Nintendo \"Mario\".",
        "./images/CARDS/ORIGAMIS/Toad.jpg",
        1,
        250,
        3,
        2
    ),
    (
        NULL,
        "Sakura",
        "Voici l'origami des fleurs de cerisiers, les sakura.",
        "./images/CARDS/ORIGAMIS/Sakura.jpg",
        3,
        250,
        3,
        2
    ),
    (
        NULL,
        "Papillon",
        "Voici l'origami d'un papillon.",
        "./images/CARDS/ORIGAMIS/Papillon.jpg",
        1,
        100,
        3,
        1
    ),
    (
        NULL,
        "Noeud",
        "Voici l'origami d'un nœud.",
        "./images/CARDS/ORIGAMIS/Noeud.jpg",
        2,
        100,
        3,
        1
    ),
    (
        NULL,
        "Lotus",
        "Voici l'origami d'un lotus.",
        "./images/CARDS/ORIGAMIS/Lotus.jpg",
        2,
        250,
        3,
        2
    ),
    (
        NULL,
        "Lapin",
        "Voici l'origami d'un lapin.",
        "./images/CARDS/ORIGAMIS/Lapin.jpg",
        2,
        100,
        3,
        1
    ),
    (
        NULL,
        "Jiji",
        "Voici l'origami de Jiji dans le film de Ghibli \"Kiki la petite sorcière\".",
        "./images/CARDS/ORIGAMIS/Jiji.jpg",
        1,
        500,
        3,
        3
    ),
    (
        NULL,
        "Grue",
        "Voici l'origami d'une grue.",
        "./images/CARDS/ORIGAMIS/Grue.jpg",
        2,
        250,
        3,
        2
    ),
    (
        NULL,
        "Feuille derable_Momiji",
        "Voici l'origami d'une feuille d'érable, les momiji.",
        "./images/CARDS/ORIGAMIS/Feuille_derable_Momiji.jpg",
        3,
        250,
        3,
        2
    ),
    (
        NULL,
        "Etoiles de Ninja",
        "Voici l'origami d'une étoile de ninja.",
        "./images/CARDS/ORIGAMIS/Etoiles_de_Ninja.jpg",
        4,
        500,
        3,
        3
    ),
    (
        NULL,
        "Crabe",
        "Voici l'origami d'un crabe.",
        "./images/CARDS/ORIGAMIS/Crabe.jpg",
        2,
        100,
        3,
        1
    ),
    (
        NULL,
        "Colombe",
        "Voici l'origami d'unz colombe.",
        "./images/CARDS/ORIGAMIS/Colombe.jpg",
        2,
        100,
        3,
        1
    ),
    (
        NULL,
        "Coeur",
        "Voici l'origami d'un coeur.",
        "./images/CARDS/ORIGAMIS/Coeur.jpg",
        2,
        250,
        3,
        2
    ),
    (
        NULL,
        "Casque_de_Samurai",
        "Voici l'origami d'un casque de samurai.",
        "./images/CARDS/ORIGAMIS/Casque_de_Samurai.jpg",
        1,
        1000,
        3,
        4
    ),
    (
        NULL,
        "Boite en etoile",
        "Voici l'origami d'une boite en étoile.",
        "./images/CARDS/ORIGAMIS/Boite_en_etoile.jpg",
        2,
        250,
        3,
        2
    ),
    (
        NULL,
        "Boite",
        "Voici l'origami d'une boite.",
        "./images/CARDS/ORIGAMIS/Boite.jpg",
        2,
        100,
        3,
        1
    ),
    (
        NULL,
        "Body Baby",
        "Voici l'origami d'un corps de bébé.",
        "./images/CARDS/ORIGAMIS/Body_Baby.jpg",
        2,
        500,
        3,
        3
    ),
    (
        NULL,
        "Bateau",
        "Voici l'origami d'un bateau.",
        "./images/CARDS/ORIGAMIS/Bateau.jpg",
        2,
        100,
        3,
        1
    ),
    (
        NULL,
        "Avion",
        "Voici l'origami d'un avion.",
        "./images/CARDS/ORIGAMIS/Avion.jpg",
        2,
        100,
        3,
        1
    ),
    (
        NULL,
        "Tanya Degurechaff",
        "Tanya von Degurechaff est la principale protagoniste du light novel/anime Youjo Senki : Saga of Tanya the Evil..",
        "./images/CARDS/CULTURE/Tanya_Degurechaff.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Chihaya Ayase",
        "Chihaya Ayase est la principale protagoniste du manga/anime Chihayafuru..",
        "./images/CARDS/CULTURE/Chihaya_Ayase.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Yumeko Jabami",
        "Yumeko Jabami est la principal protagoniste de Kakegurui..",
        "./images/CARDS/CULTURE/Yumeko_Jabami.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Kirua",
        "Kirua Zoldyck est l'un des quatre protagonistes et le meilleur ami de Gon Freecss dans la série Hunter x Hunter. .",
        "./images/CARDS/CULTURE/Kirua.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Koro-sensei",
        "Koro-sensei est le personnage principal du manga Assassination Classroom..",
        "./images/CARDS/CULTURE/Koro-sensei.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Kumoko",
        "Kumoko est un personnage du manga So I'm a Spider, So What?( Kumo desu ga, Nani ka?).",
        "./images/CARDS/CULTURE/Kumoko.jpg",
        1,
        100,
        5,
        1
    ),
    (
        NULL,
        "Kurahara Kakeru",
        "Kurahara Kakeru est l'un des principaux protagonistes de Kaze ga Tsuyoku Fuiteiru (RUN WITH THE WIND)..",
        "./images/CARDS/CULTURE/Kurahara_Kakeru.jpg",
        1,
        100,
        5,
        1
    ),
    (
        NULL,
        "Ichigo Kurosaki",
        "Ichigo Kurosaki est un personnage du manga Bleach de Tite Kubo. Il est le protagoniste principal de la série..",
        "./images/CARDS/CULTURE/Ichigo_Kurosaki.jpg",
        1,
        1000,
        5,
        4
    ),
    (
        NULL,
        "Lelouch vi Britannia",
        "Lelouch vi Britannia, dont le pseudonyme est Lelouch Lamperouge, est le personnage principal et l'anti-héros principal de la série animée Sunrise Code Geass: Lelouch of the Rebellion..",
        "./images/CARDS/CULTURE/Lelouch_vi_Britannia.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "L Lawliet",
        "L Lawliet, plus connu sous le pseudonyme L, est un des personnages principaux du Manga Death Note..",
        "./images/CARDS/CULTURE/L_Lawliet.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Kurumatani Sora",
        "Kurumatani Sora est le personnage principal du manga Dream team (Ahiru no Sora).",
        "./images/CARDS/CULTURE/Kurumatani_Sora.jpg",
        1,
        100,
        5,
        1
    ),
    (
        NULL,
        "Eren Jaeger",
        "Eren Jäger est un personnage fictif et un des protagonistes du manga L'Attaque des Titans..",
        "./images/CARDS/CULTURE/Eren_Jaeger.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Yotsuba Nakano",
        "Yotsuba Nakano est l'une des personnages principaux de 5Toubun no Hanayome..",
        "./images/CARDS/CULTURE/Yotsuba_Nakano.jpg",
        1,
        100,
        5,
        1
    ),
    (
        NULL,
        "Yuichi Jin",
        "Jin Yûichi est un membre du Border. Il est de la branche Tamakoma et de Rang S, il fait donc partie des meilleurs combattants que l'organisation compte. Il est l'un des protagonistes de l'histoire..",
        "./images/CARDS/CULTURE/Yuichi_Jin.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Kokonoe Arata",
        "Kokonoe Arata est un des personnages principaux du manga et de l'animé Terror in Resonance..",
        "./images/CARDS/CULTURE/Kokonoe_Arata.jpg",
        1,
        100,
        5,
        1
    ),
    (
        NULL,
        "Zero Two",
        "Zero Two, également appelé Code:002 et 9'℩, est un personnage fictif de la série. télévisée d'animation japonaise Darling in the Franxx.",
        "./images/CARDS/CULTURE/Zero_Two.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Hyakkimaru",
        "Hyakkimaru est le principal protagoniste du manga/anime Dodoro..",
        "./images/CARDS/CULTURE/Hyakkimaru.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Umaru Doma",
        "Umaru Doma est la principale protagoniste de la série Himouto! Umaru-chan..",
        "./images/CARDS/CULTURE/Umaru_Doma.jpg",
        1,
        100,
        5,
        1
    ),
    (
        NULL,
        "Yato",
        "Yato est le principal protagoniste de Noragami..",
        "./images/CARDS/CULTURE/Yato.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Victor Nikiforov",
        "Victor Nikiforov est l'un des personnages principaux de la série Yuri!!! on Ice..",
        "./images/CARDS/CULTURE/Victor_Nikiforov.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Sinon",
        "Shino Asada est un personnage fictif qui apparaît dans la série de romans légers et d'anime Sword Art Online.",
        "./images/CARDS/CULTURE/Sinon.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Mashiro Moritaka",
        "Mashiro Moritaka est l'un des deux personnages principaux du manga/anime Bakuman..",
        "./images/CARDS/CULTURE/Mashiro_Moritaka.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Mayuri Shiina",
        "Mayuri Shiina est la Labo Mem 002 du Laboratoire des Gadgets Futuristes, une serveuse à temps-partiel au MayQueen+Nyan² ainsi que l'une des protagonistes de la série Steins Gate..",
        "./images/CARDS/CULTURE/Mayuri_Shiina.jpg",
        1,
        100,
        5,
        1
    ),
    (
        NULL,
        "Sato Mafuyu",
        "Sato Mafuyu est le chanteur du groupe \"Given\" et l'un des personnages principaux du manga/anime..",
        "./images/CARDS/CULTURE/Sato_Mafuyu.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Onizuka",
        "Onizuka est l'un des personnages principaux du manga/anime GTO (Great Teacher Onizuka)..",
        "./images/CARDS/CULTURE/Onizuka.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Livai Ackerman",
        "Livaï Ackerman est un personnage récurrent de la franchise L'Attaque des Titans..",
        "./images/CARDS/CULTURE/Livai_Ackerman.jpg",
        1,
        1000,
        5,
        4
    ),
    (
        NULL,
        "Light Yagami",
        "Light Yagami (pseudonymé Asashi), dit Kira, et appelé L (ou \"Deuxième L\") après la mort du premier, et surnommé par le SPK L-Kira, est le personnage principal du manga/anime Death Note..",
        "./images/CARDS/CULTURE/Light_Yagami.jpg",
        1,
        1000,
        5,
        4
    ),
    (
        NULL,
        "Saitama",
        "Saitama est le protagoniste principal de One Punch-Man et le personnage le plus puissant de l'histoire..",
        "./images/CARDS/CULTURE/Saitama.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Nezuko Kamado",
        "Nezuko Kamado est un personnage fictif du manga/anime Demon Slayer: Kimetsu no Yaiba..",
        "./images/CARDS/CULTURE/Nezuko_Kamado.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Gojo Satoru",
        "Satoru Gojo est un personnage fictif du manga/anime Jujutsu Kaisen..",
        "./images/CARDS/CULTURE/Gojo_Satoru.jpg",
        1,
        1000,
        5,
        4
    ),
    (
        NULL,
        "Rei Kiriyama",
        "Rei Kiriyama est le personnage principal du manga/anime Sangatsu no Lion..",
        "./images/CARDS/CULTURE/Rei_Kiriyama.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Nino Nakano",
        "Nino Nakano est l'une des personnages principaux de 5Toubun no Hanayome..",
        "./images/CARDS/CULTURE/Nino_Nakano.jpg",
        1,
        100,
        5,
        1
    ),
    (
        NULL,
        "Spike Spiegel",
        "Spike Spiegel est un personnage fictif présenté comme le protagoniste de la série animée Cowboy Bebop.",
        "./images/CARDS/CULTURE/Spike_Spiegel.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Takagi",
        "Takagi est l'un des deux personnages principaux du manga/anime Karakai jōzu no Takagi-san..",
        "./images/CARDS/CULTURE/Takagi.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Tatara Fujita",
        "Tatara Fujita est le principal protagoniste  du manga/anime Welcome to the Ballroom..",
        "./images/CARDS/CULTURE/Tatara_Fujita.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Shoto Todoroki",
        "Shoto Todoroki est l'un des protagonistes et personnages principaux de My Hero Academia..",
        "./images/CARDS/CULTURE/Shoto_Todoroki.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Shiro",
        "Shiro est la principale protagoniste féminine du manga/anime No Game No Life..",
        "./images/CARDS/CULTURE/Shiro.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Shinichi Izumi",
        "Shinichi Izumi est le principal protagoniste de la série Kiseijuu..",
        "./images/CARDS/CULTURE/Shinichi_Izumi.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Senku Ishigami",
        "Senku Ishigami est le principal protagoniste du manga/anime Dr. Stone..",
        "./images/CARDS/CULTURE/Senku_Ishigami.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Rin Okumura",
        "Rin Okumura est le principal protagoniste du manga/anime Blue Exorcist..",
        "./images/CARDS/CULTURE/Rin_Okumura.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Rimuru Tempest",
        "Rimuru Tempest est le personnage principal de la série \"Moi, quand je me réincarne en Slime\". Le nom original de la série est \"Tensei Shitara Slime datta ken\"..",
        "./images/CARDS/CULTURE/Rimuru_Tempest.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Sawamura Eijun",
        "Sawamura Eijun est le protagoniste du manga/anime Diamond no Ace..",
        "./images/CARDS/CULTURE/Sawamura_Eijun.jpg",
        1,
        100,
        5,
        1
    ),
    (
        NULL,
        "Oreki Houtarou",
        "Oreki Houtarou est le protagoniste des séries Classic Literature Club et Hyouka.",
        "./images/CARDS/CULTURE/Oreki_Houtarou.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Rem",
        "Rem est l'un des principaux personnages secondaires du manga/anime Re:Zero..",
        "./images/CARDS/CULTURE/Rem.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Ryuko Matoi",
        "Ryuko Matoi est le personnage principal du manga/anime Kill la Kill..",
        "./images/CARDS/CULTURE/Ryuko_Matoi.jpg",
        1,
        100,
        5,
        1
    ),
    (
        NULL,
        "Miku Nakano",
        "Miku Nakano est l'une des personnages principaux de 5Toubun no Hanayome..",
        "./images/CARDS/CULTURE/Miku_Nakano.jpg",
        1,
        100,
        5,
        1
    ),
    (
        NULL,
        "Onoda Sakimichi",
        "Onoda Sakamichi est le protagoniste principal du manga/anime Yowamushi Pedal..",
        "./images/CARDS/CULTURE/Onoda_Sakamichi.jpg",
        1,
        100,
        5,
        1
    ),
    (
        NULL,
        "Meliodas",
        "Meliodas est le Dragon de la Colère qui dirige les Seven deadly sins. Il est le principal protagoniste du manga/anime Nanatsu no Taizai..",
        "./images/CARDS/CULTURE/Meliodas.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Mob",
        "Mob surnommé \"White T-Poison\", est le protagoniste principal du manga/anime Mob Psycho 100..",
        "./images/CARDS/CULTURE/Mob.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Nana Osaki",
        "Nana Osaki est l'une des deux protagonistes principales du manga/anime Nana..",
        "./images/CARDS/CULTURE/Nana_Osaki.jpg",
        1,
        100,
        5,
        1
    ),
    (
        NULL,
        "Naofumi Iwatani",
        "Naofumi Iwatani est le protagoniste du manga/anime The Rising of the Shield Hero..",
        "./images/CARDS/CULTURE/Naofumi_Iwatani.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Rokurouta Sakuragi",
        "Rokurouta Sakuragi est  le plus âgé des sept personnages principaux du manga/anime Rainbow : Nisha Rokubou no Shichinin..",
        "./images/CARDS/CULTURE/Rokurouta_Sakuragi.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Naruto Uzumaki",
        "Naruto Uzumaki est un personnage de fiction, principal protagoniste du manga/anime Naruto..",
        "./images/CARDS/CULTURE/Naruto_Uzumaki.jpg",
        1,
        1000,
        5,
        4
    ),
    (
        NULL,
        "Hinata Shoyo",
        "Hinata Shoyo est le personnage principal de la série Haikyū!!.",
        "./images/CARDS/CULTURE/Hinata_Shoyo.jpg",
        1,
        1000,
        5,
        4
    ),
    (
        NULL,
        "Gasai Yuno",
        "Gasai Yuno est la principale protagoniste féminine du manga/anime Mirai Nikki..",
        "./images/CARDS/CULTURE/Gasai_Yuno.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Jotaro Kujo",
        "Jotaro Kujo est le protagoniste de Stardust Crusaders et un allié majeur des parties 4 et 5 : Diamond is Unbreakable et Stone Ocean..",
        "./images/CARDS/CULTURE/Jotaro_Kujo.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Juuzou Suzuya",
        "Juuzou Suzuya est l'un des personnages secondaires du manga/anime Tokyo Ghoul..",
        "./images/CARDS/CULTURE/Juuzou_Suzuya.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Kiyotaka Ayanokoji",
        "Kiyotaka Ayanokoji est le principal protagoniste du anga/anime You-Zitsu..",
        "./images/CARDS/CULTURE/Kiyotaka_Ayanokoji.jpg",
        1,
        250,
        5,
        2
    ),
    (
        NULL,
        "Erina Nakiri",
        "Erina Nakiri est une des protagonistes féminines de la série et une ancienne rivale de Sôma Yukihira..",
        "./images/CARDS/CULTURE/Erina_Nakiri.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Emma",
        "Emma est l'un des principaux protagonistes du manga/anime The Promised Neverland..",
        "./images/CARDS/CULTURE/Emma.jpg",
        1,
        500,
        5,
        3
    ),
    (
        NULL,
        "Yukina Konoshita",
        "Yukina Fujimoto, connue sous son nom de jeune fille Yukina Kinoshita, est une ancienne mannequin, actrice et personnalité de la télévision japonaise. Elle est représentée par Platinum Production..",
        "./images/CARDS/CELEBRITES/Yukina_Konoshita.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Yuki Kaji",
        "Yuki Kaji est un seiyū et chanteur. Il est plus connu pour les rôles d'Eren Jäger dans L'Attaque des Titans, d'Alibaba Saluja dans Magi, Ayato Kirishima dans Tokyo Ghoul, Meliodas dans Seven Deadly Sins et  Shoto Todoroki dans My Hero Academia..",
        "./images/CARDS/CELEBRITES/Yuki_Kaji.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Yoshiki Hayashi",
        "Yoshiki, nom de scène de Yoshiki Hayashi est un musicien, auteur-compositeur-interprète et producteur de musique japonais. Il joue de plusieurs instruments, dont le piano, la batterie et la guitare..",
        "./images/CARDS/CELEBRITES/Yoshiki_Hayashi.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Yoko Ono",
        "Yoko Ono, née le 18 février 1933 à Tokyo au Japon, est une artiste plasticienne, poète, performeuse, musicienne, chanteuse, compositrice, écrivain, comédienne et cinéaste japonaise..",
        "./images/CARDS/CELEBRITES/Yoko_Ono.jpg",
        1,
        500,
        13,
        3
    ),
    (
        NULL,
        "Yoasobi",
        "Yoasobi est un superduo de musique japonaise, composé du producteur et auteur-compositeur de Vocaloid Ayase et de l'auteur-compositeur-interprète Ikura..",
        "./images/CARDS/CELEBRITES/Yoasobi.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Yamashita Daiki",
        "Daiki Yamashita est un seiyu japonais, interprétant notamment le personnage principal de My Hero Academia, Izuku Midoriya. Il est affilié à l'agence Arts Vision, qui regroupe de nombreux doubleurs japonais..",
        "./images/CARDS/CELEBRITES/Yamashita_Daiki.jpg",
        1,
        100,
        13,
        1
    ),
    (
        NULL,
        "Takeuchi Naoko",
        "Naoko Takeuchi est une mangaka japonaise. Elle est diplômée en pharmacologie de la Kyōritsu Yakka Daigaku, et a écrit son mémoire sur les ultrasons dans les appareillages médicaux..",
        "./images/CARDS/CELEBRITES/Takeuchi_Naoko.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Takehito Koyasu",
        "Takehito Koyasu est un seiyū japonais. Il est affilié et représentant de T's Factory, une agence d'acteurs vocaux qu'il a fondée en octobre 1998..",
        "./images/CARDS/CELEBRITES/Takehito_Koyasu.jpg",
        1,
        100,
        13,
        1
    ),
    (
        NULL,
        "Shinzo Abe",
        "Shinzō Abe est un homme d'État japonais. Il est Premier ministre du Japon du 26 septembre 2006 au 26 septembre 2007 et du 26 décembre 2012 au 16 septembre 2020..",
        "./images/CARDS/CELEBRITES/Shinzo_Abe.jpg",
        1,
        500,
        13,
        3
    ),
    (
        NULL,
        "Shimono Hiro",
        "Hiro Shimono est un comédien de doublage et un chanteur japonais affilié à l'agence I'm Enterprise..",
        "./images/CARDS/CELEBRITES/Shimono_Hiro.jpg",
        1,
        100,
        13,
        1
    ),
    (
        NULL,
        "Ryohei Kimura",
        "Ryōhei Kimura est un acteur, doubleur et chanteur japonais. Ses rôles incluent Ryouta Kise dans la série Kuroko no Basket, Bokuto Koutarou dans Haikyū!!, Eichi Sakurai dans Full Moon o Sagashite..",
        "./images/CARDS/CELEBRITES/Ryohei_Kimura.jpg",
        1,
        100,
        13,
        1
    ),
    (
        NULL,
        "Rumiko Takahashi",
        "Rumiko Takahashi est une dessinatrice de manga. Ses mangas sont d'abord connus à l'étranger par leur adaptation en animés diffusés dans le Club Dorothée : Lamu et Juliette, je t'aime en 1988, Ranma ½ en 1992..",
        "./images/CARDS/CELEBRITES/Rumiko_Takahashi.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Osamu Tezuka",
        "Osamu Tezuka est un mangaka, animateur, character designer, producteur, scénariste d'anime, travaillant sous le pseudonyme homophone 治虫, dont la lecture osamu mushi rappelle le nom japonais d'un insecte : osamushi..",
        "./images/CARDS/CELEBRITES/Osamu_Tezuka.jpg",
        1,
        500,
        13,
        3
    ),
    (
        NULL,
        "Akio Ohtsuka",
        "Akio Ōtsuka est un seiyū japonais. Il est le fils de Chikao Ōtsuka lui-même seiyuu. Depuis novembre 2005, il travaille pour la société Mausu Promotion. On lui confie généralement des rôles d'hommes virils et matures..",
        "./images/CARDS/CELEBRITES/Akio_Ohtsuka.jpg",
        1,
        100,
        13,
        1
    ),
    (
        NULL,
        "Oda Nobunaga",
        "Oda Nobunaga était un daimyo important de la période Sengoku de l'histoire du Japon. Oda Nobunaga a passé sa vie sur les champs de bataille et a conquis une grande partie du Japon avant sa mort en 1582..",
        "./images/CARDS/CELEBRITES/Oda_Nobunaga.jpg",
        1,
        1000,
        13,
        4
    ),
    (
        NULL,
        "Yukio Mishima",
        "Yukio Mishima, nom de plume de Kimitake Hiraoka, est un écrivain japonais, né le 14 janvier 1925, et qui s'est suicidé par seppuku le 25 novembre 1970..",
        "./images/CARDS/CELEBRITES/Yukio_Mishima.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Naruhito",
        "Naruhito, né à l'hôpital de la maison impériale, situé dans le jardin est du Kōkyo dans l'arrondissement de Chiyoda à Tokyo, le 23 février 1960, est le 126ᵉ empereur du Japon depuis le 1ᵉʳ mai 2019..",
        "./images/CARDS/CELEBRITES/Naruhito.jpg",
        1,
        500,
        13,
        3
    ),
    (
        NULL,
        "Naomi Osaka",
        "Naomi Osaka est une joueuse de tennis japonaise, professionnelle depuis 2012. Sa mère est japonaise et son père est haïtien..",
        "./images/CARDS/CELEBRITES/Naomi_Osaka.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Miyamoto Shigeru",
        "Shigeru Miyamoto est un créateur et producteur japonais de jeu vidéo depuis 1977. Après des études de design industriel, Miyamoto entre chez Nintendo en 1977, lorsque la société passe de spécialiste des jeux de cartes aux jeux vidéo..",
        "./images/CARDS/CELEBRITES/Miyamoto_Shigeru.jpg",
        1,
        500,
        13,
        3
    ),
    (
        NULL,
        "Matsuoka Yoshitsugu",
        "Yoshitsugu Matsuoka est un seiyū japonais. Il est notamment connu pour être la voix du personnage principal de la saga Sword Art Online, Kazuto Kirigaya, et pour des personnages principaux dans Demon Slayer, Food Wars, Fire Force, Fate et Tokyo Revengers..",
        "./images/CARDS/CELEBRITES/Matsuoka_Yoshitsugu.jpg",
        1,
        100,
        13,
        1
    ),
    (
        NULL,
        "Masashi Kishimoto",
        "Masashi Kishimoto est un mangaka et un scénariste japonais. Il est notamment connu pour être l'auteur du manga Naruto..",
        "./images/CARDS/CELEBRITES/Masashi_Kishimoto.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Masami Nagasawa",
        "Masami Nagasawa, surnommée « Gasawa » par ses fans, est une actrice, mannequin et animatrice de radio japonaise..",
        "./images/CARDS/CELEBRITES/Masami_Nagasawa.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Kugimiya Rie",
        "Rie Kugimiya est une seiyū japonaise, affiliée à I'm Enterprise..",
        "./images/CARDS/CELEBRITES/Kugimiya_Rie.jpg",
        1,
        100,
        13,
        1
    ),
    (
        NULL,
        "Kenshi Yonezu",
        "Kenshi Yonezu est un musicien, auteur-compositeur-interprète, réalisateur artistique et un illustrateur japonais qui a commencé à diffuser la musique de Vocaloid sous le nom de scène Hachi (ハチ) en 2009 ..",
        "./images/CARDS/CELEBRITES/Kenshi_Yonezu.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Ken Watanabe",
        "Ken Watanabe est un acteur japonais..",
        "./images/CARDS/CELEBRITES/Ken_Watanabe.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Keiichi Tanaami",
        "Keiichi Tanaami est un artiste graphique japonais, l'un des chefs de fil du pop art de l'après-guerre au Japon. Actif depuis les années 1960 en tant qu'artiste multiple : designer, graphique, illustrateur, vidéaste artistique et artiste plastique..",
        "./images/CARDS/CELEBRITES/Keiichi_Tanaami.jpg",
        1,
        500,
        13,
        3
    ),
    (
        NULL,
        "Katsushika Hokusai",
        "Katsushika Hokusai, est un peintre, dessinateur et graveur spécialiste de l’ukiyo-e, ainsi qu'auteur d'écrits populaires japonais surtout connu sous le nom de Hokusai, ou son surnom de « Vieux Fou de dessin »..",
        "./images/CARDS/CELEBRITES/Katsushika_Hokusai.jpg",
        1,
        1000,
        13,
        4
    ),
    (
        NULL,
        "Jun Hasegawa",
        "Jun Hasegawa est un mannequin nippo-américain affilié à la direction de l'île. Hasegawa est devenue un mannequin populaire lorsqu'elle était mannequin exclusive dans le magazine de mode Vivi en 2005..",
        "./images/CARDS/CELEBRITES/Jun_Hasegawa.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Ichiro Suzuki",
        "Ichirō Suzuki, souvent simplement appelé Ichiro, est un joueur de baseball japonais qui a évolué au Japon et aux États-Unis. Il a passé 9 saisons en NPB au sein des Orix BlueWave de Kobe puis chez les Mariners de Seattle de la Ligue majeure en 2001..",
        "./images/CARDS/CELEBRITES/Ichiro_Suzuki.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Hirohiko Araki",
        "Hirohiko Araki est un dessinateur de manga japonais. Il est principalement connu pour être l'auteur du manga JoJo's Bizarre Adventure..",
        "./images/CARDS/CELEBRITES/Hirohiko_Araki.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Hideo Kojima",
        "Hideo Kojima est un créateur de jeu vidéo japonais né le 24 août 1963 à Setagaya. Il est avant tout connu pour sa série de jeux vidéo Metal Gear, vendue à plus de 54,5 millions d'exemplaires..",
        "./images/CARDS/CELEBRITES/Hideo_Kojima.jpg",
        1,
        500,
        13,
        3
    ),
    (
        NULL,
        "Hayao Miyazaki",
        "Hayao Miyazaki est un dessinateur, réalisateur et producteur de films d'animation japonais, cofondateur du Studio Ghibli avec Isao Takahata..",
        "./images/CARDS/CELEBRITES/Hayao_Miyazaki.jpg",
        1,
        500,
        13,
        3
    ),
    (
        NULL,
        "Akira Toriyama",
        "Akira Toriyama est un auteur de manga et character designer japonais. Son œuvre la plus célèbre, Dragon Ball, connaît un très grand succès mondial..",
        "./images/CARDS/CELEBRITES/Akira_Toriyama.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Akira Kurosawa",
        "Akira Kurosawa est un réalisateur, producteur, scénariste et monteur japonais. Avec Yasujirō Ozu et Kenji Mizoguchi, il est considéré comme l'un des cinéastes japonais les plus célèbres et influents de l'histoire..",
        "./images/CARDS/CELEBRITES/Akira_Kurosawa.jpg",
        1,
        500,
        13,
        3
    ),
    (
        NULL,
        "Akihito",
        "Akihito est empereur du Japon, de la mort de son père, Hirohito, le 7 janvier 1989, à son abdication, le 30 avril 2019. Il est officiellement intronisé le 12 novembre 1990..",
        "./images/CARDS/CELEBRITES/Akihito.jpg",
        1,
        500,
        13,
        3
    ),
    (
        NULL,
        "Aimer",
        "Aimer est une chanteuse et parolière de musique pop japonaise affiliée au label Sacra Music et supervisée par agehasprings. Son nom d'artiste est un mélange qui vient de son surnom « Eme » et du verbe français « aimer »..",
        "./images/CARDS/CELEBRITES/Aimer.jpg",
        1,
        250,
        13,
        2
    ),
    (
        NULL,
        "Yakyuu",
        "Le baseball est un sport collectif dérivé des mêmes racines que le cricket, qui se pratique sur un terrain de gazon et de sable. Il se joue avec des battes pour frapper une balle lancée, et des gants pour rattraper la balle..",
        "./images/CARDS/SPORT/Yakyuu.jpg",
        1,
        500,
        12,
        3
    ),
    (
        NULL,
        "Tokyo 6",
        "Tokyo 6, de son nom complet « Baseball des 6 universités de Tōkyō », appelée également en anglais Tokyo Big6 baseball league, est la ligue de baseball universitaire regroupant six des principales universités situés sur Tōkyō.",
        "./images/CARDS/SPORT/Tokyo_6.jpg",
        1,
        250,
        12,
        2
    ),
    (
        NULL,
        "Taijitsu",
        "Le taijitsu est un art martial d'origine japonaise. Il s'agit d'une ancienne appellation générique aux méthodes de combat à mains nues, parfois connue sous le nom de koshi no mawari.",
        "./images/CARDS/SPORT/Taijitsu.jpg",
        1,
        100,
        12,
        1
    ),
    (
        NULL,
        "Sumou",
        "Le sumou est un sport de lutte japonais. Le combat sumo se caractérise par le gabarit des lutteurs ainsi que par les nombreux rites traditionnels qui entourent les combats..",
        "./images/CARDS/SPORT/Sumou.jpg",
        1,
        1000,
        12,
        4
    ),
    (
        NULL,
        "Sawanobori",
        "Sawanobori désigne l'escalade le long des parois rocheuses d'une chute d'eau ou des berges d'un ruisselet, en progressant en direction de la source du cours d'eau. Cette pratique est une forme de grimpe traditionnelle originaire du Japon..",
        "./images/CARDS/SPORT/Sawanobori.jpg",
        1,
        500,
        12,
        3
    ),
    (
        NULL,
        "Ninjutsu",
        "Le ninjutsu est un ensemble d'arts et techniques d'origine traditionnelle, pratiqués par certains espions du Japon féodal, les shinobi, plus connus en Occident sous le nom de ninjas..",
        "./images/CARDS/SPORT/Ninjutsu.jpg",
        1,
        100,
        12,
        1
    ),
    (
        NULL,
        "Nagitajutsu",
        "Le naginatajutsu est un art martial japonais. On y étudie le maniement de la naginata, une hallebarde traditionnelle. Dans l'histoire du Japon, le maniement de la naginata a été associé aux femmes et aujourd'hui ce sont plus de femmes qui pratiquent..",
        "./images/CARDS/SPORT/Nagitajutsu.jpg",
        1,
        100,
        12,
        1
    ),
    (
        NULL,
        "Kyuujutsu",
        "Le kyūjutsu était utilisé sur les champs de bataille bujutsu. L'arc était l'arme symbole du samouraï. Une fois les armes à feu introduites au Japon au XVIᵉ siècle, le kyūjutsu a perdu son utilité et a muté pour devenir le kyūdō..",
        "./images/CARDS/SPORT/Kyuujutsu.jpg",
        1,
        100,
        12,
        1
    ),
    (
        NULL,
        "Kyuudou",
        "Le kyūdō est un art martial japonais, issu du tir à l'arc guerrier. Cette discipline se singularise de sa contrepartie occidentale par les influences propres à la culture japonaise : le zen, le confucianisme, et aussi le taoïsme et le shintoïsme..",
        "./images/CARDS/SPORT/Kyuudou.jpg",
        1,
        250,
        12,
        2
    ),
    (
        NULL,
        "Kenjutsu",
        "Le kenjutsu est l'art du sabre des samouraïs. Il appartient aux anciens arts martiaux japonais et entre dans la catégorie des bujutsu, les techniques guerrières du Japon féodal. Le kenjutsu est seulement enseigné dans les écoles anciennes ou koryū..",
        "./images/CARDS/SPORT/Kenjutsu.jpg",
        1,
        100,
        12,
        1
    ),
    (
        NULL,
        "Kendo",
        "Le kendo est la version moderne du kenjutsu, l'escrime au sabre pratiquée autrefois au Japon par les samouraïs. Par version moderne, il faut comprendre que le kendo n'est pas seulement un art martial mais également un sport de compétition..",
        "./images/CARDS/SPORT/Kendo.jpg",
        1,
        500,
        12,
        3
    ),
    (
        NULL,
        "Kemari",
        "Le kemari est une forme de football qui était populaire au Japon pendant la période Heian..",
        "./images/CARDS/SPORT/Kemari.jpg",
        1,
        100,
        12,
        1
    ),
    (
        NULL,
        "Karate",
        "Le karaté est un art martial, dit japonais. Cependant, il est originaire du royaume de Ryūkyū, un ancien royaume indépendant, annexé par le Japon en 1879..",
        "./images/CARDS/SPORT/Karate.jpg",
        1,
        250,
        12,
        2
    ),
    (
        NULL,
        "Jujitsu",
        "Le jujitsu regroupe des techniques de combat qui furent développées par les samouraïs durant l'époque d'Edo. Elles enseignaient aux samouraïs et aux bushis à se défendre.",
        "./images/CARDS/SPORT/Jujitsu.jpg",
        1,
        250,
        12,
        2
    ),
    (
        NULL,
        "Judou",
        "Le judo est un art martial, créé au Japon en 1882 par Jigorō Kanō en tant que pédagogie physique, mentale et morale..",
        "./images/CARDS/SPORT/Judou.jpg",
        1,
        250,
        12,
        2
    ),
    (
        NULL,
        "Joudou",
        "Le jōdō est un art martial japonais utilisant le jō, un bâton droit de 1,28 m de long et de 2,5 cm de diamètre..",
        "./images/CARDS/SPORT/Joudou.jpg",
        1,
        100,
        12,
        1
    ),
    (
        NULL,
        "Iaijutsu",
        "Iaijutsu est une technique d'épée combative à tirage rapide. Cet art de dessiner l'épée japonaise, le katana, est l'une des disciplines de l'art martial koryū japonais dans l'éducation du guerrier classique..",
        "./images/CARDS/SPORT/Iaijutsu.jpg",
        1,
        100,
        12,
        1
    ),
    (
        NULL,
        "Iaidou",
        "L’iaidō est un art martial d'origine japonaise basé sur l'action de dégainer le sabre et de frapper en un seul geste. Plus exactement, le but est d'exécuter une technique, avant l'adversaire, choisie en fonction du lieu et du contexte de la situation..",
        "./images/CARDS/SPORT/Iaidou.jpg",
        1,
        250,
        12,
        2
    ),
    (
        NULL,
        "Hojoujutsu",
        "L'hojoujutsu est l'art martial traditionnel japonais qui consiste à ligoter une personne à l'aide de cordes. « La corde au Japon est un symbole fort, synonyme d'anéantissement de l'individu..",
        "./images/CARDS/SPORT/Hojoujutsu.jpg",
        1,
        100,
        12,
        1
    ),
    (
        NULL,
        "Hakone Ekiden",
        "Hakone Ekiden, appelé officiellement course ekiden aller-retour Tokyo-Hakone des universités, est l’une des courses universitaires ekiden les plus célèbres organisée entre Tokyo et Hakone au Japon le 2 et 3 janvier de chaque année. .",
        "./images/CARDS/SPORT/Hakone_Ekiden.jpg",
        1,
        500,
        12,
        3
    ),
    (
        NULL,
        "Boutaoshi",
        "Le boutaoshi est un sport de plein air pratiqué lors des fêtes d'école japonaises. La partie jouée par les cadets de l'Académie des forces japonaises d'autodéfense estconnue pour sa taille, quand deux équipes de près de 150 individus s'affrontent..",
        "./images/CARDS/SPORT/Boutaoshi.jpg",
        1,
        250,
        12,
        2
    ),
    (
        NULL,
        "Bajutsu",
        "Le bajutsu est l'art de la guerre à cheval ou art équestre. Cette discipline nécessite une grande complicité avec le cheval car il faut arriver à diriger sa monture sans les rênes..",
        "./images/CARDS/SPORT/Bajutsu.jpg",
        1,
        100,
        12,
        1
    ),
    (
        NULL,
        "Battoujutsu",
        "Le battōdō est une discipline dans l'apprentissage du sabre japonais au même titre que le kenjutsu, le kendo et l'iaidō. Il était enseigné dans les koryu. Certaines écoles perpétuent cet enseignement. Le battōdō est l'art de la coupe. .",
        "./images/CARDS/SPORT/Battoujutsu.jpg",
        1,
        250,
        12,
        2
    ),
    (
        NULL,
        "Aikidou",
        "L'aïkido est un art martial japonais, fondé par Morihei Ueshiba ōsensei entre 1925 et 1969. L'aïkido a été officiellement reconnu par le gouvernement japonais en 1940 sous le nom d’aikibudō et sous le nom aikido en 1942..",
        "./images/CARDS/SPORT/Aikidou.jpg",
        1,
        500,
        12,
        3
    ),
    (
        NULL,
        "Zoni",
        "Le zōni, ou o-zōni, est un bouillon qui se mange avec des baguettes de saule non laquées et qui est constitué de mochi, légumes et sauce soja ou miso blanc. Sa composition varie en fonction des régions du Japon. On le consomme généralement au Nouvel An..",
        "./images/CARDS/NOURRITURE/Zoni.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Youkan gelee",
        "Le yōkan est une pâtisserie japonaise sucrée constituée d'une pâte de haricot rouge du Japon, gélifiée avec de l'agar-agar. Le yokan ressemble à de la pâte de fruits, mais est beaucoup plus fin. Le yokan se déguste souvent autour d'une tasse de thé..",
        "./images/CARDS/NOURRITURE/Youkan_gelee.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Yougashi",
        "Les yougashi sont les patisseries de style occidentales..",
        "./images/CARDS/NOURRITURE/Yougashi.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Yosenabe",
        "Le yosenabe est une fondue japonaise composée d'un bouillon clair, de tofu, de salade, de viande et de poisson..",
        "./images/CARDS/NOURRITURE/Yosenabe.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Yatsuhashi",
        "Le yatsuhashi est un gâteau japonais. C'est une spécialité de Kyōto. Le nom de yatshuhashi est tiré de celui d'un joueur de koto, appelé Yatsuhashi Kengyō. Il existe deux types de yatsuhashi, une version cuite et une version à la vapeur..",
        "./images/CARDS/NOURRITURE/Yatsuhashi.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Yakitori",
        "Les yakitori désignent, dans la cuisine japonaise, des brochettes dont chaque morceau a la taille d'une bouchée, cuites sur un gril. Elles sont traditionnellement à base de poulet..",
        "./images/CARDS/NOURRITURE/Yakitori.jpg",
        5,
        500,
        11,
        3
    ),
    (
        NULL,
        "Yakisoba",
        "Les yakisoba ou chǎo miàn ou chow mein sont une recette de cuisine traditionnelle de cuisine chinoise à base de nouilles sautées, agrémentées de divers variantes d'ingrédients, et de sauce yakisoba..",
        "./images/CARDS/NOURRITURE/Yakisoba.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Yakiniku",
        "Yakiniku est une méthode japonaise de cuisson des viandes et des légumes au charbon de bois, au gaz ou sur une plaque chauffante. L'ingrédient principal est du bœuf mariné, bien qu'on puisse trouver d'autres viandes comme le poulet ou les abats..",
        "./images/CARDS/NOURRITURE/Yakiniku.jpg",
        5,
        500,
        11,
        3
    ),
    (
        NULL,
        "Yakigashi",
        "Yakigashi est un terme général pour les snacks fabriqués par cuisson. Il comprend les gâteaux, les biscuits, les gaufrettes, les madeleines, etc..",
        "./images/CARDS/NOURRITURE/Yakigashi.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Yakigyoza",
        "Les yakigyoza sont de loin le type de gyoza le plus courant. On les fait frire dans une poêle chaude avant d'y verser un mélange d'eau et de fécule de maïs et de recouvrir le tout pendant quelques minutes..",
        "./images/CARDS/NOURRITURE/Yakigyoza.jpg",
        5,
        500,
        11,
        3
    ),
    (
        NULL,
        "Wagashi",
        "Les wagashi sont les pâtisseries traditionnelles japonaises : “wa” signifiant Japon et “gashi” signifiant gâteau. Ils sont généralement composé d'anko ou de shiro-an et entouré de pâte de riz ou de pâte de patates douces..",
        "./images/CARDS/NOURRITURE/Wagashi.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Unadon",
        "Le unagidon, unadon est un donburi avec des anguilles grillées et de la sauce teriyaki. .",
        "./images/CARDS/NOURRITURE/Unadon.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Udon",
        "Les udon sont, avec les soba, les pâtes les plus consommées au Japon. Elles sont préparées avec de la farine de blé tendre. Ce sont les pâtes japonaises les plus épaisses : de 2 à 4 mm de largeur. Leur consistance est molle et élastique..",
        "./images/CARDS/NOURRITURE/Udon.jpg",
        5,
        500,
        11,
        3
    ),
    (
        NULL,
        "Tonkatsu",
        "Le tonkatsu est un plat japonais à base de porc pané et frit. Il est accompagné de sauce Worcestershire, ainsi que de chou émincé et du karashi. On le sert souvent avec du riz et de la soupe miso..",
        "./images/CARDS/NOURRITURE/Tonkatsu.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Teriyaki",
        "Dans la cuisine japonaise, un mets teriyaki est une viande, un substitut, un poisson ou des crustacés grillés ou rôtis dans une sauce soja sucrée au mirin. Le résultat est une viande ou un poisson laqué..",
        "./images/CARDS/NOURRITURE/Teriyaki.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Teppanyaki",
        "Le teppanyaki est un mot japonais désignant un type de cuisson japonaise où l'on utilise une plaque chauffante pour cuire les aliments. .",
        "./images/CARDS/NOURRITURE/Teppanyaki.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Tenpura",
        "est un plat japonais typique composé généralement de fruits de mer, de viande et de légumes qui ont été battus et frits. Le plat a été introduit par les Portugais à Nagasaki grâce aux techniques de cuisson des beignets au XVIe siècle..",
        "./images/CARDS/NOURRITURE/Tenpura.jpg",
        5,
        500,
        11,
        3
    ),
    (
        NULL,
        "Tamago kake gohan",
        "Tamago kake gohan est un plat populaire japonais, souvent mangé au petit déjeuner. Il consiste en du riz bouilli mélangé à un œuf cru battu, avec ou sans ajout de sauce soja. .",
        "./images/CARDS/NOURRITURE/Tamago_kake_gohan.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Takoyaki",
        "Le takoyaki est un mets de la cuisine japonaise classé dans les konamon et une spécialité d'Ōsaka, se présentant sous forme de boulettes de pâte, semblable à la pâte à crêpe, contenant des morceaux de poulpe, cuites en moule, comme les gaufres..",
        "./images/CARDS/NOURRITURE/Takoyaki.jpg",
        5,
        500,
        11,
        3
    ),
    (
        NULL,
        "Takikomi gohan",
        "Takikomigohan est une expression japonaise signifiant littéralement « riz cuit avec ». Le takikomigohan est un plat de riz japonais assaisonné avec du dashi et de la sauce de soja, accompagné de champignons, de légumes, de viande ou de poisson..",
        "./images/CARDS/NOURRITURE/Takikomi_gohan.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Sushi",
        "Le sushi est un plat traditionnel japonais, composé d'un riz vinaigré appelé shari combiné avec un autre ingrédient appelé neta qui est habituellement du poisson cru ou des fruits de mer..",
        "./images/CARDS/NOURRITURE/Sushi.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Suigyoza",
        "Le suigyoza est un plat traditionnel japonais, qui est preparé bouilli et servi dans un bouillon léger..",
        "./images/CARDS/NOURRITURE/Suigyoza.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Soupe de Miso",
        "La soupe miso est une recette de cuisine traditionnelle de la cuisine japonaise, de bouillon à base de miso et de dashi. Elle est, avec le riz japonais et les soupes suimono, un des plats de base des trois repas traditionnels japonais..",
        "./images/CARDS/NOURRITURE/Soupe_de_Miso.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Somen",
        "Les sōmen sont des nouilles japonaises très fines et blanches, faites à base de farine de blé. On les mange généralement froides en soupe l'été. Elles ont la particularité de cuire très rapidement..",
        "./images/CARDS/NOURRITURE/Somen.jpg",
        5,
        220,
        11,
        2
    ),
    (
        NULL,
        "Soba",
        "Les soba sont un mets japonais constitué de pâtes de sarrasin. Avec les udon et les rāmen, elles sont les pâtes les plus consommées au Japon..",
        "./images/CARDS/NOURRITURE/Soba.jpg",
        5,
        500,
        11,
        3
    ),
    (
        NULL,
        "Shogoyaki",
        "Le shogayaki est un plat de la cuisine japonaise.Le shogayaki réfère donc par extension au porc shogayaki. C'est le second plat de porc le plus populaire après le tonkatsu..",
        "./images/CARDS/NOURRITURE/Shogoyaki.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Shioyaki",
        "Shioyaki est une technique \"grillé au sel\". Cette technique, qui est aussi le nom du plat, permet de créer un saumon avec une croûte au goût d'umami et une peau croustillante..",
        "./images/CARDS/NOURRITURE/Shioyaki.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Shabu Shabu",
        "Le shabu-shabu est une variante japonaise de la fondue chinoise, proche du sukiyaki. Shabu-shabu est l’onomatopée japonaise correspondant au bruit de la viande plongée dans le bouillon chaud..",
        "./images/CARDS/NOURRITURE/Shabu_Shabu.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Senbei",
        "Le senbei est une galette de riz gluant traditionnelle japonaise. Il en existe de diverses formes, tailles et saveurs, parfois sucrées, mais plutôt salées car enrobées de sauce de soja..",
        "./images/CARDS/NOURRITURE/Senbei.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Sashimi",
        "Le sashimi est un mets traditionnel de la gastronomie japonaise, art culinaire attesté dès le XVᵉ siècle, composé de tranches de poisson frais consommé cru. Le sashimi ne doit pas être confondu avec le sushi, préparation variante à base de shari..",
        "./images/CARDS/NOURRITURE/Sashimi.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Ramen",
        "Un rāmen est une recette de cuisine traditionnelle de la cuisine japonaise, à base de nombreuses variantes de bouillons de nouilles, agrémentés de poissons, viandes, légumes, algues, œuf, et assaisonnements miso ou sauce de soja...",
        "./images/CARDS/NOURRITURE/Ramen.jpg",
        5,
        1000,
        11,
        4
    ),
    (
        NULL,
        "Oyakodon",
        "L'oyakodon est un donburi, un mets japonais composé d'une garniture sur un bol de riz. Ce plat est élaboré avec du poulet et des œufs. Dans le même esprit, il existe aussi le kaisen oyakodon composé de saumon et d’œufs de saumon..",
        "./images/CARDS/NOURRITURE/Oyakodon.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Onigiri",
        "L'onigiri est une préparation culinaire japonaise consistant en une boulette de riz, généralement enveloppée d'une algue nori. On l'appelle aussi omusubi en fonction de la région au Japon mais les deux termes désignent plus ou moins la même chose. .",
        "./images/CARDS/NOURRITURE/Onigiri.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Omuraisu",
        "L'Omuraisu est un exemple de la cuisine japonaise yōshoku née par l'importation et l'adaptation de recettes occidentales après l'abrogation du sakoku au début de l'ère Meiji. C'est une omelette contenant du riz frit habituellement accompagné de ketchup..",
        "./images/CARDS/NOURRITURE/Omuraisu.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Okonomiyaki",
        "L’okonomiyaki, littéralement okonomi et yaki, est un plat japonais composé d'une pâte qui enrobe un nombre d'ingrédients très variables découpés en petits morceaux, le tout étant cuit sur une plaque chauffante..",
        "./images/CARDS/NOURRITURE/Okonomiyaki.jpg",
        5,
        500,
        11,
        3
    ),
    (
        NULL,
        "Oden",
        "L'oden est un pot-au-feu japonais, c'est une sorte de nabe..",
        "./images/CARDS/NOURRITURE/Oden.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Ochazuke",
        "L'ochazuke est un plat très simple de la cuisine japonaise. Il est préparé en versant de l'eau chaude ou du thé vert sur un bol de riz. On peut ajouter au-dessus des umeboshi, du sésame, du saumon grillé, des morceaux de dorade, des œufs de morues,....",
        "./images/CARDS/NOURRITURE/Ochazuke.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Nikujaga",
        "Le nikujaga est un plat japonais constitué de viandes, pommes de terre et oignons cuits dans un bouillon sucré au soja, inventé à la fin du XIXᵉ siècle..",
        "./images/CARDS/NOURRITURE/Nikujaga.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Mochigashi",
        "Le mochi est une préparation à base de riz gluant, appelé mochi gome, qui accompagne de nombreuses recettes au Japon. On l'appelle dango mochi ou simplement dango lorsqu'il prend la forme de boulettes..",
        "./images/CARDS/NOURRITURE/Mochigashi.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Manjuu",
        "Les manjū sont de petits gâteaux ronds et blancs, cuits à la vapeur. Ils sont préparés avec de la pâte de haricots rouges, enveloppée d'une pâte à base de farine, d'eau, de sucre et de fécule..",
        "./images/CARDS/NOURRITURE/Manjuu.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Kushiage",
        "Le kushiage est un plat japonais à base de bœuf pané et frit. En japonais, kushi signifie « brochette », katsu veut dire « côtelette » et age signifie « friture »..",
        "./images/CARDS/NOURRITURE/Kushiage.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Korokke",
        "La korokke, depuis le néerlandais kroket, reprenant le français « croquette » est une croquette de pomme de terre, généralement faite de purée de pommes de terre, mélangée avec de la viande de bœuf hachée et de l'oignon cuit..",
        "./images/CARDS/NOURRITURE/Korokke.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Kayu",
        "Le kayu est du riz cuit avec une grande quantité d'eau, ce qui lui donne un aspect de boullie..",
        "./images/CARDS/NOURRITURE/Kayu.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Katsudon",
        "Le katsudon est un mets de la cuisine japonaise qui consiste en un bol de riz chaud surmonté de tonkatsu : une tranche de porc d'abord panée, puis cuite avec un œuf battu. Le mot katsudon est un mélange des mots japonais tonkatsu et donburi..",
        "./images/CARDS/NOURRITURE/Katsudon.jpg",
        5,
        250,
        11,
        2
    ),
    (
        NULL,
        "Kareraisu",
        "Le curry japonais est l'un des plats les plus populaires au Japon. Il est servi sous trois formes principales : le riz au curry, le karē udon et le karē-pan. Il est habituellement plus épais et a un goût plus doux et moins épicé que son équivalent indien..",
        "./images/CARDS/NOURRITURE/Kareraisu.jpg",
        5,
        500,
        11,
        3
    ),
    (
        NULL,
        "Kakiage",
        "Le kakiage est une friture de légumes. Généralement, on utilise des oignons, des carottes ou des haricots verts émincés, mélangés avec de la farine, un peu d'eau et du sel. On forme des galettes et on les fait frire. .",
        "./images/CARDS/NOURRITURE/Kakiage.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Hiyamugi nouilles",
        "Hiyamugi est un type de nouilles japonaises à base de farine de blé, de sel et d'eau. Ces nouilles sont fabriquées comme les sōmen et sont très similaires à celles-ci, mais moins fines..",
        "./images/CARDS/NOURRITURE/Hiyamugi_nouilles.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Gyuudon",
        "Le gyūdon est un mets de la cuisine japonaise qui consiste en un bol de riz chaud surmonté de lamelles de bœuf, d'oignon et parfois d’œuf..",
        "./images/CARDS/NOURRITURE/Gyuudon.jpg",
        5,
        500,
        11,
        3
    ),
    (
        NULL,
        "Gohan riz",
        "Le riz cuit fait référence au riz qui a été cuit à la vapeur ou à l'ébullition. Les termes riz cuit à la vapeur ou riz bouilli sont également couramment utilisés..",
        "./images/CARDS/NOURRITURE/Gohan_riz.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Doria",
        "Le doria est un gratin japonais servi sur du riz. Ces ingrédients sont à l'origine du riz pilaf, des crevettes et des noix de Saint-Jacques recouverts de béchamelle et de fromage cuit au four..",
        "./images/CARDS/NOURRITURE/Doria.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Donburi",
        "Le donburi est un plat traditionnel de la cuisine japonaise composé d'un grand bol de riz sur lequel on dispose toutes sortes de garnitures. Il y a le katsudon avec du tonkatsu, le gyūdon avec des lamelles de bœuf, l'unagidon avec des anguilles grillées..",
        "./images/CARDS/NOURRITURE/Donburi.jpg",
        5,
        500,
        11,
        3
    ),
    (
        NULL,
        "Dashi",
        "Le dashi est un type de bouillon clair réalisé à partir de différents ingrédients séchés infusés dans de l'eau. Il sert notamment à l'élaboration de la soupe miso, de soupes de nouilles, de sauces et de nombreuses préparations mijotées..",
        "./images/CARDS/NOURRITURE/Dashi.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Dango",
        "Le dango est une boulette faite à base de mochi, une pâte de riz gluant et d'eau. Elle est souvent servie avec du thé vert. Les dango sont mangées toute l'année, mais il y a des variétés correspondant à certaines saisons et à certaines régions du Japon..",
        "./images/CARDS/NOURRITURE/Dango.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Daifuku",
        "Le daifuku est une sucrerie japonaise qui consiste en un mochi, dont la pâte extérieure est faite de riz gluant, rempli en son centre, par exemple de pâte de haricots rouges azuki sucrée, nommée anko..",
        "./images/CARDS/NOURRITURE/Daifuku.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Chirashizushi",
        "Le chirashizushi ou chirashi sushi ou chirashi est une recette de cuisine traditionnelle et un art culinaire de la cuisine japonaise à base de « sushis éparpillés dans un grand bol japonais »..",
        "./images/CARDS/NOURRITURE/Chirashizushi.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Chahan",
        "Le riz frit ou riz revenu est un mets composé de riz sauté au wok ou à la poêle, le plus souvent mélangé à d’autres ingrédients tels qu’œufs, légumes, produits de la mer ou viande. Il est souvent consommé seul, mais peut aussi accompagner un autre plat..",
        "./images/CARDS/NOURRITURE/Chahan.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Bonbon Konpeitou",
        "Le konpeitō ou kompeitō est un bonbon japonais en forme de petite boule à piques, composé de sucre coloré légèrement parfumé. Son nom vient du portugais confeito. Introduit au Japon aux alentours des XVᵉ et XVIᵉ siècles par des commerçants venus d'Europe..",
        "./images/CARDS/NOURRITURE/Bonbon_Konpeitou.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Bonbon Karintou",
        "Un karintō est un wagashi, pâtisserie traditionnelle japonaise. C'est un biscuit sucré à la farine de blé..",
        "./images/CARDS/NOURRITURE/Bonbon_Karintou.jpg",
        5,
        100,
        11,
        1
    ),
    (
        NULL,
        "Bento",
        "Le bento, du japonais bentō ou o-bentō, « pratique », est un repas individuel complet traditionnel de la culture japonaise, prêt à consommer, composé de diverses préparations cuisinées de la cuisine japonaise..",
        "./images/CARDS/NOURRITURE/Bento.jpg",
        5,
        1000,
        11,
        4
    ),
    (
        NULL,
        "Yoshida Tadatomo",
        "Tadatomo Yoshida est un homme politique japonais. Il a été élu pour la première fois aux élections de la Chambre des conseillers en 2010. Il était auparavant membre de l'assemblée préfectorale dans la préfecture de Ōita..",
        "./images/CARDS/POLITIQUE/Yoshida_Tadatomo.jpg",
        1,
        250,
        7,
        2
    ),
    (
        NULL,
        "Yamatani Eriko",
        "Eriko Yamatani est une personnalité politique japonaise. Son nom d'usage est Yamatani son nom officiel est Eriko Ogawa..",
        "./images/CARDS/POLITIQUE/Yamatani_Eriko.jpg",
        1,
        250,
        7,
        2
    ),
    (
        NULL,
        "Yamamoto Junzo",
        "Yamamoto Junzo est un homme politique japonais du Parti libéral démocrate, membre de la Chambre des conseillers de la Diète (assemblée législative nationale)..",
        "./images/CARDS/POLITIQUE/Yamamoto_Junzo.jpg",
        1,
        250,
        7,
        2
    ),
    (
        NULL,
        "Yamada Hiroshi",
        "Yamada Hiroshi est un homme politique japonais. Il est un ancien membre de la Chambre des représentants et a été le premier secrétaire général du Parti pour les générations futures, un parti d'opposition formé en août 2014..",
        "./images/CARDS/POLITIQUE/Yamada_Hiroshi.jpg",
        1,
        500,
        7,
        3
    ),
    (
        NULL,
        "Yakura Katsuo",
        "Yakura Katsuo est un homme politique japonais. Il est membre de la Chambre des Conseillers..",
        "./images/CARDS/POLITIQUE/Yakura_Katsuo.jpg",
        1,
        100,
        7,
        1
    ),
    (
        NULL,
        "Ueda Kiyoshi",
        "Ueda Kiyoshi est un homme politique japonais actuellement membre de la Chambre des conseillers pour le district de Saitama après avoir remporté une élection partielle en 2019. Il a été gouverneur de la préfecture de Saitama de 2003 à 2019..",
        "./images/CARDS/POLITIQUE/Ueda_Kiyoshi.jpg",
        1,
        500,
        7,
        3
    ),
    (
        NULL,
        "Toyoda Toshiro",
        "Toyoda Toshiro est un homme politique japonais. Il est membre de la chambre des conseillers et est du parti libéral-démocrate..",
        "./images/CARDS/POLITIQUE/Toyoda_Toshiro.jpg",
        1,
        100,
        7,
        1
    ),
    (
        NULL,
        "Toshio Ogawa",
        "Toshio Ogawa est un homme politique japonais du parti démocrate constitutionnel et un membre de la Chambre des conseillers de la Diète (assemblée législative nationale). Ogawa est un ancien ministre de la Justice..",
        "./images/CARDS/POLITIQUE/Toshio_Ogawa.jpg",
        1,
        500,
        7,
        3
    ),
    (
        NULL,
        "Tokushige Masayuki",
        "Tokushige Masayuki est un membre de la Chambre des conseillers et est du parti libéral-démocrate..",
        "./images/CARDS/POLITIQUE/Tokushige_Masayuki.jpg",
        1,
        100,
        7,
        1
    ),
    (
        NULL,
        "Tokunaga Eri",
        "Tokunaga Eri est une femme politique japonaise et ancienne journaliste de télévision du Parti démocratique du Japon. Elle est actuellement membre de la Chambre des conseillers pour le district At-large d'Hokkaido..",
        "./images/CARDS/POLITIQUE/Tokunaga_Eri.jpg",
        1,
        250,
        7,
        2
    ),
    (
        NULL,
        "Tadayoshi Ichida",
        "Tadayoshi Ichida est un homme politique japonais, membre de la Chambre des conseillers du Parti communiste japonais. Depuis le congrès de 2000, il est également secrétaire général du parti..",
        "./images/CARDS/POLITIQUE/Tadayoshi_Ichida.jpg",
        1,
        250,
        7,
        2
    ),
    (
        NULL,
        "Santo Akiko",
        "Santo Akiko est une femme politique japonais qui occupe le poste de Présidente de la Chambre des Conseillers du Japon. Membre du Parti libéral démocrate, elle était auparavant vice-présidente de la Chambre des conseillers..",
        "./images/CARDS/POLITIQUE/Santo_Akiko.jpg",
        1,
        1100,
        7,
        4
    ),
    (
        NULL,
        "Saito Yoshitaka",
        "Saito Yoshitaka est un homme politique japonais qui siège à la Chambre des conseillers du Japon depuis 2010. Il représente le district d'Aichi at-large et est membre du Parti démocratique du Japon..",
        "./images/CARDS/POLITIQUE/Saito_Yoshitaka.jpg",
        1,
        100,
        7,
        1
    ),
    (
        NULL,
        "Muroi Kunihiko",
        "Muroi Kunihiko est un homme politique japonais du parti Initiatives d'Osaka, membre de la Chambre des conseillers à la Diète (assemblée législative nationale)..",
        "./images/CARDS/POLITIQUE/Muroi_Kunihiko.jpg",
        1,
        100,
        7,
        1
    ),
    (
        NULL,
        "Motoe Taichirou",
        "Motoe Taichirou est un homme politique japonais et membre de la Chambre des conseillers. C'est aussi un avocat..",
        "./images/CARDS/POLITIQUE/Motoe_Taichirou.jpg",
        1,
        100,
        7,
        1
    ),
    (
        NULL,
        "Matsumura Yoshifumi",
        "Matsumura Yoshifumi est un homme politique japonais du Parti libéral démocrate, membre de la Chambre des conseillers de la Diète (assemblée législative nationale). .",
        "./images/CARDS/POLITIQUE/Matsumura_Yoshifumi.jpg",
        1,
        100,
        7,
        1
    ),
    (
        NULL,
        "Katsuei Hirasawa",
        "Katsuei Hirasawa est un homme politique japonais qui a occupé le poste de ministre de la reconstruction dans le cabinet de Yoshihide Suga. Membre de la Chambre des représentants, Hirasawa est membre du Parti libéral démocrate..",
        "./images/CARDS/POLITIQUE/Katsuei_Hirasawa.jpg",
        1,
        500,
        7,
        3
    ),
    (
        NULL,
        "Ishibashi Michihiro",
        "ishibashi Michihiro est un homme politique japonais du Parti démocratique constitutionnel et un ancien dirigeant syndical. Il est actuellement membre de la Chambre des conseillers, ayant été élu sur la liste de la représentation nationale en 2010..",
        "./images/CARDS/POLITIQUE/Ishibashi_Michihiro.jpg",
        1,
        100,
        7,
        1
    ),
    (
        NULL,
        "Hiraki Daisaku",
        "Hiraki Daisaku est un homme politique japonais. Il est membre de la Chambre des conseillers depuis 2013, représentant le parti Komeito..",
        "./images/CARDS/POLITIQUE/Hiraki_Daisaku.jpg",
        1,
        100,
        7,
        1
    ),
    (
        NULL,
        "Hasegawa Gaku",
        "Hasegawa Gaku est un membre de la Chambre des conseillers du Japon, originaire de Hokkaido. Il appartient au Parti libéral démocrate..",
        "./images/CARDS/POLITIQUE/Hasegawa_Gaku.jpg",
        1,
        100,
        7,
        1
    ),
    (
        NULL,
        "Fukuoka Takamaro",
        "Fukuoka Takamaro est un homme politique japonais du Parti libéral démocrate, membre de la Chambre des représentants à la Diète (assemblée législative nationale). .",
        "./images/CARDS/POLITIQUE/Fukuoka_Takamaro.jpg",
        1,
        100,
        7,
        1
    ),
    (
        NULL,
        "Chambre des conseillers",
        "La Chambre des conseillers est la chambre haute de la Diète du Japon. Elle détient le pouvoir législatif concurremment avec la Chambre des représentants. Il y a 245 conseillers où chacun à un mandat de 6 ans..",
        "./images/CARDS/POLITIQUE/Chambre_des_conseillers.jpg",
        1,
        100,
        7,
        1
    ),
    (
        NULL,
        "Baba Seishi",
        "Baba Seishi est un homme politique japonais du Parti libéral démocrate, membre de la Chambre des conseillers de la Diète (assemblée législative nationale)..",
        "./images/CARDS/POLITIQUE/Baba_Seishi.jpg",
        1,
        250,
        7,
        2
    ),
    (
        NULL,
        "Akiko Kurabayashi",
        "Akiko Kurabayashi est une infirmière et femme politique japonaise, membre du Parti communiste japonais..",
        "./images/CARDS/POLITIQUE/Akiko_Kurabayashi.jpg",
        1,
        100,
        7,
        1
    ),
    (
        NULL,
        "Trone du crysantheme",
        "Le trône du chrysanthème, en japonais kōi est le nom couramment donné au trône impérial du Japon, du fait que le mon ou insigne héraldique du chrysanthème à seize pétales est utilisé par les empereurs depuis la période Kamakura..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Trone_du_crysantheme.jpg",
        1,
        500,
        9,
        3
    ),
    (
        NULL,
        "Tresors sacres japon",
        "Les Trois trésors sacrés du Japon, appelés aussi Trésor impérial du Japon, sont trois objets légendaires : L'épée, Kusanagi-no-Tsurugi, Le miroir de bronze, Yata-no-Kagami et  Le magatama, Yasakani-no-Magatama..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Tresors_sacres_japon.jpg",
        1,
        250,
        9,
        2
    ),
    (
        NULL,
        "Torii",
        "Un torii est un portail traditionnel japonais. Il est communément érigé à l’entrée d’un sanctuaire shintoïste, afin de séparer l’enceinte sacrée de l’environnement profane. Il est aussi considéré comme un symbole du shintoïsme..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Torii.jpg",
        1,
        500,
        9,
        3
    ),
    (
        NULL,
        "Temple japonais Kinkaku ji",
        "Le Kinkaku-ji est le nom usuel du Rokuon-ji littérallement « temple impérial du jardin des cerfs » situé à Kyōto au Japon..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Temple_japonais_Kinkaku_ji.jpg",
        1,
        1000,
        9,
        4
    ),
    (
        NULL,
        "Sceau prive du Japon",
        "Le sceau privé du Japon est le sceau officiel de l'empereur du Japon. Il est de forme carrée avec l’inscription « 天皇御璽 » inscrite selon l'écriture scripte des sceaux. Il a deux lignes d'écriture verticale. .",
        "./images/CARDS/SYMBOLES_JAPONAIS/Sceau_prive_du_Japon.jpg",
        1,
        100,
        9,
        1
    ),
    (
        NULL,
        "Sceau du gouvernement",
        "Le sceau du gouvernement du Japon, aussi appelé sceau du paulownia, est un mon ou emblème utilisé par le Cabinet du Japon sur les documents officiels. Une version est utilisée comme emblème officiel du bureau du Premier ministre du Japon..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Sceau_du_gouvernement.jpg",
        1,
        100,
        9,
        1
    ),
    (
        NULL,
        "Sceau detat du Japon",
        "Le grand sceau du Japon est le sceau d'État officiel du Japon. De forme cubique, les caractères 大日本國璽 (« sceau national du grand Japon ») sont issus de l'ancienne écriture de sceau chinoise..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Sceau_detat_du_Japon.jpg",
        1,
        100,
        9,
        1
    ),
    (
        NULL,
        "Samurai Japon",
        "Le samouraï, à ne pas confondre avec le bushi, est un membre de la classe guerrière qui a dirigé le Japon féodal durant près de 700 ans..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Samurai_Japon.jpg",
        1,
        250,
        9,
        2
    ),
    (
        NULL,
        "Sakura",
        "Les sakura sont les cerisiers ornementaux du Japon (dont Prunus serrulata) ainsi que leurs fleurs. La cerise sakuranbo vient d'une autre espèce de Prunus..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Sakura.jpg",
        1,
        250,
        9,
        2
    ),
    (
        NULL,
        "Riz japonais",
        "Le riz japonais fait référence à un certain nombre de cultivars à grains courts de riz Japonica, notamment le riz ordinaire et le riz gluant. Le riz japonais ordinaire, est l'aliment de base du régime japonais et se compose de grains courts translucides..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Riz_japonais.jpg",
        5,
        100,
        9,
        1
    ),
    (
        NULL,
        "Omamori porte-bonheur",
        "Les Omamori sont des amulettes que l’on trouve dans les sanctuaires Shinto et dans les temples bouddhistes. Ces talismans s’utilisent pour attirer la chance et pour la protection..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Omamori_porte-bonheur.jpg",
        3,
        1000,
        9,
        4
    ),
    (
        NULL,
        "Masque Kabuki",
        "Le kabuki est la forme épique du théâtre japonais traditionnel. Centré sur un jeu d'acteur à la fois spectaculaire et codifié, il se distingue par le maquillage élaboré et les masques des personnages..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Masque_Kabuki.jpg",
        4,
        250,
        9,
        2
    ),
    (
        NULL,
        "Manekineko",
        "Un maneki-neko est une statue traditionnelle japonaise en céramique ou en porcelaine, représentant un chat assis et levant la patte au niveau de l'oreille..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Manekineko.jpg",
        1,
        500,
        9,
        3
    ),
    (
        NULL,
        "La fleur des empereurs le crysantheme",
        "La fleur de chrysanthème est considérée comme la plus noble de toutes par les Japonais. C'est ainsi qu'elle est devenu le symbole de la famille impériale..",
        "./images/CARDS/SYMBOLES_JAPONAIS/La_fleur_des_empereurs_le_crysantheme.jpg",
        1,
        250,
        9,
        2
    ),
    (
        NULL,
        "Kimi ga yo Hymne nationale du_Japon",
        "Kimi ga yo est, depuis 1999, l'hymne officiel du Japon. Ce poème, adressé à l'empereur du Japon, est un waka, ancien style poétique japonais de l'époque de Heian. .",
        "./images/CARDS/SYMBOLES_JAPONAIS/Kimi_ga_yo_Hymne_nationale_du_Japon.jpg",
        1,
        500,
        9,
        3
    ),
    (
        NULL,
        "Grues japonaises",
        "La grue du Japon, grue de Mandchourie ou encore grue à couronne rouge est un grand échassier de la famille des gruidae. C'est un des plus grands oiseaux du monde..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Grues_japonaises.jpg",
        1,
        100,
        9,
        1
    ),
    (
        NULL,
        "Geisha",
        "Une geisha est au Japon une artiste et une dame de compagnie, qui consacre sa vie à la pratique artistique raffinée des arts traditionnels japonais pour des prestations d'accompagnement et de divertissement, pour une clientèle très aisée..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Geisha.jpg",
        1,
        500,
        9,
        3
    ),
    (
        NULL,
        "Drapeau Japon",
        "Le drapeau du Japon est un drapeau blanc avec un grand disque rouge en son centre. C'est le drapeau civil, le drapeau d'État, le pavillon marchand et le pavillon d'État du Japon. Il est connu sous le nom de Hinomaru ou Nisshōki officiellement..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Drapeau_Japon.jpg",
        1,
        100,
        9,
        1
    ),
    (
        NULL,
        "Daruma",
        "Daruma est le nom japonais de Bodhidharma. Le daruma est une figurine de papier mâché japonaise qui a la forme d'un moine bouddhiste. Un daruma est surtout, dans la culture japonaise, une figurine à vœux, chance et prospérité..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Daruma.jpg",
        1,
        500,
        9,
        3
    ),
    (
        NULL,
        "Cerfs Sika",
        "Le cerf sika est une espèce de mammifères artiodactyles de la famille des cervidés qui se rencontre en Asie..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Cerfs_Sika.jpg",
        1,
        100,
        9,
        1
    ),
    (
        NULL,
        "Carpes Koi",
        "La carpe koï ou carpe d'ornement est un poisson appartenant à une des variétés ornementales de la carpe commune. Il y en a beaucoup en Asie dont au Japon !.",
        "./images/CARDS/SYMBOLES_JAPONAIS/Carpes_Koi.jpg",
        1,
        100,
        9,
        1
    ),
    (
        NULL,
        "Barils de Sake",
        "Les barils de saké disposés à l’entrée des temples Shinto sont des offrandes des brasseurs et producteurs. Pour les cérémonies et les rituels, les prêtres Shinto utilisent du saké en petite quantité..",
        "./images/CARDS/SYMBOLES_JAPONAIS/Barils_de_Sake.jpg",
        1,
        250,
        9,
        2
    ),
    (
        NULL,
        "Uemura Naomi",
        "Uemura Naomi était un aventurier japonais particulièrement connu pour ses exploits en solitaire. Par exemple, il a été la première personne à atteindre le pôle Nord en solo, à faire du rafting sur l'Amazone en solo et à escalader Denali en solo..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Uemura_Naomi.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Toyotomi Hideyoshi",
        "Toyotomi Hideyoshi est le deuxième des trois unificateurs du Japon durant la période Sengoku : Oda Nobunaga, Toyotomi Hideyoshi et Tokugawa Ieyasu. .",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Toyotomi_Hideyoshi.jpg",
        1,
        500,
        10,
        3
    ),
    (
        NULL,
        "Tokugawa Ieyasu",
        "Tokugawa Ieyasu est daimyo puis shogun du Japon. Il est le dernier des trois unificateurs du Japon de l'époque Sengoku, après Oda Nobunaga et Toyotomi Hideyoshi..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Tokugawa_Ieyasu.jpg",
        1,
        500,
        10,
        3
    ),
    (
        NULL,
        "Tange Kenzo",
        "Tange Kenzo était un architecte et urbaniste japonais. Il a réalisé plusieurs batiment comme le siège social de la Fuji TV, le Hôtel Tokyo Dome, la cathédrale Sainte-Marie de Tokyo, le mémorial pour les victimes d'Hiroshima,....",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Tange_Kenzo.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "taishi Shotoku",
        "Le prince Shōtoku était un régent et un homme politique de la Cour impériale du Japon. Il joua un rôle majeur dans l'implantation au Japon du bouddhisme et d'éléments de la culture chinoise..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/taishi_Shotoku.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Suzuki Daisetsu",
        "Suzuki Daisetsu est un érudit et penseur à qui l'on doit de nombreux ouvrages et articles sur le bouddhisme et sur le zen, qui ont joué un rôle important dans l'intérêt porté au zen en Occident..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Suzuki_Daisetsu.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Shibusawa Eiichi",
        "Shibusawa Eiichi est un industriel japonais reconnu comme le « père du capitalisme japonais ». Après la restauration de Meiji, en 1868, il permet l'introduction du capitalisme occidental au Japon. .",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Shibusawa_Eiichi.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Sen no Rikyu",
        "Sen no Rikyu est un maître de thé japonais de l’école wabi. Ancien moine zen, il étudie le thé durant de nombreuse années avant de devenir, à 58 ans, le maître de thé du premier conseiller de l’empereur..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Sen_no_Rikyu.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Sakamoto Ryouma",
        "Sakamoto Ryouma était un samouraï japonais et une figure influente du Bakumatsu et de l'établissement de l'Empire du Japon à la fin de la période Edo. Il était l'un des dirigeants du mouvement visant à renverser le shogunat Tokugawa..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Sakamoto_Ryouma.jpg",
        1,
        500,
        10,
        3
    ),
    (
        NULL,
        "Saigo Takamori",
        "Saigō Takamori était un samurai. Issu d'une modeste famille, il obtient une place importante auprès de Shimazu Nariakira, daimyō de Satsuma. Son opposition au shogunat, son obstination et sa position pro-occidentale lui valent d'être exilé en 1859. .",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Saigo_Takamori.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Oda Nobunaga",
        "Oda Nobunaga était un daimyo important de la période Sengoku de l'histoire du Japon. Oda Nobunaga a passé sa vie sur les champs de bataille et a conquis une grande partie du Japon avant sa mort en 1582..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Oda_Nobunaga.jpg",
        1,
        1000,
        10,
        4
    ),
    (
        NULL,
        "Noguchi Hideyo",
        "Noguchi Hideyo était un éminent bactériologiste japonais qui, en 1911, a découvert l'agent de la syphilis comme cause de la maladie paralytique progressive..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Noguchi_Hideyo.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Ninomiya Sontoku",
        "Ninomiya Sontoku, né sous le nom de Ninomiya Kinjirō, est un philosophe, militant du monde agricole, moraliste et économiste japonais souvent représenté par la statue d'un enfant lisant un livre en marchant avec du bois sur le dos..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Ninomiya_Sontoku.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Natsume Soseki",
        "Natsume Sōseki est un auteur japonais de romans et de nouvelles, représentatif de la transition du Japon vers la modernité, pendant l'ère Meiji..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Natsume_Soseki.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Murasaki Shikibu",
        "Murasaki Shikibu est le surnom d'une écrivaine, dame de la cour du milieu de l'époque de Heian, connue pour son roman le Dit du Genji. Son nom véritable est peut-être Fujiwara no Kaoriko..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Murasaki_Shikibu.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Morita Akio",
        "Morita Akio était un homme d'affaires japonais et le cofondateur de Sony avec Masaru Ibuka. Il a aussi été un physicien..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Morita_Akio.jpg",
        1,
        500,
        10,
        3
    ),
    (
        NULL,
        "Momofuku Ando",
        "Momofuku Andō est le fondateur et le directeur de Nissin Foods, et l'inventeur de la version moderne des nouilles instantanées. La popularité de son invention est telle qu'on le surnomme « Mr. Noodle »..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Momofuku_Ando.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Misora Hibari",
        "Misora Hibari est une chanteuse et actrice japonaise. Au cours de sa carrière, elle enregistre plus de 1200 chansons, vend 68 millions de disques et joue dans 166 films..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Misora_Hibari.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Minamoto no Yoritomo",
        "Minamoto no Yoritomo était le fondateur et le premier shogun du shogunat Kamakura du Japon, régnant de 1192 à 1199. Il était le mari de Hōjō Masako qui a agi comme régent (shikken) après sa mort..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Minamoto_no_Yoritomo.jpg",
        1,
        500,
        10,
        3
    ),
    (
        NULL,
        "Minakata Kumasugu",
        "Minakata Kumasugu était un écrivain polyglotte, ethnologue et naturaliste japonais connu pour ses études relatives à la mycologie. .",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Minakata_Kumasugu.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Konosuke Matsushita",
        "Konosuke Matsushita est un industriel et philosophe des affaires japonais, le fondateur de Panasonic. Il est surnommé au Japon « le dieu de la gestion » pour ses qualités de dirigeant et sa pensée économique..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Konosuke_Matsushita.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Kobou Daishi",
        "Kōbō-Daishi est le saint fondateur de l'école bouddhiste Shingon, il est aussi une figure marquante de l'histoire du Japon : son esprit universel a fortement influencé la culture et la civilisation japonaise..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Kobou_Daishi.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Kitasato Shibasaburo",
        "Kitasato Shibasaburo est un médecin et un bactériologiste japonais. Il complète sa formation de médecin à Berlin dans le laboratoire de Robert Koch..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Kitasato_Shibasaburo.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Kabawata Yasunari",
        "Kawabata Yasunari est un écrivain japonais, prix Nobel de littérature en 1968. Considéré comme un écrivain majeur du XXe siècle et obsédé par la quête du beau, la solitude et la mort, il a écrit des récits très courts, d'un style extrême..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Kabawata_Yasunari.jpg",
        1,
        500,
        10,
        3
    ),
    (
        NULL,
        "Kaneko Misuzu",
        "Kaneko Misuzu était une poétesse japonaise, connue pour ses poèmes pour enfants. Elle est née Teru Kaneko dans le village de pêcheurs de Senzaki. Les motifs de la pêche et de la mer font souvent des apparitions dans ses poèmes..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Kaneko_Misuzu.jpg",
        1,
        500,
        10,
        3
    ),
    (
        NULL,
        "Ishigaki Rin",
        "Ishigaki Rin était une poétesse japonaise, surtout connue pour son poème \"Plaque de nom\". Elle était connue comme la \"poétesse de la banque\" parce qu'elle écrivait en marge de son travail d'employée de la Banque industrielle du Japon..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Ishigaki_Rin.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Ino Tadataka",
        "Ino Tadataka était un géomètre et cartographe japonais qui réalisa la première carte du Japon avec des techniques modernes..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Ino_Tadataka.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Ikkyu Sojun",
        "Ikkyu Sojun était un moine bouddhiste zen et un poète japonais excentrique et iconoclaste. Il a eu un grand impact sur l'infusion des attitudes et des idéaux zen dans l'art et la littérature japonais..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Ikkyu_Sojun.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Honda Soichiro",
        "Honda Soichiro est un ingénieur et industriel japonais, fondateur de la Honda Motor Company en 1948. Il quitte la présidence de la société en 1973. Il est à l’origine d’un constructeur automobile multinational..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Honda_Soichiro.jpg",
        1,
        500,
        10,
        3
    ),
    (
        NULL,
        "Hokusai",
        "Katsushika Hokusai, est un peintre, dessinateur et graveur spécialiste de l’ukiyo-e, ainsi qu'auteur d'écrits populaires japonais surtout connu sous le nom de Hokusai, ou son surnom de « Vieux Fou de dessin »..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Hokusai.jpg",
        1,
        500,
        10,
        3
    ),
    (
        NULL,
        "Hijikata Toshizo",
        "Hijikata Toshizō était un guerrier japonais, vice-commandant du Shinsen gumi, une milice notoire qui, sous les ordres du shōgun Tokugawa, devait maintenir l'ordre à Kyoto durant le Bakumatsu. Il fut ensuite vice-ministre des Armées de la république d'Ezo..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Hijikata_Toshizo.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Hideki Yukawa",
        "Hideki Yukawa est un physicien japonais. Il est lauréat du prix Nobel de physique de 1949 « pour sa prédiction de l'existence des mésons à partir de travaux théoriques sur les forces nucléaires ». Il fut le premier Japonais à recevoir un prix Nobel..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Hideki_Yukawa.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Hara Takashi",
        "Takashi Hara est un homme d'État japonais et dixième premier ministre du Japon. Il était surnommé aussi Hara Kei. Il est le premier roturier et le premier chrétien à accéder au poste de premier ministre de l'Empire du Japon..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Hara_Takashi.jpg",
        1,
        500,
        10,
        3
    ),
    (
        NULL,
        "Fuzukawa Yukichi",
        "Fukuzawa Yukichi est un penseur de l'ère Meiji. Auteur, écrivain, enseignant, traducteur, entrepreneur et théoricien politique japonais ayant créé l’université Keio, ses idées sur le gouvernement ont eu une influence importante sur le Japon..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Fuzukawa_Yukichi.jpg",
        1,
        500,
        10,
        3
    ),
    (
        NULL,
        "Edogawa Ranpo",
        "Edogawa Ranpo est le nom de plume de l'écrivain et critique Tarō Hirai. Il est considéré comme l’un des principaux fondateurs de la littérature policière japonaise..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Edogawa_Ranpo.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Cinq de Choshu",
        "Les cinq de Chōshū sont des membres du domaine de Chōshū à l'ouest du Japon qui étudièrent au Royaume-uni à partir de 1863 à l'University College de Londres auprès du professeur Alexander William Williamson..",
        "./images/CARDS/PERSONNAGES_HISTORIQUES/Cinq_de_Choshu.jpg",
        1,
        250,
        10,
        2
    ),
    (
        NULL,
        "Asakusa Line",
        "La ligne Toei Asakusa est une ligne de métro à Tokyo au Japon gérée par le Bureau des Transports de la Métropole de Tokyo. Elle relie la station de Nishi-Magome à celle d'Oshiage..",
        "./images/CARDS/TRANSPORTS/Asakusa_Line.jpg",
        1,
        100,
        1,
        1
    ),
    (
        NULL,
        "Autoroute Chuo",
        "L'autoroute Chūō est une voie rapide à péage à chaussées séparées qui relie Tokyo à Nagoya. La Chūō suit un itinéraire passant par Suginami, Tokyo, Yamanashi, Nagano, Gifu et Aichi avant de se terminer à Nagoya, à la jonction avec l'autoroute Tōmei..",
        "./images/CARDS/TRANSPORTS/Autoroute_Chuo.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Autoroute Tohoku",
        "L'autoroute de Tōhoku est une autoroute japonaise. Elle appartient à la Japan Expressway Holding and Debt Repayment Agency et est exploitée par l'East Nippon Expressway Company..",
        "./images/CARDS/TRANSPORTS/Autoroute_Tohoku.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Autoroute Hanshin",
        "Les autoroutes Hanshin sont un réseau de 239,3 km d'autoroutes reliant Osaka, Kobe et Kyoto, au Japon. Exploitées par Hanshin Expressway Company, Limited, elles ont été ouvertes en 1962..",
        "./images/CARDS/TRANSPORTS/Autoroute_Hanshin.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Autoroute Meishin",
        "L'autoroute Meishin, longue de 193,9 km, est une autoroute à péage au Japon. Elle va d'une jonction avec l'autoroute Tōmei à Nagakute, Aichi, jusqu'à l'ouest de Nishinomiya, Hyōgo..",
        "./images/CARDS/TRANSPORTS/Autoroute_Meishin.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Autoroute Tomei",
        "L'autoroute Tōmei est une autoroute située sur l'île d'Honshū au Japon. Ouverte en 1968, son nom est un acronyme entre le kanji Tou, celui de Tōkyō et l'autre kanji, celui de Nagoya, qui sont les deux aires urbaines majeures reliées par l'autoroute. .",
        "./images/CARDS/TRANSPORTS/Autoroute_Tomei.jpg",
        1,
        1000,
        1,
        4
    ),
    (
        NULL,
        "Canal Lac Biwa",
        "Le canal du lac Biwa est une artère fluviale au Japon construite pendant l'ère Meiji pour transporter l'eau, le fret et les passagers du lac Biwa à la proche ville de Kyoto..",
        "./images/CARDS/TRANSPORTS/Canal_Lac_Biwa.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Chitose Aeroport",
        "L'aéroport de Shin-Chitose est situé à 5 kilomètres au sud-sud-est de la ville de Chitose, près de Sapporo, sous-préfecture d'Ishikari, dans la préfecture d'Hokkaido, au Japon. C'est le premier aéroport japonais à ouvrir 24 heures sur 24..",
        "./images/CARDS/TRANSPORTS/Chitose_Aeroport.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Fukuoka Aeroport",
        "L'aéroport de Fukuoka est le principal aéroport de l'île de Kyūshū au Japon. Il a la particularité d'être enclavé en plein centre-ville de Fukuoka, dans l'arrondissement de Hakata..",
        "./images/CARDS/TRANSPORTS/Fukuoka_Aeroport.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Haneda Aeroport",
        "L'aéroport international de Tokyo-Haneda est situé dans le quartier de Haneda, à 30 km au sud-ouest de Tokyo est l'un des deux aéroports internationaux desservant la région du Grand Tokyo, l'autre étant l'aéroport international de Narita..",
        "./images/CARDS/TRANSPORTS/Haneda_Aeroport.jpg",
        1,
        1100,
        1,
        4
    ),
    (
        NULL,
        "Ibaraki Aeroport",
        "L'aéroport d'Ibaraki est situé à 80 km au nord-est de Tōkyō, dans la préfecture d'Ibaraki..",
        "./images/CARDS/TRANSPORTS/Ibaraki_Aeroport.jpg",
        1,
        100,
        1,
        1
    ),
    (
        NULL,
        "Kagoshima Aeroport",
        "L'aéroport de Kagoshima est un aéroport japonais situé à Kirishima, dans la préfecture de Kagoshima. Il est, sur le plan de la fréquentation, le deuxième aéroport de Kyūshū après celui de Fukuoka..",
        "./images/CARDS/TRANSPORTS/Kagoshima_Aeroport.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Kansai Aeroport",
        "L'aéroport international du Kansai, est un aéroport international construit sur une île artificielle dans la baie d'Ōsaka, au sud de la ville d'Ōsaka au Japon. Il est en service depuis le 4 septembre 1994..",
        "./images/CARDS/TRANSPORTS/Kansai_Aeroport.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Choufu Aeroport",
        "L'aéroport de Choufu est un aéroport situé à Chōfu, dans la métropole de Tokyo, au Japon. Il est exploité par le Bureau du gouvernement métropolitain de Tokyo de Port and Harbor..",
        "./images/CARDS/TRANSPORTS/Choufu_Aeroport.jpg",
        1,
        100,
        1,
        1
    ),
    (
        NULL,
        "Kumamoto Aeroport",
        "L'aéroport de Kumamoto est un aéroport japonais qui dessert la ville de Kumamoto. Il est situé dans la ville de Mashiki, à une vingtaine de kilomètres de la gare de Kumamoto..",
        "./images/CARDS/TRANSPORTS/Kumamoto_Aeroport.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Logo Chiyoda Line",
        "La ligne Chiyoda est une ligne de métro à Tokyo au Japon gérée par la compagnie Tokyo Metro. Elle relie la station de Yoyogi-Uehara à la station de Kita-Ayase. Longue de 24 km, elle traverse Tokyo du sud-ouest au nord-est..",
        "./images/CARDS/TRANSPORTS/Logo_Chiyoda_Line.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Logo Fukutoshin Line",
        "La ligne Fukutoshin est une ligne de métro à Tokyo au Japon gérée par le réseau Tokyo Metro. Elle relie la station de Wakōshi à la station de Shibuya..",
        "./images/CARDS/TRANSPORTS/Logo_Fukutoshin_Line.jpg",
        1,
        1000,
        1,
        4
    ),
    (
        NULL,
        "Logo Ginza Line",
        "La ligne Ginza est une ligne de métro à Tokyo au Japon gérée par la compagnie Tokyo Metro. Elle relie la station de Shibuya à celle d'Asakusa. Longue de 1,3 km, elle traverse Tokyo du sud-ouest au nord-est..",
        "./images/CARDS/TRANSPORTS/Logo_Ginza_Line.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Logo Hanzomon Line",
        "La ligne Hanzōmon est une ligne de métro à Tokyo au Japon gérée par le réseau Tokyo Metro. Elle relie la station de Shibuya à la station d'Oshiage. Longue de 16,8 km, elle traverse Tokyo du sud-ouest à l'est..",
        "./images/CARDS/TRANSPORTS/Logo_Hanzomon_Line.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Logo Hibiya Line",
        "La ligne Hibiya est une ligne de métro à Tokyo au Japon gérée par le réseau Tokyo Metro. Elle relie la station de Naka-Meguro à la station de Kita-Senju..",
        "./images/CARDS/TRANSPORTS/Logo_Hibiya_Line.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Logo Kyoto Karasuma Line",
        "La ligne Karasuma est une ligne du métro de Kyoto, au Japon. Elle relie la station de Kokusaikaikan à celle de Takeda. Longue de 13,7 km, elle traverse Kyoto de nord au sud..",
        "./images/CARDS/TRANSPORTS/Logo_Kyoto_Karasuma_Line.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Logo Kyoto Tozai Line",
        "La ligne Tōzai est une ligne du métro de Kyoto, au Japon. Elle relie la station de Rokujizō à celle de Uzumasa Tenjingawa. Longue de 17,5 km, elle part de la ville d'Uji puis traverse Kyoto d'est en ouest..",
        "./images/CARDS/TRANSPORTS/Logo_Kyoto_Tozai_Line.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Logo Marunouchi Line",
        "La ligne Marunouchi est une ligne de métro à Tokyo au Japon gérée par le réseau Tokyo Metro. Elle relie la station d'Ikebukuro à la station d'Ogikubo. Longue de 27,4 km, elle traverse Tokyo du nord-ouest à l'ouest en passant par le centre..",
        "./images/CARDS/TRANSPORTS/Logo_Marunouchi_Line.jpg",
        1,
        1100,
        1,
        4
    ),
    (
        NULL,
        "Logo Mita Line",
        "La ligne Toei Mita est une ligne de métro à Tokyo au Japon gérée par le Bureau des Transports de la Métropole de Tokyo. Elle relie la station de Meguro à la station de Nishi-Takashimadaira..",
        "./images/CARDS/TRANSPORTS/Logo_Mita_Line.jpg",
        1,
        100,
        1,
        1
    ),
    (
        NULL,
        "Logo Namboku Line",
        "La ligne Namboku est une ligne du métro de Tokyo au Japon gérée par le réseau Tokyo Metro. Elle relie la station de Meguro à la station de Akabane-Iwabuchi. Longue de 21,3 km, elle traverse Tokyo du sud au nord..",
        "./images/CARDS/TRANSPORTS/Logo_Namboku_Line.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Logo Oedo Line",
        "La ligne Toei Ōedo est une ligne de métro à Tokyo au Japon gérée par le Bureau des Transports de la Métropole de Tokyo. Elle relie la station de Tochōmae à la station de Hikarigaoka..",
        "./images/CARDS/TRANSPORTS/Logo_Oedo_Line.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Logo Shinjuku Line",
        "La ligne Toei Shinjuku est une ligne de métro à Tokyo et Ichikawa au Japon gérée par le Bureau des Transports de la Métropole de Tokyo. Elle relie la station de Shinjuku à la station de Motoyawata..",
        "./images/CARDS/TRANSPORTS/Logo_Shinjuku_Line.jpg",
        1,
        100,
        1,
        1
    ),
    (
        NULL,
        "Logo Tozai Line",
        "La ligne Tozai est une ligne du métro de Sendai au Japon. Elle relie la station de Yagiyama-Dōbutsu-Kōen à celle d'Arai. Longue de 13,9 km, elle traverse Sendai d'est en ouest..",
        "./images/CARDS/TRANSPORTS/Logo_Tozai_Line.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Logo Yurakucho Line",
        "La ligne Yūrakuchō est une ligne de métro à Tokyo au Japon gérée par le réseau Tokyo Metro. Elle relie la station de Wakōshi à la station de Shin-Kiba..",
        "./images/CARDS/TRANSPORTS/Logo_Yurakucho_Line.jpg",
        1,
        100,
        1,
        1
    ),
    (
        NULL,
        "Nagoya Aeroport",
        "L'aéroport de Nagoya, est situé près de Nagoya, dans les villes de Komaki et Kasugai, dans la préfecture d'Aichi, au Japon..",
        "./images/CARDS/TRANSPORTS/Nagoya_Aeroport.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Naha Aeroport",
        "L'aéroport de Naha est le principal aéroport de l'île d'Okinawa situé à 4 km à l'ouest de la ville de Naha, la capitale et la principale ville de la préfecture d'Okinawa au Japon..",
        "./images/CARDS/TRANSPORTS/Naha_Aeroport.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Narita Aeroport",
        "L'aéroport de Narita est un aéroport international situé à Narita, dans la préfecture de Chiba au Japon. Il est l'un des deux principaux aéroports du Grand Tokyo, l'autre étant l'aéroport international de Tokyo-Haneda..",
        "./images/CARDS/TRANSPORTS/Narita_Aeroport.jpg",
        1,
        1000,
        1,
        4
    ),
    (
        NULL,
        "New-Transit-Yurikamome",
        "La New Transit Yurikamome, est une ligne de métro automatique sur pneus entièrement aérienne à Tokyo au Japon. Elle relie l'île de Toyosu au sud-est à la ligne Yamanote, pas loin du quartier de Ginza, en passant par la zone d'îles artificielles d'Odaiba..",
        "./images/CARDS/TRANSPORTS/New-Transit-Yurikamome.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Nippori-Toneri-Liner",
        "Le Nippori-Toneri Liner est un métro automatique sur pneus à Tokyo au Japon. Il relie la gare de Nippori dans l'arrondissement d'Arakawa à la gare de Minumadai-shinsuikōen dans l'arrondissement d'Adachi. .",
        "./images/CARDS/TRANSPORTS/Nippori-Toneri-Liner.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Phare Sunosaki",
        "Le phare de Sunosaki est un phare japonais situé au cap Sunosaki près de la ville de Tateyama dans la préfecture de Chiba au Japon. De forme cylindrique, il est en service depuis 1919 et a une hauteur de 18,5 m et une portée de 18,5 km..",
        "./images/CARDS/TRANSPORTS/Phare_Sunosaki.jpg",
        1,
        100,
        1,
        1
    ),
    (
        NULL,
        "Pont Aioi",
        "Le pont Aioi est un pont situé à Hiroshima au Japon qui enjambe le fleuve Ōta. Sa particularité réside dans le fait qu'il est constitué de deux tabliers perpendiculaires l'un par rapport à l'autre..",
        "./images/CARDS/TRANSPORTS/Pont_Aioi.jpg",
        1,
        100,
        1,
        1
    ),
    (
        NULL,
        "Pont Chitose",
        "Le pont Chitose enjambe le port intérieur de l'arrondissement Taisho à Osaka, au Japon..",
        "./images/CARDS/TRANSPORTS/Pont_Chitose.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Pont circulaire Kawazu-Nanadaru",
        "Le pont circulaire de Kawazu-Nanadaru, également appelé Viaduc de Nanadaru, est situé sur la route nationale 41, reliant Numazu à Shimoda, dans la péninsule japonaise d'Izu au sud-ouest de Tokyo..",
        "./images/CARDS/TRANSPORTS/Pont_circulaire_Kawazu-Nanadaru.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Pont Baie Aomori",
        "Le pont de la baie d'Aomori est un pont à haubans situé à Aomori, au Japon. Ouvert au public à partir de juillet 1992, il fait une longueur de 1 219 m..",
        "./images/CARDS/TRANSPORTS/Pont_Baie_Aomori.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Pont Tokyo Wan Aqua-Line",
        "La Tokyo Wan Aqua-Line est une route japonaise composée de tunnels sous-marins et de ponts qui relie la préfecture de Chiba à celle de Kanagawa à travers la baie de Tokyo..",
        "./images/CARDS/TRANSPORTS/Pont_Tokyo_Wan_Aqua-Line.jpg",
        1,
        1000,
        1,
        4
    ),
    (
        NULL,
        "Pont Minato",
        "Le pont de Minato est un pont cantilever en treillis à deux niveaux situé à Ōsaka au Japon, construit en 1974. Avec une portée principale de 510 m, c'est le troisième pont cantilever le plus grand au monde, derrière le Pont de Québec et le Pont du Forth..",
        "./images/CARDS/TRANSPORTS/Pont_Minato.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Pont Nihonbashi",
        "Le pont Nihonbashi était le point d'origine de cinq routes majeures construites à l'époque d'Edo au XVIIe siècle. Le pont porte toujours un signe indiquant « le point d'origine des routes du Japon »..",
        "./images/CARDS/TRANSPORTS/Pont_Nihonbashi.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Pont Ryogoku",
        "Le pont de Ryōgoku est un pont de Tokyo construit en 1659 sur la Sumida-gawa juste en amont de sa confluence avec la Kanda-gawa. Son nom, qui signifie « deux provinces », vient de ce qu'il relie Edo et la province de Shimōsa..",
        "./images/CARDS/TRANSPORTS/Pont_Ryogoku.jpg",
        1,
        100,
        1,
        1
    ),
    (
        NULL,
        "Pont Eshima Ohashi",
        "Le pont Eshima Ohashi est un pont qui relie Matsue, préfecture de Shimane et Sakaiminato dans la préfecture de Tottori au-dessus du lac Nakaumi, au Japon. Il a été construit de 1997 à 2004 et c'est le plus grand pont à cadre rigide du pays..",
        "./images/CARDS/TRANSPORTS/Pont_Eshima_Ohashi.jpg",
        1,
        1000,
        1,
        4
    ),
    (
        NULL,
        "Pont Megane",
        "Le pont Megane est un pont du Japon situé dans la ville de Nagasaki, sur l'île de Kyūshū..",
        "./images/CARDS/TRANSPORTS/Pont_Megane.jpg",
        1,
        100,
        1,
        1
    ),
    (
        NULL,
        "Pont Sanjo Ohashi",
        "Sanjō Ōhashi est un pont à Kyoto, préfecture de Kyoto au Japon qui enjambe la rivière Kamo. Il est bien connu car il servait de station terminale pour le Nakasendō et le Tōkaidō..",
        "./images/CARDS/TRANSPORTS/Pont_Sanjo_Ohashi.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Pont Shinkyo",
        "Le Shinkyō est un pont du Japon situé dans la ville de Nikkō, sur l'île d'Honshū..",
        "./images/CARDS/TRANSPORTS/Pont_Shinkyo.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Port Osaka",
        "Le port d'Osaka est l'un des principaux ports de commerce au Japon, situé à Osaka au sein de la baie d'Osaka..",
        "./images/CARDS/TRANSPORTS/Port_Osaka.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Port Kobe",
        "Le port de Kobe est situé à Kobe au Japon. Il fut durement touché lors du séisme de Kobe en 1995..",
        "./images/CARDS/TRANSPORTS/Port_Kobe.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Port Misaki",
        "Le port de Misaki est un port spécialisé dans la pêche au thon, numéro 2 au Japon. Il est situé dans la ville de Miura, dans la Préfecture de Kanagawa, au Japon..",
        "./images/CARDS/TRANSPORTS/Port_Misaki.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Port Nagoya",
        "Le port de Nagoya est situé à Nagoya au Japon. Il possède un trafic annuel de 165 millions de tonnes de marchandises. Il est situé premier du Japon en tant que port de commerce..",
        "./images/CARDS/TRANSPORTS/Port_Nagoya.jpg",
        1,
        1000,
        1,
        4
    ),
    (
        NULL,
        "Port Shimizu",
        "Le port de Shimizu situé dans l'arrondissement Shimizu de la ville de Shizuoka dans la préfecture de Shizuoka au Japon est le neuvième port du pays. La vue sur le Mont Fuji en fait un lieu prisé des touristes..",
        "./images/CARDS/TRANSPORTS/Port_Shimizu.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Port Tokyo",
        "Le port de Tokyo est situé à Tokyo au Japon, dans la baie de Tokyo. Il possède un trafic annuel de 3,7 millions de EVP en 2007. Il est classé 7eme du japon en tant que port de commerce..",
        "./images/CARDS/TRANSPORTS/Port_Tokyo.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Port Yokohama",
        "Le port de Yokohama est l'infrastructure portuaire de la ville de Yokohama au japon. Il s'ouvre sur la baie de Tokyo. Ce port échange principalement avec l'Arabie saoudite, les États-Unis, la Chine et l'Australie. Il est 3ème du Japon..",
        "./images/CARDS/TRANSPORTS/Port_Yokohama.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Port Yokosuka",
        "Le port de Yokosuka se situe au sud du port de Yokohama dans la baie de Tokyo. Classé comme « port important » selon les lois portuaires du Japon, il est administré par la ville de Yokosuka..",
        "./images/CARDS/TRANSPORTS/Port_Yokosuka.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Sky Gate Bridge R",
        "Le Sky Gate Bridge R est un pont en treillis qui relie l'aéroport international du Kansai, bâti sur une île artificielle. Il comporte deux niveaux de circulation. Le niveau supérieur est une autoroute, et le niveau inférieur une ligne ferroviaire..",
        "./images/CARDS/TRANSPORTS/Sky_Gate_Bridge_R.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Tokyo Gate Bridge",
        "Le Tokyo Gate Bridge, est un pont à poutres en porte-à-faux au-dessus de la baie de Tokyo reliant le quartier de Wakasu dans l'arrondissement de Kōtō et le parc maritime de Jonanjima dans l'arrondissement d'Ōta à Tokyo..",
        "./images/CARDS/TRANSPORTS/Tokyo_Gate_Bridge.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Tramway Hiroshima",
        "Le tramway d'Hiroshima est le réseau de tramways qui dessert la ville d'Hiroshima, au Japon. Il comporte huit lignes commerciales. Il est exploité par la compagnie Hiroshima Electric Railway Co., Ltd..",
        "./images/CARDS/TRANSPORTS/Tramway_Hiroshima.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Tramway Tokyo",
        "La ligne Toden Arakawa, également appelée Tokyo Sakura Tram, est une ligne de tramway située à Tokyo. Cette ligne de 12,2 km de longueur, exploitée par la compagnie publique de transport Toei, dessert une partie de cette ville..",
        "./images/CARDS/TRANSPORTS/Tramway_Tokyo.jpg",
        1,
        1000,
        1,
        4
    ),
    (
        NULL,
        "Tramway Osaka",
        "Le tramway d'Osaka est un réseau de tramways exploité par la compagnie Hankai Tramway dans les villes d'Osaka et de Sakai au Japon. Il comporte deux lignes, totalisant 18,4 km de voies..",
        "./images/CARDS/TRANSPORTS/Tramway_Osaka.jpg",
        1,
        250,
        1,
        2
    ),
    (
        NULL,
        "Tunnel Routier Kanmon",
        "Le tunnel routier de Kanmon est un tunnel sous-marin du Japon qui permet à la Route Nationale 2 de traverser le détroit de Kanmon. Il a été ouvert à la circulation en 1958. Sa longueur moyenne est de 3 461 m, dont 780 m sous la mer..",
        "./images/CARDS/TRANSPORTS/Tunnel_Routier_Kanmon.jpg",
        1,
        500,
        1,
        3
    ),
    (
        NULL,
        "Tunnel Sasago",
        "Le tunnel de Sasago est un tunnel routier du Japon situé à l'ouest de Tokyo et de Sasago, dans la préfecture de Yamanashi, sur l'autoroute Chūō. D'une longueur de 4,7 kilomètres, il permet de traverser une montagne des Alpes japonaises..",
        "./images/CARDS/TRANSPORTS/Tunnel_Sasago.jpg",
        1,
        250,
        1,
        2
    );