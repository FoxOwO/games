/*drop database games;
create database games;*/

use games;

/*CREATE TABLE  Category(
	id           	integer       primary key auto_increment,
	category_name	varchar(30)	  not null
);

CREATE TABLE Difficulty(
   id             integer     primary key auto_increment,
   difficulty_name		varchar(30)	not null
);*/


INSERT INTO  Category VALUES (1,'combination');
INSERT INTO  Category VALUES (2,'fantasy');
INSERT INTO  Category VALUES (3,'adventure');
INSERT INTO  Category VALUES (4,'puzzle');
INSERT INTO  Category VALUES (5,'horror');
INSERT INTO  Category VALUES (6,'dice games');
INSERT INTO  Category VALUES (7,'cooperative');
INSERT INTO  Category VALUES (8,'sports');
INSERT INTO  Category VALUES (9,'skills');
INSERT INTO  Category VALUES (10,'maths');
INSERT INTO  Category VALUES (11,'luck');
INSERT INTO  Category VALUES (12,'gambling');
INSERT INTO  Category VALUES (13,'financial');
INSERT INTO  Category VALUES (14,'educational');
INSERT INTO  Category VALUES (15,'construction');
INSERT INTO  Category VALUES (16,'bluff');
INSERT INTO  Category VALUES (17,'roleplay');
INSERT INTO  Category VALUES (18,'simulation');
INSERT INTO  Category VALUES (19,'tactics');
INSERT INTO  Category VALUES (20,'language');
INSERT INTO  Category VALUES (21,'brain games');
INSERT INTO  Category VALUES (22,'card games');
INSERT INTO  Category VALUES (23,'board games');
INSERT INTO  Category VALUES (24,'memory games');
INSERT INTO  Category VALUES (25,'war');
INSERT INTO  Category VALUES (26,'quiz');
INSERT INTO  Category VALUES (27,'strategy');
INSERT INTO  Category VALUES (28,'running');

INSERT INTO Difficulty VALUES (1,'very easy');
INSERT INTO Difficulty VALUES (2,'easy');
INSERT INTO Difficulty VALUES (3,'average');
INSERT INTO Difficulty VALUES (4,'difficult');
INSERT INTO Difficulty VALUES (5,'very difficult');

/*
CREATE TABLE Game
(
   id               integer       primary key auto_increment,
   game_name        varchar(50)   not null,
   editor        	varchar(50)   not null,
   author           varchar(40),
   year_edition		integer	not null,
   age		        varchar(20)   not null,
   min_players      integer       not null,
   max_players      integer       not null,
   category_id      integer,
   play_duration    varchar(20),
   difficulty_id	integer,
   price            numeric(5,2)	not null,
   image       		varchar(25),
foreign key (category_id) references  Category(id),
foreign key (difficulty_id) references Difficulty(id)
);
*/


INSERT INTO Game VALUES (1,'Getting started with waste','De Helix',null,2005,'from 13y',4,20,14,'46 min to 2h',2,7.50,'aandeslagmetafval.jpg');
INSERT INTO Game VALUES (2, 'Sabotage','Franjos','Abbott Robert',1996,'as of 9y',2,2,12,'16 min to 45 min',2,17.50,'sabotage.jpg');
INSERT INTO Game VALUES (3, 'Face to Face Paddington','Play Time',null,1999,'toddlers',2,6,14,'15 min',1,7.50,'facetofacepaddington.jpg');
INSERT INTO Game VALUES (4,'Abalone','Parker','Lalet Michel en Levi Laurent',1997,'from 9 to 12y',2,2,27,'16 min to 45 min',3,30.00,'abalone.jpg');
INSERT INTO Game VALUES (5,'Abracadabra','DaVinci Games','Di Giorgio Domenico en Barletta Roberta',2004,'from 9 to 12y',4,6,27,'16 min to 45 min',3,10.00,'abracadabra.jpg');
INSERT INTO Game VALUES (6,'Quadraginta','Le Sycomore asbm',null,2006,'from 9y',2,6,14,'16 min to 45 min',2,26.00,'quadraginta.jpg');
INSERT INTO Game VALUES (7,'Quadryx','Famosa',null,2002,'from 5y',4,4,13,'15 min',2,22.50,'quadryx.jpg');
INSERT INTO Game VALUES (8,'Quadular','HPH Development Inc.',null,1987,'from 9y',2,4,14,'15 min',1,17.50,'quadular.jpg');
INSERT INTO Game VALUES (9,'Quak','Haba','Dolch Bruno',1994,'toddlers',2,4,12,'15 min',1,17.50,'quak.jpg');
INSERT INTO Game VALUES (10,'Quivive','Gigamic','Pacherie Francis',1998,'from 9y',2,5,27,'16 min to 45 min',2,35.00,'quivive.jpg');
INSERT INTO Game VALUES (11,'Ra','999 Games','Knizia Reiner',1999,'from 13 to 15y',3,5,19,'46 min to 2h',3,22.50,'ra.jpg');
INSERT INTO Game VALUES (12,'Race the Wind - Sailing Cup','Ghenos Games','Velagiochiamo',2007,'from 13 to 15y',2,5,15,'46 min to 2h',3,38.00,'racethewind.jpg');
INSERT INTO Game VALUES (13,'Rail Baron','Avalon Hill','Erickson R.S.',1977,'from 13 to 15y',3,5,13,'heel lang',3,30.00,'railbaron.jpg');
INSERT INTO Game VALUES (14,'RailRally','Jumbo',null,1994,'from 5 to 8y',2,4,19,'16 min to 45 min',2,12.50,'railrally.jpg');
INSERT INTO Game VALUES (15,'Roads en Boats','Splotter Spellen BV','Doumen Jeroen en Wiersinga Joris',2003,'from 13 to 15y',1,4,16,'heel lang',4,80.00,'roadsenboats.jpg');
INSERT INTO Game VALUES (16,'Fabulantis','Selecta Spielzeug',null,2006,'from 5 to 8y',3,6,16,'16 min to 45 min',2,30.00,'fabulantis.jpg');
INSERT INTO Game VALUES (17,'Fantomino','Haba',null,1997,'from 5 to 8j ',3,6,17,'16 min to 45 min',1,22.50,'fantomino.jpg');
INSERT INTO Game VALUES (18,'Farm Friends','Ravensburger',null,2005,'toddlers',2,4,17,'15 min',2,12.00,'farmfriends.jpg');
INSERT INTO Game VALUES (19,'FBI','999 Games',null,2004,'from 9 to 12y',2,5,19,'16 min to 45 min',3,8.00,'fbi.jpg');
INSERT INTO Game VALUES (20,'Foodie','999 Games',null,2007,'from 5 to 8y',3,5,20,'15 min',2,7.00,'foodie.jpg');
INSERT INTO Game VALUES (21,'Battle of the sexes','university games',null,2004,'from 13 to 15y', 2,12,21,'46 min to 2 h',5,25.00,'battleofthesexes.jpg');
INSERT INTO Game VALUES (22,'Beestenboel', 'Ravensburger','Cordes A. en Gohl M. en Soecknick M.', 1998,'from 5 to 8y', 2,4,14,'16 min to 45 min',2,14.00,'beestenboel.jpg');
INSERT INTO Game VALUES (23,'Bingo','Ravensburger',null,2003,'toddlers',2,6,11,'15 min', 1, 12.00,'bingo.jpg');
INSERT INTO Game VALUES (24,'Bunny hop','Ravensburger','Kremer David',2001,'from 5 to 8y',2,4,28,'15 min', 2, 22.50, 'bunnyhop.jpg');
INSERT INTO Game VALUES (25,'Balanx','Fun Connection',null, 1994,'from 9 to 12y',2,2,19,'16 min to 45 min',2,17.50, 'balanx.jpg');
INSERT INTO Game VALUES (26,'Mini-Twixt','Randolph Alex',null,1979,'from 9 to 12y',2,2,27,'45 min',2,10.00,'Mini-twixt.jpg');
INSERT INTO Game VALUES (27,'Minister','Pelikan','Hoffmann Rudi',1975,'from 9 to 12y',2,4,11,'16 min to 45 min',2,25.00,'Minister.jpg');
INSERT INTO Game VALUES (28,'Maan roos vis letter-schrijfspel','Zwijsen','van den Waarsenburg Richard',2003,'from 5 to 8 y',2,6,20,'16 min to 45 min',4,12.00,'maan.jpg');
INSERT INTO Game VALUES (29,'My first Labyrinth','Ravensburger','Kobbert Max J.',2005,'from 5 to 8y',2,4,1,'15 min',2,20.00,'doolhof.jpg');
INSERT INTO Game VALUES (30,'Multiplex','Verlag','Treichler',2002,'from 9 to 12y',2,4,10,'16 min to 45 min',3, 7.50,'multiplex.jpg');
INSERT INTO Game VALUES (31,'E.T. The Extra-Terrestrial','Clipper',null,1982,'from 5 to 8y',2,4,21,'16 min to 45 min',3,10.00,'et.jpg');
INSERT INTO Game VALUES (32,'Easy School','Red Glove Edizion','Mura Michele',2007,'from 9 to 12y',3,5,22,'16 min to 45 min',3,8.00,null);
INSERT INTO Game VALUES (33,'Ebbe en Flut','Adlung Spiele','Werner Wolfgang',2000,'from 9 to 12y',1,2,23,'16 min to 45 min',2,7.50,'ebbeenflut.jpg');
INSERT INTO Game VALUES (34,'Ecco','Moritz Egetmeyer','Ellis John David',1997,'from 13 to 15y',1,10,14,'16 min to 45 min',2,22.50,'ecco.jpg');
INSERT INTO Game VALUES (35,'Eco-logica','Clementoni Educationals',null,1998,'from 9 to 12y',2,6,2,'16 min to 45 min',2,17.50,'ecologica.jpg');
INSERT INTO Game VALUES (36,'Netzwerk (Jumbo)','Jumbo','van Moorsel Corne',2003,'from 9 to 12y',2,4,3,'16 min to 45 min',3,7.50,'netzwerk.jpg');
INSERT INTO Game VALUES (37,'Nachbar''s Garten','Mattel','Jeppsson Anders',1987,'from 5 to 8y',2,5,4,'16 min to 45 min',2,10.00,'nachbar.jpg');
INSERT INTO Game VALUES (38,'Name that Country','Educational Insights',null,1992,'from 9 to 12y',2,8,5,'16 min to 45 min',2,17.50,'Name that Country.jpg');
INSERT INTO Game VALUES (39,'New England','Goldsieber Spiele','Moon Alan R. en Weissblum Aaron',2003,'from 13 to 15y',3,4,19,'46 min to 2 h',3,25.00,'ne.jpg');
INSERT INTO Game VALUES (40,'Nemo''s Aquarium','Ravensburger',null,2003,'toddlers',2,4,6,'15 min',3,17.50,'nemo.jpg');
INSERT INTO Game VALUES (41,'Sagaland','Ravensburger','Randolph Alex en Matschoss Michel',2007,'from 5y',2,6,24,'16 min to 45 min',1,22.50,'sagaland.jpg');
INSERT INTO Game VALUES (42,'Samsara','MB',null,1973,'from 5y',2,4,7,'16 min to 45 min',1,12.50,'samsara.jpg');
INSERT INTO Game VALUES (43,'Treasure Hunt','Haba',null,2003,'from 5y',2,6,14,'15 min',2,17.50,'schattenjacht.jpg');
INSERT INTO Game VALUES (44,'Scrabble De Luxe Reis','Spears Games','Butts Alfred Mosher en Brunot James',2003,'from 13y',1,4,20,'16 min to 120 min',2,17.50,'scrabble.jpg');
INSERT INTO Game VALUES (45,'D-Code','Spears Games',null,2001,'from 9 to 12y',2,2,8,'16 min  to 45 min',3,10.00,'dcode.jpg');
INSERT INTO Game VALUES (46,'Da ist doch der Wurm drin','Hexagames','Pauly Hans Peter',1983,'from 5 to 8y',4,6,9,'16 min  to 45 min',1,10.00,'wurmdrin.jpg');
INSERT INTO Game VALUES (47,'Da Vinci Code','Winning Moves','Wakasugi Eiji',2004,'from 9 to 12y',2,4,27,'16 min  to 45 min',2,12.00,'dvc.jpg');
INSERT INTO Game VALUES (48,'Da Vinci Code - Het bordspel','Identity Games',null,2006,'from 13 to 15y',2,6,10,'46 min to 2 h',2,35.00,'dvcbordspel.jpg');
INSERT INTO Game VALUES (49,'Da Vinci Code - Le Jeh','Identity Games',null,2006,'from 13 to 15y',2,6,11,'46 min to 2 h',3,35.00,'dvclejeu.jpg');
INSERT INTO Game VALUES (50,'Jakkiebak Kippenkak!','666 Games','Zoch Klaus',2000,'from 5 to 8y',2,4,24,'16 min to 45 min',1,30.00,'jakkiebak! kippenkak.jpg');
INSERT INTO Game VALUES (51,'Java','Ravensburger','Kramer Wolfgang en Kiesling Michael',2000,'from 13 to 15y',2,4,27,'46 min to 2 h',3,35.00,'java.jpg');
INSERT INTO Game VALUES (52,'Jantje beton spellenpakket','Nationaal Jeugd Fonds','onbekend',1978,'from 5 to 8y',2,10,12,'16 min to 45 min',2,10.00,'betonspellenpakket.jpg');
INSERT INTO Game VALUES (53,'Jakkes!','University Games','onbekend',2004,'from 9 to 12y',2,4,14,'16 min to 45 min',3,24.00,'jakkes!.jpg');
INSERT INTO Game VALUES (54,'Jenga','MB','onbekend',1991,'from 5 to 8y',1,6,9,'15 min',2,17.50,'jenga.jpg');
INSERT INTO Game VALUES (55,'Labyrinth - De jacht op de schat','Ravensburger','Ravensburger',2005,'from 5 to 8y',2,6,9,'16 min to 45 min ',3,10.00,'labyrinth.jpg');
INSERT INTO Game VALUES (56,'Lach je rijk!','Hasbro',null,2002,'from 9 to 12y',2,6,13,'46 min to 2 h',2,28.00,'lachjerijk.jpg');
INSERT INTO Game VALUES (57,'Lange Jan','Nova Carta bv','Horn Fred',2006,'from 5 to 8y',3,8,22,'16 min to 45 min',2,10.00,'langejan.jpg');
INSERT INTO Game VALUES (58,'Lauras Sternenspiel','Amigo Spiele','Haferkamp Kai en Husmeier Rudiger',2002,'toddlers',2,4,4,'15 min',1,22.50,'laurassternenspiel.jpg');
INSERT INTO Game VALUES (59,'Lecker, lecker! (Lekker, lekker)','Haba','Wrede Anja en Neundorfer Jutta',1999,'toddlers',1,2,14,'15 min',1,25.00,'leckerlecker.jpg');
INSERT INTO Game VALUES (60,'Kahuna', 'Kosmos', 'Cornett Gunter', 1998, 'from 13 to 15y',2,2, 19,'16 min to 45 min', 2, 15.00, 'kahuna.jpg');
INSERT INTO Game VALUES (61,'Kakerlaken Poker', 'Drei Magier Spiele', null, 2004, 'from 9 to 12y', 2,6, 22, '16 min to 45 min', 2, 10.00, 'kakerlakenpoker.jpg');
INSERT INTO Game VALUES (62,'Kakerlaken Salat', 'Drei Magier Spiele', null, 2007, 'from 5 to 8y', 2,6, 11, '15 min', 3, 9.00, 'kakerlakensalat.jpg');
INSERT INTO Game VALUES (63,'Kanga Banga Rh', 'Playskool', null, 1996, 'toddlers', 2,2, 12, '15 min', 3, 17.50, 'kangabangaru.jpg');
INSERT INTO Game VALUES (64,'Keesje de ringworm', 'Haba', null, 1994, 'toddlers', 2,6, 6, '15 min', 2, 37.00, 'keesjederingworm.jpg');
INSERT INTO Game VALUES (65,'Cluedo 1987','Parker','Pratt Anthony E.',1987,'from 9 to 12y',3,6,23,'46 min to 2 h',4,30.00,'cluedo1987.jpg');
INSERT INTO Game VALUES (66,'Cluedo reisspel','Parker','Pratt Anthony E.',2003,'from 9 to 12y',3,6,19,'16 min to 45 min',4,7.50,'cluedoreis.jpg');
INSERT INTO Game VALUES (67,'Cluedo Het kaartspel','Winning Moves','Orbanes Philip',2003,'from 9 to 12y',3,5,22,'46 min to 2 h',4,12.00,'cluedokaart.jpg');
INSERT INTO Game VALUES (68,'Cluedo junior 2003','Hasbro (Parker)',null,2003,'from 5 to 8y',2,6,28,'16 min to 46 min',4,17.50,'cluedojunior.jpg');
INSERT INTO Game VALUES (69,'Crocodille','Jumbo',null,1977,'from 9 to 12y',2,4,14,'16 min to 46 min',2,10.00,'crocodile.jpg');
INSERT INTO Game VALUES (70,'Galaxia','Haba','Wittig Reinhold',1999,'from 5 to 8y',2,4,12,'15 min',1,25.00,'galaxia.jpg');
INSERT INTO Game VALUES (71,'Galgje','MB',null,1994,'from 9 to 12y',2,2,20,'16 min to 45 min',2,13.00,'galgje.jpg');
INSERT INTO Game VALUES (72,'Ganzenbord','Ravensburger',null,1988,'from 5 to 8y',2,6,28,'16 min to 45 min',1,17.50,'ganzenbord.jpg');
INSERT INTO Game VALUES (73,'Gebarentaal','Parker',null,1991,'from 9 to 12y',4,32,18,'16 min to 45 min',2,41.00,'gebarentaal.jpg');
INSERT INTO Game VALUES (74,'Gekke sandwiches','Tactic',null,1998,'from 5 to 8y',2,6,24,'15 min',1,10.00,'gekkesandwiches.jpg');
INSERT INTO Game VALUES (75,'P van...','Ravensburger','Kenneweg Martin',1991,'from 9 to 12y',2,4,20,'16 min to 45 min',2,10.00,'327.jpg');
INSERT INTO Game VALUES (76,'Pagode','FX Schmid','Siena Valentin',2001,'from 13 to 15y',2,2,19,'15 min',1,12.50,'249.jpg');
INSERT INTO Game VALUES (77,'Paparazzo','Abacus Spiele','Friese Friedemann en Panning Wolfgang',1995,'from 9 to 12y',3,5,1,'16 min to 45 min',3,7.50,'700.jpg');
INSERT INTO Game VALUES (78,'Parcheesi','Hasbro (MB)',null,2001,'from 5 to 8y',2,4,28,'16 min to 45 min',2,12.00,'3112.jpg');
INSERT INTO Game VALUES (79,'Parthenon','Historien Spielegalerie','du Poel Jean',1999,'from 13 to 15y',2,6,13,'16 min to 45 min',2,40.00,'7015.jpg');
INSERT INTO Game VALUES (80,'Octogo','Octogo Games Limited',null,2002,'from 5 to 8y',2,2,27,'15 min',1,7.50,'octogo.jpg');
INSERT INTO Game VALUES (81,'Ogallala','Amigo Spiele','Hoffmann Rudi',2002,'from 9 to 12y',2,5,4,'16 min to 45 min',1,7.50,'ogallala.jpg');
INSERT INTO Game VALUES (82,'Oceania','Mayfair Games','Teuber Klaus',2004,'from 9 to 12y',1,2,27,'16 min to 45 min',3,10.00,'oceania.jpg');
INSERT INTO Game VALUES (83,'Oktro','Spear Spiele',null,1976,'from 9 to 12y',2,2,14,'16 min to 45 min',1,17.50,'oktro.jpg');
INSERT INTO Game VALUES (84,'Oil Field','Tuonela Productions','Autio Jussi',2007,'from 9 to 12y',2,2,27,'16 min to 45 min',3,10.00,'oil field.jpg');
INSERT INTO Game VALUES (85,'Het Vlooiencircus','University Games','Knizia Reiner',2006,'from 5 to 8y',3,5,1,'16 min to 45 min',2,10.00,'hetvlooiencircus.jpg');
INSERT INTO Game VALUES (86,'Herders en schapen','999 Games','des Pallieres Philippe',2002,'from 9 to 12y',2,4,1,'16 min to 45 min',2,22.50,'herdersenschapen.jpg');
INSERT INTO Game VALUES (87,'Het huis Anubis','Studio 100',null,2007,'from 9 to 12y',2,4,27,'46 min to 2 h',5,20.00,'hethuisanubis.jpg');
INSERT INTO Game VALUES (88,'Houtebal - Het echte voetbalspel','De Werkhaven','Rozendaal Kees',1982,'from 9 to 12y',2,2,8,'16 min to 45 min',2,30.00,'hetechtevoetbalspel.jpg');
INSERT INTO Game VALUES (89,'Hup, Nijntje hop!','Ravensburger','Randolph Alex',1995,'toddlers',2,6,6,'15 min',1,17.50,'hupnijntjehop.jpg');
INSERT INTO Game VALUES (90,'ABC Spel','Ravensburger',null,2000,'from 6y',1,4,14,'15 min',2,10.00,'abcspel.jpg');
INSERT INTO Game VALUES (91,'Activity','Piatnik Activity','Catty en Fuhrer',1993,'from 13 to 15y',3,16,20,'46 min to 2 h',2,35.00,'Activity.jpg');
INSERT INTO Game VALUES (92,'Dungeon Masters Guide','TSR, Inc.','Gygax Gary en Anderson Dave',1989,'from 13 to 15y',2,20,17,'heel lang',3,22.50,'Dragons.jpg');
INSERT INTO Game VALUES (93,'Afvalwijzer','Milieu-educatie Bureau Gijsbers	Afvalwijzer','Gijsbers Aukje',2000,'from 9 to 12y',2,8,14,'16 min to 45 min',2,17.50,'Afvalwijzer.jpg');
INSERT INTO Game values (94,'Uit de kunst','Parker','onbekend',1987,'from 9 to 12y',3,6,16,'16 min to 45 min',2,22.50,'uitdekunst.jpg');
INSERT INTO Game values (95,'Uitzicht op water','Ministerie van de Vlaamse Gemeenschap','Canon',1990,'from 9 to 12y',2,12,14,'16 min to 45 min',2,7.50,'uitzichtopwater.jpg');
INSERT INTO Game values (96,'Ultimo','point a point','onbekend',1993,'from 13 to 15y',2,6,20,'15 min',2,7.50,'ultimo.jpg');
INSERT INTO Game values (97,'Unanimo','InterludeCocktail Games','Coster Theo en Ora',1991,'from 9 to 12y',3,8,23,'15 min',2,27.00,'unanimo.jpg');
INSERT INTO Game values (98,'Uno extreme','Mattel','onbekend',2002,'jongeren',2,8,22,'15 min to 30 min',2,35.00,'unoextreme.jpg');
INSERT INTO Game VALUES (99,'Ice Cream','Face2Face Games','Huber Joe M.',2004,'from 5 to 8y',3,5,14,'16 min to 45 min',2,17.50,'ice cream.jpg');
INSERT INTO Game VALUES (100,'Ido','Goldsieber Spiele','Weber Bernhard',1998,'from 13 to 15y',2,4,15,'46 min to 2 h',4,25.00,'ido.jpg');
INSERT INTO Game VALUES (101,'Illuminati','Queen Games','Jackson Steve',1994,'from 13 to 15y',3,6,16,'heel lang',5,45.00,'illuminati.jpg');
INSERT INTO Game VALUES (102,'Illusions','Y. en B. Associates and M. Levene','Levene Marke',1996,'from 9 to 12y',2,6,17,'speeldh',2,26.00,'illusions.jpg');
INSERT INTO Game VALUES (103,'Image','3M Bookcase Game','onbekend',1972,'from 9 to 12y',2,6,14,'16 min to 45 min',3,30.00,'image.jpg');
INSERT INTO Game VALUES (104,'Vabanque','DaVinci Games','Faidutti Bruno en Colovini Leo',2001,'from 13 to 15y',3,6,14,'16 min to 45 min',2,17.50,'Vabanque.jpg');
INSERT INTO Game VALUES (105,'Vacantie-koffer met 50 Speelmogelijkheden','Wild Horse',null,2002,'from 5 to 8y',2,6,15,'16 min to 45 min',3,10.00,'Vacantie-koffer50.jpg');
INSERT INTO Game VALUES (106,'Vakantielandenspel - Belgie','Gamesformotion','Baggerman Jasper',2003,'from 9 to 12y',2,4,26,'16 min to 45 min',2,7.50,'VakantielandenspelB.jpg');
INSERT INTO Game VALUES (107,'Vakantielandenspel - Duitsland','Gamesformotion','Baggerman Jasper',2003,'from 9 to 12y',2,4,26,'16 min to 45 min',2,7.50,'VakantielandenspelD.jpg');
INSERT INTO Game VALUES (108,'Vakantielandenspel - Frankrijk','Gamesformotion','Baggerman Jasper',2003,'from 9 to 12y',2,4,26,'16 min to 45 min',2,7.50,'VakantielandenspelF.jpg');
INSERT INTO Game VALUES (109,'Taarteidace','Ravensburger','Pfeifer Annegret',1991,'from 5y',3,5,16,'15 min',4,10.00,'taarteidace.jpg');
INSERT INTO Game VALUES (110,'Tabaijana','Herder Spiele','Kramer Wolfgang',1990,'from 13y',2,5,17,'16 min to 45 min',2,10.00,'tabaijana.jpg');
INSERT INTO Game VALUES (111,'Tabh','MB','Hersch Brian',1992,'from 13y',6,36,20,'16 min to 45 min',3,40.00,'tabu.jpg');
INSERT INTO Game VALUES (112,'Tahiti','Franjos','Ralf zur Linde',1995,'from 13y',2,4,27,'46 min to 2 h',3,28.00,'tahiti.jpg');
INSERT INTO Game VALUES (113,'Sabotage','Franjos','Abbott Robert',1996,'from 9y',2,2,18,'16 min to 45 min',2,17.50,'sabotage.jpg');
INSERT INTO Game VALUES (114,'Ma Ni Ki!','Jumbo',null,2003,'from 9y',2,10,19,'16 min to 45 min',1,17.50,'maniki.jpg');
INSERT INTO Game VALUES (115,'Quatschhaus (Erweiterungsmodul Spielhaus)','ProLog Therapie- und Lernmittel',null,2007,'from 5y',2,4,20,'16 min to 45 min',1,19.00,'quatschhaus.jpg');
INSERT INTO Game VALUES (116,'Querbeet','Triangel Team','Hannappel Lothar en Christoph',1996,'from 5y',1,3,27,'15 min',2,22.50,'querbeet.jpg');
INSERT INTO Game VALUES (117,'Quibbix','Ravensburger','Obermair Gilbert',1984,'from 13y',1,6,20,'16 min to 45 min',2,12.50,'quibbix.jpg');
INSERT INTO Game VALUES (118,'Quiddler','Set Interprises','Falco M.J. en Falco R.E.',2001,'from 9y',1,8,20,'16 min to 45 min',2,12.00,'quiddler.jpg');
INSERT INTO Game VALUES (119,'Ranger','Clipper',null,1973,'from 9 to 12y',2,3,21,'16 min to 45 min',3,20.00,'ranger.jpg');
INSERT INTO Game VALUES (120,'Ridderstrijd','MB',null,1992,'from 9 to 12y',2,2,25,'16 min to 45 min',2,48.00,'ridderstrijd.jpg');
INSERT INTO Game VALUES (121,'Rio','Ravensburger','Staeger Bernd',1981,'from 9 to 12y',2,6,22,'15 min',2,7.50,'rio.jpg');
INSERT INTO Game VALUES (122,'Risk (F2000)','Hasbro (Parker)','Lamorisse Albert',2000,'from 13 to 15y',2,6,25,'heel lang',3,35.00,'risk.jpg');
INSERT INTO Game VALUES (123,'Formina','Selecta Spielzeug',null,2005,'toddlers',1,1,23,'15 min',1,12.50,'formina.jpg');
INSERT INTO Game VALUES (124,'Formula Motor Racing','GMT Games',null,2001,'from 9 to 12j ',3,6,24,'16 min to 45 min',2,22.50,'formulamotorracing.jpg');
INSERT INTO Game VALUES (125,'Fraction Lotto','LDA',null,2000,'from 5 to 8y',1,4,25,'15 min',2,22.50,'fractionlotto.jpg');
INSERT INTO Game VALUES (126,'Forum Romanum','Franckh-Kosmos',null,1988,'from 9j to 12y',2,6,1,'46 min to 2 h',3,50.00,'forumromanum.jpg');
INSERT INTO Game VALUES (127,'Formel 1','ASS Altenburg Stralsunder',null,1980,'from 9 to 12y',2,6,2,'16 min to 45 min',2,22.50,'formel1.jpg');
INSERT INTO Game VALUES (128,'Bamboleo','zoch-verlag','Zeimet Jacques',1996,'from 5 to 8y',2,7,9,'16 min to 45 min', 1, 35.00, 'bamboleo.jpg');
INSERT INTO Game VALUES (129,'Battle Field', 'Mosa Import SA',null,1999,'from 5 to 8y',2,2,3,'16 min to 45 min', 2,7.50,'battlefield.jpg');
INSERT INTO Game VALUES (130,'Battlefleet Gothic', 'Games Workshop','Chambers Andy en Thorpe Gavin',1999,'from 13 to 15y',2,4,2,'heel lang',3,22.50,'battlefleet.jpg');
INSERT INTO Game VALUES (131,'Ben Hur','Historien Spielegalerie','du Poel Jean', 1987,'from 9 to 12y',2,6,28,'46 min to 2 h', 2,50.00,'benhur.jpg');
INSERT INTO Game VALUES (132,'Beterweters','University Games', null,2003,'16 jaar to 45 jaar',2,12,26,'16 min to 45 min', 2, 28.00, 'betweters.jpg');
INSERT INTO Game VALUES (133,'Muizen gooien','Ravensburger','Virginia',2000,'from 5 to 8y',2,4,1,'16 min to 45 min',2,10.00,'muizen gooien.jpg');
INSERT INTO Game VALUES (134,'Memorex','Braintrust Games','Schurzmann',1995,'toddlers',2,6,14,'16 min to 45 min',3,25.00,'memorex.jpg');
INSERT INTO Game VALUES (135,'Meterspel','Bekadidact','van Looveren',2006,'from 9 to 12y',4,4,14,'16 to 45 min',2,99.00,'meterspel.jpg');
INSERT INTO Game VALUES (136,'Mandarin','Mattel','Kremer Tom',1990,'from 9 to 12y',3,5,2,'16 min to 45 min',2,17.50,'mandarin.jpg');
INSERT INTO Game VALUES (137,'Makrobian','Dymanic toys','Kidult Games',2005,'from 5 to 8y',1,1,3,'15 min',3,7.50,'makrobian.jpg');
INSERT INTO Game VALUES (138,'Edakhar - De hele familie speelt!','Edak - Inter. B.V.',null,2002,'from 9 to 12y',4,8,4,'16 min to 45 min',5,49.00,'edakhar.jpg');
INSERT INTO Game VALUES (139,'Eddy Emmer','MB',null,1994,'toddlers',2,4,9,'15 min',1,10.00,'eddyemmer.jpg');
INSERT INTO Game VALUES (140,'Edel, Stein en Reich','Alea','Staupe Reinhard',2003,'from 9 to 12y',3,5,5,'46 min to 2 h',3,17.50,'edelsteiideich.jpg');
INSERT INTO Game VALUES (141,'Eden','Kosmos','Zuckerman Gal',2001,'from 9 to 12y',3,4,6,'46 min to 2 h',4,22.50,'eden.jpg');
INSERT INTO Game VALUES (142,'Edison en Co','Goldsieber Spiele','Burkhardt Gunter',1998,'from 13 to 15y',2,4,19,'46 min to 2 h',3,25.00,'edison.jpg');
INSERT INTO Game VALUES (143,'New York', 'Piatnik','Sackson Sid en Kubler Sven M.',1995,'from 9 to 12y',3,5,1,'46 min to 2 h',2,25.00,'ny.jpg');
INSERT INTO Game VALUES (144,'Neolithibum','Heidelberger Spieleverlag','Bilz Harald',1992,'from 13 to 15y',3,6,15,'16 min to 45 min',2,17.50,'Neolithibum.jpg');
INSERT INTO Game VALUES (145,'New Orleans Big Band','ASS Altenburg Stralsunder','Schutzdeller Herbert',1990,'from 13 to 15y',3,6,7,'46 min to 2 h',2,7.50,'new_orleans.jpg');
INSERT INTO Game VALUES (146,'Netwerk Vlaanderen','Netwerk Vlaanderen vzw','Deprins Wim',1998,'meer dan 16y',2,6,14,'16 min to 45 min',3,17.50,'netwerk_vlaanderen.jpg');
INSERT INTO Game VALUES (147,'Nain Jaune','Jumbo',null,1992,'from 9 to 12y',3,8,23,'16 min to 45 min',2,12.50,'Nain_Jaune.jpg');
INSERT INTO Game VALUES (148,'Simon reisspel','Hasbro (MB)',null,2002,'from 5y',1,4,8,'15 min',2,17.50,'simon.jpg');
INSERT INTO Game VALUES (149,'Space Beans','Amigo Spiele','Rosenberg Uwe',1999,'from 9y',2,6,9,'46 min to 120 min',1,7.50,'spacebeans.jpg');
INSERT INTO Game VALUES (150,'Spookhuis','Ravensburger','Charves Virginia',1999,'from 5y',2,4,24,'15 min',1,13.00,'spookhuis.jpg');
INSERT INTO Game VALUES (151,'Stratego 4','Jumbo',null,1996,'from 9y',3,4,25,'46 min to 120 min',2,22.50,'stratego4.jpg');
INSERT INTO Game VALUES (152,'Suske en Wiske spel','Papita',null,1981,'from 5y',2,4,10,'15 min', 1,10.00,'suskewiskespel.jpg');
INSERT INTO Game VALUES (153,'DaBol - Het game van Johan Cruyff','Diset',null,2006,'from 9 to 12y',2,2,11,'16 min to 45 min',2,17.50,'johancruyff.jpg');
INSERT INTO Game VALUES (154,'Dacapo','Amigo Spiele','Pauli Thomas',1997,'from 9 to 12y',2,6,22,'16 min to 45 min',2,7.50,'dacapo.jpg');
INSERT INTO Game VALUES (155,'Dacapo! - Nichts fur kleine Fische','Piatnik','Sackson Sid',1996,'from 9 to 12y',1,4,12,'16 min  to 45 min',1,10.00,'dacapo!.jpg');
INSERT INTO Game VALUES (156,'Daddy Cool','Huch en friends','Meister Heinz',2004,'from 5 to 8y',2,6,13,'16 min to 45 min',2,17.50,'daddycool.jpg');
INSERT INTO Game VALUES (157,'Dagen en maanden','Ravensburger','Welz Christine',1996,'from 5 to 8y',2,4,14,'16 min to 45 min',2,11.50,'dagenenmaanden.jpg');
INSERT INTO Game VALUES (158,'Jumanji','MB','onbekend',1995,'from 9 to 12y',2,4,14,'16 min to 45 min',3,7.50,'jumanji.jpg');
INSERT INTO Game VALUES (159,'Jump!','EG Spiele','Kramer Wolfgang en Kiesling Michael',1998,'from 9 to 12y',2,5,15,'46 min to 2 h',4,22.50,'jump!.jpg');
INSERT INTO Game VALUES (160,'Jungle Mix','Ravensburger','Punke Helmut',2005,'toddlers',2,4,16,'15 min',2,12.00,'jungle mix.jpg');
INSERT INTO Game VALUES (161,'Junta','ASS Altenburg Stralsunder','Tsao Vincent, Grossman Ben',1986,'meer dan 16y',4,7,17,'heel lang',3,22.50,'junta.jpg');
INSERT INTO Game VALUES (162,'Jurassic Park','Parker',null,1993,'from 9 to 12y',2,4,3,'16 min to 45 min',2,25.00,'jurassic park.jpg');
INSERT INTO Game VALUES (163,'Lego Creator - Het Spel','Jumbo',null,2002,'from 5 to 8y',2,4,18,'15 min',2,17.50,'legocreator.jpg');
INSERT INTO Game VALUES (164,'Lest Best','MB',null,1985,'from 5 to 8y',2,2,27,'15 min',2,7.50,'lestbest.jpg');
INSERT INTO Game VALUES (165,'Leve de lol!','Janbibejan Belgie bvba',null,2006,'from 5 to 8y',2,6,7,'16 min to 45 min',5,50.00,'levedelol.jpg');
INSERT INTO Game VALUES (166,'Lindwurm','Ferbeiter Spiele','Kodas Guven',1996,'from 9 to 12y',1,4,19,'16 min to 45 min',2,15.00,'lindwurm.jpg');
INSERT INTO Game VALUES (167,'Lupus in Tabula','daVinci Games','Derossi Gianpaolo',2002,'from 9 to 12y',9,23,17,'16 min to 45 min',2,9.00,'lupusintabula.jpg');
INSERT INTO Game VALUES (168,'Lynch Mob','Game Addicts','Perini Don en Kerchner Rob',2003,'from 9 to 12y',8,22,17,'16 min to 45 min',3,7.00,'lynchmob.jpg');
INSERT INTO Game VALUES (169,'Kleine ijsbeer ga je mee', 'Selecta', null, 2002, 'toddlers', 2,5, 20, '15 min', 2, 12.00,'kleineijsbeergajemee.jpg');
INSERT INTO Game VALUES (170,'Kleine ijsbeer gaat schotjesspringen', 'Selecta',  null, 2002, 'toddlers', 2,5, 14,'15 min', 2, 7.50, 'schotjesspringen.jpg');
INSERT INTO Game VALUES (171,'Kleine ijsbeer waar zitten we verstopt', 'Selecta', null, 2002, 'toddlers', 2,5, 14,'15 min', 2, 12.00, 'waarzittenweverstopt.jpg');
INSERT INTO Game VALUES (172,'Knollen voor citroenen', 'Ravensburg', 'Schacht Michael', 2005, 'from 9 to 12y', 3,6, 27,'16 min to 45 min', 2, 13.00, 'knollenvoorcitroenen.jpg');
INSERT INTO Game VALUES (173,'Konnen Schweine fliegen', 'Kosmos', 'Punke Helmut', 2007, 'from 5 to 8y', 2,4, 21,'15 min', 2, 17.50, 'konnenschweinefliegen.jpg');
INSERT INTO Game VALUES (174,'Calcula','Interbero Productions',null,2001,'from 9 to 12y',1,6,10,'16 to 46 min',5,10.00,'calcula.jpg');
INSERT INTO Game VALUES (175,'California','Acabus Spiele','Schacht Michael',2006,'from 9 to 12y',2,5,27,'46 min to 2 h',3,22.50,'california.jpg');
INSERT INTO Game VALUES (176,'Carcassonne','999 games','Wrede Klaus-jurgen',2000,'from 9 to 12y',2,5,27,'16 min to 45 min',2,22.50,'carcassonne.jpg');
INSERT INTO Game VALUES (177,'China','Acabus Spiele','Schacht Michael',2005,'from 9 to 12y',3,5,14,'46 min to 2 h',3,25.00,'china.jpg');
INSERT INTO Game VALUES (178,'Games of the world 1','Game Time',null,2006,'from 9 to 12y',2,4,15,'16 min to 45 min',2,15.00,'gamesoftheworld.jpg');
INSERT INTO Game VALUES (179,'Gelukseendjes','MB',null,1995,'toddlers',2,4,24,'15 min',1,22.50,'gelukseendjes.jpg');
INSERT INTO Game VALUES (180,'Geometrica','Beleduc',null,2004,'toddlers',1,1,16,'15 min',null,22.50,'geometrica.jpg');
INSERT INTO Game VALUES (181,'Gevoelswereldspel','Creare','Gerrickens Peter en Verstege Marijke',2003,'meer dan 16y',2,20,14,'16 min to 45 min',4,25.00,'gevoelswereld.jpg');
INSERT INTO Game VALUES (182,'Giganten','Kosmos','Manz Wilko',1999,'from 13 to 15y',3,4,13,'46 min to 2 h',3,30.00,'giganten.jpg');
INSERT INTO Game VALUES (183,'Party Time','FX Schmid',null,1994,'from 13 to 15y',4,12,20,'46 min to 2 h',3,28.00,'615.jpg');
INSERT INTO Game VALUES (184,'Payday','Clipper',null,1974,'from 9 to 12y',2,6,14,'16 min to 45 min',2,10.00,'4731.jpg');
INSERT INTO Game VALUES (185,'Peggino','Ravensburger','Bones L.W.',1975,'from 9 to 12y',1,2,1,'15 min',1,10.00,'1943.jpg');
INSERT INTO Game VALUES (186,'Perudo','Parker',null,1994,'from 13 to 15y',2,4,12,'16 min to 45 min',2,10.00,'534.jpg');
INSERT INTO Game VALUES (187,'Ole','Abacus Spiele','Panning Wolfgang',1995,'from 9 to 12y',3,8,22,'16 min to 45 min',2,7.50,'ole.jpg');
INSERT INTO Game VALUES (188,'Op de boerderiy','Eurogames',null,1967,'from 5 to 8y',2,6,27,'15 min',2,10.0,'op de boerderij.jpg');
INSERT INTO Game VALUES (189,'Optiebeurs Spel','European Options Exchange','Glaudemans Ronald',1984,'from 13 to 15y',2,4,27,'16 min to 45 min',3,17.50,'optiebeurs spel.jpg');
INSERT INTO Game VALUES (190,'Ordo','Parker','Solomon Eric W.',1978,'from 9 to 12y',2,2,27,'16 min to 45 min',2,20.00,'ordo.jpg');
INSERT INTO Game VALUES (191,'Over and Out','Jax Ltd, Inc.','Meyers Keith',2002,'from 9 to 12y',2,8,27,'16 min to 45 min',2,7.50,'over and out.jpg');
INSERT INTO Game VALUES (192,'Hunny Hopp','Ravensburger',null,2004,'from 5 to 8y',2,4,6,'15 min',2,10.00,'hunnyhop.jpg');
INSERT INTO Game VALUES (193,'HeroScape','Hasbro (MB)',null,2004,'from 9 to 12y',2,3,2,'46 min to 2 h',2,60.00,'heroscape.jpg');
INSERT INTO Game VALUES (194,'Heksjes-Race','Ravensburger','Meister Heinz',1999,'toddlers',2,6,24,'15 min',1,15.00,'heksjesrace.jpg');
INSERT INTO Game VALUES (195,'Het Omega computer virus','MB',null,1993,'from 9 to 12y',1,4,3,'16 min to 45 min',3,30.00,'hetomegavirus.jpg');
INSERT INTO Game VALUES (196,'Het vliegende tapijt','Ravensburger','Flogaus Elke en Feyerabend Kurt',1987,'from 9 to 12y',3,6,28,'16 min to 45 min',3,22.50,'hetvliegendetapijt.jpg');
INSERT INTO Game VALUES (197,'Akiba','Fun Connection','Cahu Serge',1994,'from 9 to 12y',2,2,19,'15 min',2,22.50,'Akiba.jpg');
INSERT INTO Game VALUES (198,'Alfred Hitchcock','University Games',null,2001,'from 13 to 15y',1,1,17,'heel lang',3,15.00,'Alfred Hitchcock.jpg');
INSERT INTO Game VALUES (199,'Alles fur die Katz','FX Schmid','Hoffmann Rudi',1994,'from 5 to 8y',2,4,19,'16 min to 45 min',2,12.50,'Alles fur die Katz.jpg');
INSERT INTO Game VALUES (200,'Amazonas','Haba','Miller Arno',1993,'from 9 to 12y',2,4,19,'16 min to 45 min',2,25.00,'Amazonas.jpg');
INSERT INTO Game VALUES (201,'Animal Party','Ravensburger','Birkinshaw Amanda',2004,'from 5 to 8y',2,6,23,'16 min to 45 min',1,10.00,'Animal Party.jpg');
INSERT INTO Game values (202,'Uno junior','Mattel','onbekend',1992,'toddlers',2,4,22,'15 min',2,12.00,'unojunior.jpg');
INSERT INTO Game values (203,'Uno dominos','Sio','onbekend',1986,'from 5 to 8y',2,6,22,'16 min to 45 min',2,7.50,'unodominos.jpg');
INSERT INTO Game values (204,'Upturn','Goliath','onbekend',2005,'from 5 to 8y',2,6,1,'16 min to 45 min',2,25.00,'upturn.jpg');
INSERT INTO Game values (205,'Up and down','Ravensburger','Baart Gunter',2005,'from 5 to 8y',2,6,24,'16 min to 45 min',3,10.00,'upanddown.jpg');
INSERT INTO Game values (206,'Ultra','Parker','onbekend',1976,'from 9 to 12y',2,2,21,'16 min to 45 min',2,10.00,'ultra.jpg');
INSERT INTO Game VALUES (207,'Imago','Tactic','onbekend',2000,'from 13 to 15y',3,8,17,'46 min to 2 h',2,22.50,'imago.jpg');
INSERT INTO Game VALUES (208,'Imperial','Eggertspiele','Gerdts Mac',2006,'from 13 to 15y',2,6,18,'heel lang',4,32.00,'imperial.jpg');
INSERT INTO Game VALUES (209,'In je element','Thema','Osinga Annie en van Engeland Lidia',2004,'meer dan 16y',2,6,14,'16 min to 45 min',4,35.00,'in je element.jpg');
INSERT INTO Game VALUES (210,'Industria','Queen Games','Schacht Michael',2003,'from 9 to 12y',3,4,19,'46 min to 2 h',3,22.50,'industria.jpg');
INSERT INTO Game VALUES (211,'Inka','Queen Games','Lieske Harald',2005,'from 9 to 12y',2,5,20,'16 min to 45 min',2,12.50,'inka.jpg');
INSERT INTO Game VALUES (212,'Vakantielandenspel - Groot-Brittannie','Gamesformotion','Baggerman Jasper',2003,'from 9 to 12y',2,4,26,'16 min to 45 min',2,7.50,'VakantielandenspelGB.jpg');
INSERT INTO Game VALUES (213,'Vakantielandenspel - Italie','Gamesformotion','Baggerman Jasper',2003,'from 9 to 12y',2,4,26,'16 min to 45 min',2,7.50,'VakantielandenspelIT.jpg');
INSERT INTO Game VALUES (214,'Vakantielandenspel - Spanje','Gamesformotion','Baggerman Jasper',2003,'from 9 to 12y',2,4,26,'16 min to 45 min',2,7.50,'VakantielandenspelSP.jpg');
INSERT INTO Game VALUES (215,'Vakantielandenspel - Vlaanderen','Gamesformotion','Baggerman Jasper',2003,'from 9 to 12y',2,4,26,'16 min to 45 min',2,7.50,'VakantielandenspelVL.jpg');
INSERT INTO Game VALUES (216,'Valkuil','MB',null,1972,'from 5 to 8y',4,6,9,'15 min',2,22.50,'Valkuil.jpg');
INSERT INTO Game VALUES (217,'Takito','ASS',null,1991,'van 13y',2,2,20,'16 min to 45 min',1,7.50,'takito.jpg');
INSERT INTO Game VALUES (218,'Taki','Amigo Spiele','Shafir Haim',2006,'van 13 jaar',2,10,21,'16 min to 45 min',2,7.50,'taki.jpg');
INSERT INTO Game VALUES (219,'Talisman','Amigo Schmidt Spiele','Harris Robert',1999,'van 13 jaar',2,6,22,'heel lang',5,45.00,'take5.jpg');
INSERT INTO Game VALUES (220,'Tam Tam','EG Spiele',null,1999,'van 13y',3,20,20,'16 min to 45 min',2,22.50,'tamtam.jpg');
INSERT INTO Game VALUES (221,'The Hobbit','Iron Crown Enterprises','Jean Vanaise',1994,'van 13y',2,4,3,'46 min to 2 h',3,40.00,'thehobbit.jpg');

/*
CREATE TABLE Borrower
(
   id       		integer     primary key  auto_increment,
   borrower_name    varchar(40)	not null,
   street			varchar(30)	not null,
   house_number		varchar(5)	not null,
   bus_number		varchar(5),
   postcode			integer      not null,
   city				varchar(30)	not null,
   telephone		varchar(10),
   email			varchar(40) not null
);*/

INSERT INTO Borrower VALUES (1,'Jan Peeters','Begonialaan','25','A',2440,'Geel','014572810','jan.peeters@khk.be');
INSERT INTO Borrower VALUES (2,'Ann Lenaerts','Schoolstraat','5',null,2450,'Meerhout','014309125','ann.lenaerts@cisco.com');
INSERT INTO Borrower VALUES (3,'Jonas Verstraeten','Molsebaan','188A',null,2440,'Geel','014574578','jonas.verstraeten@kbc.be');
INSERT INTO Borrower VALUES (4,'Daan Verellen','Molenstraat','13',null,2440,'Geel','014126489','daan.iemands@hotmail.com');
INSERT INTO Borrower VALUES (5,'Simonne Vandervloed','Dageraadlaan','7',null,2110,'Wijnegem','014231987','simonne@ing.be');
INSERT INTO Borrower VALUES (6,'Mieke Janssen','Binnenweg','48',null,2980,'Schilde','014397145','mieke.janssen@telenet.be');
INSERT INTO Borrower VALUES (7,'Jos Vandeven','Martelarenstraat','25',null,2400,'Mol','014312417','jos.vandeven@schoten.be');
INSERT INTO Borrower VALUES (8,'Jef Vervecken','Maalderstraat','4',null,2400,'Mol','014379427','jef.vervecken@rtv.be');
INSERT INTO Borrower VALUES (9,'Mattias Punie','Postelarenweg','69',null,2400,'Mol','014574777','mattias.punie@hotmail.com');
INSERT INTO Borrower VALUES (10,'Bart Theys','Astasialaan','2',null,2440,'Geel','014574610','bart.theys@doors.com');
INSERT INTO Borrower VALUES (11,'Emiel Hanssen','Terkolder','15',null,2400,'Mol','014142310','emiel.hanssen@telenet.be');
INSERT INTO Borrower VALUES (12,'Ron Desters','Kratstraat','34',null,2440,'Geel','014568854','ron.desters@kdg.be');
INSERT INTO Borrower VALUES (13,'Wim Jaspers','Namensebaan','146',null,3000,'Leuven','015456456','wim@hotmail.com');
INSERT INTO Borrower VALUES (14,'Ewout Vandeneyende', 'Molenstraat','7',null,1568,'Rotselaar','022789789','ewout@hotmail.com');
INSERT INTO Borrower VALUES (15,'Jan Moonen', 'Stationstraat','15',null,2300,'Turnhout','023753753','jan.moonen@eu.be');
INSERT INTO Borrower VALUES (16,'Toon Huybrechts','Schutpenning','33','7',3980,'Tessenderlo','015542710','toon_h@hotmail.com');
INSERT INTO Borrower VALUES (17,'Lieke Convens','Vijverstraat','18',null,3980,'Tessenderlo','013312825','lieke.convens@gmail.com');
INSERT INTO Borrower VALUES (18,'Greet Nuyts','Waterstraat','88',null,2260,'Westerlo','011224558','greet.nuyts@caboem.be');
INSERT INTO Borrower VALUES (19,'Johan Borgers','Antwerpsestwg','18','24',2180,'Ekeren','014587957','johan.borgers@gmail.com');
INSERT INTO Borrower VALUES (20,'Valerie Deweerdt','Dianalaan','254',null,2600,'Berchem',null,'valerie_v@yahoo.com');
INSERT INTO Borrower VALUES (21,'Dennis Apers','Waterweg','3',null,2180,'Ekeren','035428788','dennis.apers@gmail.com');
INSERT INTO Borrower VALUES (22,'Staf Verwimp','Geelsebaan','164',null,2440,'Geel','014543567','staf.Verwimp@belgacom.be');
INSERT INTO Borrower VALUES (23,'Koen Meynen','Dalstraat','1',null,2400,'Mol','014319875','koen.meynen@lexia.be');
INSERT INTO Borrower VALUES (24,'Kevin Hoskens','Millegemseweg','22',null,2400,'Mol','014316547','kevin.hoskens@zgeel.be');
INSERT INTO Borrower VALUES (25,'Nick Verrijdt','Biesdelle','9',null,3980,'Tessenderlo',null,'nick.verrijdt@khk.be');
INSERT INTO Borrower VALUES (26,'Bert Jans','Meilrijk','3',null,3290,'Diest',null,'bert.jans@gmail.com');
INSERT INTO Borrower VALUES (27,'Wouter Wilms','Baal','22',null,3980,'Tessenderlo','013671275','wouter_wilms@hotmail.com');
INSERT INTO Borrower VALUES (28,'Marc Van Gorp','Schoolstraat','12',null,'2250','Olen','014847965','marcvg@hotmail.com');
INSERT INTO Borrower VALUES (29,'Gert Yvens','Tormentlaan','5',null,3500,'Hasselt','050129873','gert.yvens@telenet.be');
INSERT INTO Borrower VALUES (30,'Frans Liekens','Biegrachtstraat','69','2',3600,'Genk','052874562','frliekens@kbd.be');


/*
CREATE TABLE Borrow
(
    id              integer		primary key auto_increment,
    game_id         integer		not null,
    borrower_id     integer		not null,
    borrow_date    	datetime      	not null,
    return_date 	datetime,
    foreign key (game_id) references Game(id),
    foreign key (borrower_id) references Borrower(id)
);
*/

INSERT INTO Borrow VALUES (1, 15,14,'2018-04-22','2018-04-25');
INSERT INTO Borrow VALUES (2, 125,7,'2018-04-22','2018-04-26');
INSERT INTO Borrow VALUES (3, 216,2,'2018-04-22',null);
INSERT INTO Borrow VALUES (4, 77,4,'2018-04-22','2018-04-26');
INSERT INTO Borrow VALUES (5, 145,11,'2018-04-22','2018-04-26');
INSERT INTO Borrow VALUES (6, 11,14,'2018-04-22','2018-04-26');
INSERT INTO Borrow VALUES (7, 5,7,'2018-04-22','2018-04-26');
INSERT INTO Borrow VALUES (8, 66,21,'2018-04-23',null);
INSERT INTO Borrow VALUES (9, 99,14,'2018-04-23',null);
INSERT INTO Borrow VALUES (10, 214,17,'2018-04-23',null);
INSERT INTO Borrow VALUES (11, 132,18,'2018-04-23',null);
INSERT INTO Borrow VALUES (12, 174,13,'2018-04-23',null);
INSERT INTO Borrow VALUES (13, 122,21,'2018-04-23',null);
INSERT INTO Borrow VALUES (14, 26,25,'2018-04-23',null);
INSERT INTO Borrow VALUES (15, 94,16,'2018-04-23',null);
INSERT INTO Borrow VALUES (16, 156,19,'2018-04-25',null);
INSERT INTO Borrow VALUES (17, 120,17,'2018-04-25',null);
INSERT INTO Borrow VALUES (18, 176,22,'2018-04-25',null);
INSERT INTO Borrow VALUES (19, 33,5,'2018-04-25',null);
INSERT INTO Borrow VALUES (20, 37,16,'2018-04-25',null);
INSERT INTO Borrow VALUES (21, 28,17,'2018-04-25',null);
INSERT INTO Borrow VALUES (22, 96,1,'2018-04-25',null);
INSERT INTO Borrow VALUES (23, 45,3,'2018-04-25',null);
INSERT INTO Borrow VALUES (24, 200,5,'2018-04-26',null);
INSERT INTO Borrow VALUES (25, 203,16,'2018-04-26',null);
INSERT INTO Borrow VALUES (26, 71,27,'2018-04-26',null);
INSERT INTO Borrow VALUES (27, 86,30,'2018-04-26',null);
INSERT INTO Borrow VALUES (28, 79,24,'2018-04-26',null);
INSERT INTO Borrow VALUES (29, 143,19,'2018-04-26',null);

