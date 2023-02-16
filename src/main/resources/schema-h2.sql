-- H2 2.1.214; 
;              
CREATE USER IF NOT EXISTS "" SALT '' HASH '' ADMIN;            
CREATE SEQUENCE "PUBLIC"."HIBERNATE_SEQUENCE" START WITH 57;
CREATE CACHED TABLE "PUBLIC"."MEDIUM"(
    "ID" BIGINT NOT NULL,
    "LOCATION" CHARACTER VARYING(255),
    "TYPE" INTEGER
);
ALTER TABLE "PUBLIC"."MEDIUM" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_8" PRIMARY KEY("ID");
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.MEDIUM;
INSERT INTO "PUBLIC"."MEDIUM" VALUES
(4, 'Plex', 2);
CREATE CACHED TABLE "PUBLIC"."MOVIE"(
    "ID" BIGINT NOT NULL,
    "ACTORS" CHARACTER VARYING(255),
    "AWARDS" CHARACTER VARYING(255),
    "BOX_OFFICE" CHARACTER VARYING(255),
    "COUNTRY" CHARACTER VARYING(255),
    "DIRECTOR" CHARACTER VARYING(255),
    "DVD" CHARACTER VARYING(255),
    "GENRE" CHARACTER VARYING(255),
    "IMDBID" CHARACTER VARYING(255),
    "IMDB_RATING" CHARACTER VARYING(255),
    "IMDB_VOTES" CHARACTER VARYING(255),
    "LANGUAGE" CHARACTER VARYING(255),
    "METASCORE" CHARACTER VARYING(255),
    "PLOT" CHARACTER VARYING(255),
    "POSTER" CHARACTER VARYING(255),
    "PRODUCTION" CHARACTER VARYING(255),
    "RATED" CHARACTER VARYING(255),
    "RELEASED" CHARACTER VARYING(255),
    "RUNTIME" CHARACTER VARYING(255),
    "TITLE" CHARACTER VARYING(255),
    "TYPE" CHARACTER VARYING(255),
    "WRITER" CHARACTER VARYING(255),
    "RYEAR" CHARACTER VARYING(255)
);
ALTER TABLE "PUBLIC"."MOVIE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_4" PRIMARY KEY("ID");
-- 27 +/- SELECT COUNT(*) FROM PUBLIC.MOVIE;
INSERT INTO "PUBLIC"."MOVIE" VALUES
(1, 'Robert Downey Jr., Chris Evans, Mark Ruffalo', 'Nominated for 1 Oscar. 70 wins & 132 nominations total', '$858,373,000', 'United States', 'Anthony Russo, Joe Russo', '30 Jul 2019', 'Action, Adventure, Drama', 'tt4154796', '8.4', '1,141,629', 'English, Japanese, Xhosa, German', '78', 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos'' actions and restore balance to the universe.', '/posters/tt4154796.jpg', 'N/A', 'PG-13', '26 Apr 2019', '181 min', 'Avengers: Endgame', 'movie', 'Christopher Markus, Stephen McFeely, Stan Lee', '2019'),
(5, 'Chris Evans, Hugo Weaving, Samuel L. Jackson', '4 wins & 46 nominations', '$176,654,505', 'United States', 'Joe Johnston', '25 Oct 2011', 'Action, Adventure, Sci-Fi', 'tt0458339', '6.9', '851,012', 'English, Norwegian, French', '66', 'Steve Rogers, a rejected military soldier, transforms into Captain America after taking a dose of a "Super-Soldier serum". But being Captain America comes at a price as he attempts to take down a warmonger and a terrorist organiza...', '/posters/tt0458339.jpg', 'N/A', 'PG-13', '22 Jul 2011', '124 min', 'Captain America: The First Avenger', 'movie', 'Christopher Markus, Stephen McFeely, Joe Simon', '2011'),
(7, 'Robert Downey Jr., Chris Evans, Mark Ruffalo', '8 wins & 52 nominations', '$459,005,868', 'United States', 'Joss Whedon', '02 Oct 2015', 'Action, Adventure, Sci-Fi', 'tt2395427', '7.3', '868,690', 'English, Korean', '66', 'When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, things go horribly wrong and it''s up to Earth''s mightiest heroes to stop the villainous Ultron from enacting his terrible plan.', '/posters/tt2395427.jpg', 'N/A', 'PG-13', '01 May 2015', '141 min', 'Avengers: Age of Ultron', 'movie', 'Joss Whedon, Stan Lee, Jack Kirby', '2015'),
(9, 'Robert Downey Jr., Chris Evans, Scarlett Johansson', 'Nominated for 1 Oscar. 38 wins & 80 nominations total', '$623,357,910', 'United States', 'Joss Whedon', '25 Sep 2012', 'Action, Sci-Fi', 'tt0848228', '8.0', '1,397,515', 'English, Russian, Hindi', '69', 'Earth''s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', '/posters/tt0848228.jpg', 'N/A', 'PG-13', '04 May 2012', '143 min', 'The Avengers', 'movie', 'Joss Whedon, Zak Penn', '2012'),
(11, 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo', 'Nominated for 1 Oscar. 46 wins & 79 nominations total', '$678,815,482', 'United States', 'Anthony Russo, Joe Russo', '14 Aug 2018', 'Action, Adventure, Sci-Fi', 'tt4154756', '8.4', '1,090,272', 'English', '68', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', '/posters/tt4154756.jpg', 'N/A', 'PG-13', '27 Apr 2018', '149 min', 'Avengers: Infinity War', 'movie', 'Christopher Markus, Stephen McFeely, Stan Lee', '2018'),
(13, 'Chris Evans, Robert Downey Jr., Scarlett Johansson', '16 wins & 73 nominations', '$408,084,349', 'United States', 'Anthony Russo, Joe Russo', '13 Sep 2016', 'Action, Sci-Fi', 'tt3498820', '7.8', '794,549', 'English, German, Xhosa, Russian, Romanian, Hindi', '75', 'Political involvement in the Avengers'' affairs causes a rift between Captain America and Iron Man.', '/posters/tt3498820.jpg', 'N/A', 'PG-13', '06 May 2016', '147 min', 'Captain America: Civil War', 'movie', 'Christopher Markus, Stephen McFeely, Joe Simon', '2016'),
(15, 'Robert Downey Jr., Gwyneth Paltrow, Terrence Howard', 'Nominated for 2 Oscars. 22 wins & 73 nominations total', '$319,034,126', 'United States, Canada', 'Jon Favreau', '30 Sep 2008', 'Action, Adventure, Sci-Fi', 'tt0371746', '7.9', '1,065,451', 'English, Persian, Urdu, Arabic, Kurdish, Hindi, Hungarian', '79', 'After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.', '/posters/tt0371746.jpg', 'N/A', 'PG-13', '02 May 2008', '126 min', 'Iron Man', 'movie', 'Mark Fergus, Hawk Ostby, Art Marcum', '2008');
INSERT INTO "PUBLIC"."MOVIE" VALUES
(17, 'Robert Downey Jr., Mickey Rourke, Gwyneth Paltrow', 'Nominated for 1 Oscar. 7 wins & 44 nominations total', '$312,433,331', 'United States', 'Jon Favreau', '17 Aug 2010', 'Action, Sci-Fi', 'tt1228705', '6.9', '824,376', 'English, French, Russian', '57', 'With the world now aware of his identity as Iron Man, Tony Stark must contend with both his declining health and a vengeful mad man with ties to his father''s legacy.', '/posters/tt1228705.jpg', 'N/A', 'PG-13', '07 May 2010', '124 min', 'Iron Man 2', 'movie', 'Justin Theroux, Stan Lee, Don Heck', '2010'),
(19, 'Robert Downey Jr., Guy Pearce, Gwyneth Paltrow', 'Nominated for 1 Oscar. 20 wins & 63 nominations total', '$409,013,994', 'United States', 'Shane Black', '24 Sep 2013', 'Action, Adventure, Sci-Fi', 'tt1300854', '7.1', '856,150', 'English', '62', 'When Tony Stark''s world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.', '/posters/tt1300854.jpg', 'N/A', 'PG-13', '03 May 2013', '130 min', 'Iron Man 3', 'movie', 'Drew Pearce, Shane Black, Stan Lee', '2013'),
(21, 'Chris Evans, Samuel L. Jackson, Scarlett Johansson', 'Nominated for 1 Oscar. 5 wins & 52 nominations total', '$259,766,572', 'United States', 'Anthony Russo, Joe Russo', '09 Sep 2014', 'Action, Adventure, Sci-Fi', 'tt1843866', '7.8', '851,966', 'English, French', '70', 'As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and S.H.I.E.L.D agent, Black Widow, to battle a new threat from history: an assassin known as the Winter Soldier.', '/posters/tt1843866.jpg', 'N/A', 'PG-13', '04 Apr 2014', '136 min', 'Captain America: The Winter Soldier', 'movie', 'Christopher Markus, Stephen McFeely, Joe Simon', '2014'),
(23, 'Benedict Cumberbatch, Chiwetel Ejiofor, Rachel McAdams', 'Nominated for 1 Oscar. 20 wins & 68 nominations total', '$232,641,920', 'United States', 'Scott Derrickson', '28 Feb 2017', 'Action, Adventure, Fantasy', 'tt1211837', '7.5', '749,491', 'English', '72', 'While on a journey of physical and spiritual healing, a brilliant neurosurgeon is drawn into the world of the mystic arts.', '/posters/tt1211837.jpg', 'N/A', 'PG-13', '04 Nov 2016', '115 min', 'Doctor Strange', 'movie', 'Jon Spaihts, Scott Derrickson, C. Robert Cargill', '2016'),
(25, 'Chris Hemsworth, Tom Hiddleston, Cate Blanchett', '6 wins & 49 nominations', '$315,058,289', 'United States, Australia', 'Taika Waititi', '06 Mar 2018', 'Action, Adventure, Comedy', 'tt3501632', '7.9', '759,104', 'English', '74', U&'Imprisoned on the planet Sakaar, Thor must race against time to return to Asgard and stop Ragnar\00f6k, the destruction of his world, at the hands of the powerful and ruthless villain Hela.', '/posters/tt3501632.jpg', 'N/A', 'PG-13', '03 Nov 2017', '130 min', 'Thor: Ragnarok', 'movie', 'Eric Pearson, Craig Kyle, Christopher L. Yost', '2017'),
(27, 'Chris Hemsworth, Anthony Hopkins, Natalie Portman', '5 wins & 30 nominations', '$181,030,624', 'United States', 'Kenneth Branagh', '13 Sep 2011', 'Action, Fantasy', 'tt0800369', '7.0', '855,477', 'English', '57', 'The powerful but arrogant god Thor is cast out of Asgard to live amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders.', '/posters/tt0800369.jpg', 'N/A', 'PG-13', '06 May 2011', '115 min', 'Thor', 'movie', 'Ashley Miller, Zack Stentz, Don Payne', '2011'),
(29, 'Chris Hemsworth, Natalie Portman, Tom Hiddleston', '4 wins & 21 nominations', '$206,362,140', 'United States', 'Alan Taylor', '25 Feb 2014', 'Action, Adventure, Fantasy', 'tt1981115', '6.8', '689,295', 'English', '54', 'When the Dark Elves attempt to plunge the universe into darkness, Thor must embark on a perilous and personal journey that will reunite him with doctor Jane Foster.', '/posters/tt1981115.jpg', 'N/A', 'PG-13', '08 Nov 2013', '112 min', 'Thor: The Dark World', 'movie', 'Christopher L. Yost, Christopher Markus, Stephen McFeely', '2013'),
(31, 'Brie Larson, Samuel L. Jackson, Ben Mendelsohn', '9 wins & 56 nominations', '$426,829,839', 'United States, Australia', 'Anna Boden, Ryan Fleck', '28 May 2019', 'Action, Adventure, Sci-Fi', 'tt4154664', '6.8', '566,012', 'English', '64', 'Carol Danvers becomes one of the universe''s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.', '/posters/tt4154664.jpg', 'N/A', 'PG-13', '08 Mar 2019', '123 min', 'Captain Marvel', 'movie', 'Anna Boden, Ryan Fleck, Geneva Robertson-Dworet', '2019');
INSERT INTO "PUBLIC"."MOVIE" VALUES
(33, 'Scarlett Johansson, Florence Pugh, David Harbour', '11 wins & 32 nominations', '$183,651,655', 'United States', 'Cate Shortland', '06 Oct 2021', 'Action, Adventure, Sci-Fi', 'tt3480822', '6.7', '383,918', 'English, Russian, Norwegian, Hungarian, Macedonian, Finnish', '67', 'Natasha Romanoff confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises.', '/posters/tt3480822.jpg', 'N/A', 'PG-13', '09 Jul 2021', '134 min', 'Black Widow', 'movie', 'Eric Pearson, Jac Schaeffer, Ned Benson', '2021'),
(35, 'Simu Liu, Awkwafina, Tony Chiu-Wai Leung', 'Nominated for 1 Oscar. 20 wins & 66 nominations total', '$224,543,292', 'United States', 'Destin Daniel Cretton', '12 Nov 2021', 'Action, Adventure, Fantasy', 'tt9376612', '7.4', '385,678', 'English, Mandarin', '71', 'Shang-Chi, the master of weaponry-based Kung Fu, is forced to confront his past after being drawn into the Ten Rings organization.', '/posters/tt9376612.jpg', 'N/A', 'PG-13', '03 Sep 2021', '132 min', 'Shang-Chi and the Legend of the Ten Rings', 'movie', 'Dave Callaham, Destin Daniel Cretton, Andrew Lanham', '2021'),
(37, 'Gemma Chan, Richard Madden, Angelina Jolie', '7 wins & 16 nominations', '$164,870,234', 'United States', U&'Chlo\00e9 Zhao', '12 Jan 2022', 'Action, Adventure, Fantasy', 'tt9032400', '6.3', '344,748', 'English, American Sign , Marathi, Spanish, Sumerian, Latin, Greek, Ancient (to 1453)', '52', 'The saga of the Eternals, a race of immortal beings who lived on Earth and shaped its history and civilizations.', '/posters/tt9032400.jpg', 'N/A', 'PG-13', '05 Nov 2021', '156 min', 'Eternals', 'movie', U&'Chlo\00e9 Zhao, Patrick Burleigh, Ryan Firpo', '2021'),
(39, 'Benedict Cumberbatch, Elizabeth Olsen, Chiwetel Ejiofor', '6 wins & 12 nominations', '$411,331,607', 'United States', 'Sam Raimi', '22 Jun 2022', 'Action, Adventure, Fantasy', 'tt9419884', '6.9', '420,496', 'English, Spanish, Chinese', '60', 'Doctor Strange teams up with a mysterious teenage girl from his dreams who can travel across multiverses, to battle multiple threats, including other-universe versions of himself, which threaten to wipe out millions across the mul...', '/posters/tt9419884.jpg', 'N/A', 'PG-13', '06 May 2022', '126 min', 'Doctor Strange in the Multiverse of Madness', 'movie', 'Michael Waldron, Stan Lee, Steve Ditko', '2022'),
(41, 'Chris Hemsworth, Natalie Portman, Christian Bale', '15 nominations', '$343,256,830', 'Australia, United States', 'Taika Waititi', '08 Sep 2022', 'Action, Adventure, Comedy', 'tt10648342', '6.3', '341,744', 'English', '57', 'Thor enlists the help of Valkyrie, Korg and ex-girlfriend Jane Foster to fight Gorr the God Butcher, who intends to make the gods extinct.', '/posters/tt10648342.jpg', 'N/A', 'PG-13', '08 Jul 2022', '118 min', 'Thor: Love and Thunder', 'movie', 'Taika Waititi, Jennifer Kaytin Robinson, Stan Lee', '2022'),
(43, 'Chadwick Boseman, Michael B. Jordan, Lupita Nyong''o', 'Won 3 Oscars. 117 wins & 281 nominations total', '$700,426,566', 'United States', 'Ryan Coogler', '02 May 2018', 'Action, Adventure, Sci-Fi', 'tt1825683', '7.3', '780,443', 'English, Swahili, Nama, Xhosa, Korean', '88', 'T''Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country''s past.', '/posters/tt1825683.jpg', 'N/A', 'PG-13', '16 Feb 2018', '134 min', 'Black Panther', 'movie', 'Ryan Coogler, Joe Robert Cole, Stan Lee', '2018'),
(45, 'Letitia Wright, Lupita Nyong''o, Danai Gurira', 'Nominated for 5 Oscars. 20 wins & 148 nominations total', 'N/A', 'United States', 'Ryan Coogler', '01 Feb 2023', 'Action, Adventure, Drama', 'tt9114286', '7.3', '152,033', 'English, Xhosa, Maya, French', '67', 'The people of Wakanda fight to protect their home from intervening world powers as they mourn the death of King T''Challa.', '/posters/tt9114286.jpg', 'N/A', 'PG-13', '11 Nov 2022', '161 min', 'Black Panther: Wakanda Forever', 'movie', 'Ryan Coogler, Joe Robert Cole, Stan Lee', '2022'),
(47, 'Ryan Reynolds, Morena Baccarin, T.J. Miller', '28 wins & 78 nominations', '$363,070,709', 'United States', 'Tim Miller', '10 May 2016', 'Action, Comedy', 'tt1431045', '8.0', '1,046,002', 'English', '65', 'A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks.', '/posters/tt1431045.jpg', 'N/A', 'R', '12 Feb 2016', '108 min', 'Deadpool', 'movie', 'Rhett Reese, Paul Wernick', '2016');
INSERT INTO "PUBLIC"."MOVIE" VALUES
(49, 'Ryan Reynolds, Josh Brolin, Morena Baccarin', '6 wins & 52 nominations', '$324,591,735', 'United States', 'David Leitch', '21 Aug 2018', 'Action, Adventure, Comedy', 'tt5463162', '7.7', '589,385', 'English, Cantonese, Spanish, Russian', '66', 'Foul-mouthed mutant mercenary Wade Wilson (a.k.a. Deadpool) assembles a team of fellow mutant rogues to protect a young boy with supernatural abilities from the brutal, time-traveling cyborg Cable.', '/posters/tt5463162.jpg', 'N/A', 'R', '18 May 2018', '119 min', 'Deadpool 2', 'movie', 'Rhett Reese, Paul Wernick, Ryan Reynolds', '2018'),
(51, 'Tom Hardy, Michelle Williams, Riz Ahmed', '3 wins & 9 nominations', '$213,515,506', 'United States, China', 'Ruben Fleischer', '18 Jun 2019', 'Action, Adventure, Sci-Fi', 'tt1270797', '6.6', '491,706', 'English, Mandarin, Malay', '35', 'A failed reporter is bonded to an alien entity, one of many symbiotes who have invaded Earth. But the being takes a liking to Earth and decides to protect it.', '/posters/tt1270797.jpg', 'N/A', 'PG-13', '05 Oct 2018', '112 min', 'Venom', 'movie', 'Jeff Pinkner, Scott Rosenberg, Kelly Marcel', '2018'),
(53, 'Tom Hardy, Woody Harrelson, Michelle Williams', '5 nominations', '$213,550,366', 'United States, China', 'Andy Serkis', 'N/A', 'Action, Sci-Fi, Thriller', 'tt7097896', '5.9', '228,423', 'English', '49', 'Eddie Brock attempts to reignite his career by interviewing serial killer Cletus Kasady, who becomes the host of the symbiote Carnage and escapes prison after a failed execution.', '/posters/tt7097896.jpg', 'N/A', 'PG-13', '01 Oct 2021', '97 min', 'Venom: Let There Be Carnage', 'movie', 'Kelly Marcel, Tom Hardy', '2021'),
(55, 'Edward Norton, Liv Tyler, Tim Roth', '1 win & 10 nominations', '$134,806,913', 'United States', 'Louis Leterrier', '21 Oct 2008', 'Action, Adventure, Sci-Fi', 'tt0800080', '6.6', '497,277', 'English, Portuguese, Spanish', '61', 'Bruce Banner, a scientist on the run from the U.S. Government, must find a cure for the monster he turns into whenever he loses his temper.', '/posters/tt0800080.jpg', 'N/A', 'PG-13', '13 Jun 2008', '112 min', 'The Incredible Hulk', 'movie', 'Zak Penn, Stan Lee, Jack Kirby', '2008');
CREATE CACHED TABLE "PUBLIC"."MOVIE_INVENTORY"(
    "ID" BIGINT NOT NULL,
    "MOVIE_ID" BIGINT,
    "OWNER_ID" CHARACTER VARYING(255)
);
ALTER TABLE "PUBLIC"."MOVIE_INVENTORY" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_2" PRIMARY KEY("ID");
-- 27 +/- SELECT COUNT(*) FROM PUBLIC.MOVIE_INVENTORY;
INSERT INTO "PUBLIC"."MOVIE_INVENTORY" VALUES
(3, 1, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(6, 5, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(8, 7, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(10, 9, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(12, 11, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(14, 13, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(16, 15, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(18, 17, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(20, 19, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(22, 21, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(24, 23, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(26, 25, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(28, 27, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(30, 29, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(32, 31, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(34, 33, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(36, 35, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(38, 37, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(40, 39, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(42, 41, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(44, 43, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(46, 45, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(48, 47, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(50, 49, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(52, 51, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(54, 53, 'b27a8a18-fa55-45e2-aef5-51173509401f'),
(56, 55, 'b27a8a18-fa55-45e2-aef5-51173509401f');
CREATE CACHED TABLE "PUBLIC"."MOVIE_INVENTORY_MEDIA"(
    "MOVIE_ITEM_ID" BIGINT NOT NULL,
    "MEDIA_ID" BIGINT NOT NULL
);
ALTER TABLE "PUBLIC"."MOVIE_INVENTORY_MEDIA" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_1" PRIMARY KEY("MOVIE_ITEM_ID", "MEDIA_ID");
-- 27 +/- SELECT COUNT(*) FROM PUBLIC.MOVIE_INVENTORY_MEDIA;
INSERT INTO "PUBLIC"."MOVIE_INVENTORY_MEDIA" VALUES
(3, 4),
(6, 4),
(8, 4),
(10, 4),
(12, 4),
(14, 4),
(16, 4),
(18, 4),
(20, 4),
(22, 4),
(24, 4),
(26, 4),
(28, 4),
(30, 4),
(32, 4),
(34, 4),
(36, 4),
(38, 4),
(40, 4),
(42, 4),
(44, 4),
(46, 4),
(48, 4),
(50, 4),
(52, 4),
(54, 4),
(56, 4);
CREATE CACHED TABLE "PUBLIC"."USERS"(
    "ID" CHARACTER VARYING(255) NOT NULL,
    "DISPLAY_NAME" CHARACTER VARYING(255),
    "EMAIL" CHARACTER VARYING(255),
    "USER_ID" CHARACTER VARYING(255)
);
ALTER TABLE "PUBLIC"."USERS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_4D" PRIMARY KEY("ID");
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.USERS;
INSERT INTO "PUBLIC"."USERS" VALUES
('b27a8a18-fa55-45e2-aef5-51173509401f', 'Default User', 'brad@starkenberg.net', 'bstarke');
ALTER TABLE "PUBLIC"."MOVIE_INVENTORY" ADD CONSTRAINT "PUBLIC"."UK371EON1TXKWKWTFILLTCIH09M" UNIQUE("MOVIE_ID");
ALTER TABLE "PUBLIC"."MEDIUM" ADD CONSTRAINT "PUBLIC"."UK97K3S03Y4Y48BP9LPOBD2QLTX" UNIQUE("TYPE", "LOCATION");
ALTER TABLE "PUBLIC"."USERS" ADD CONSTRAINT "PUBLIC"."UK_6DOTKOTT2KJSP8VW4D0M25FB7" UNIQUE("EMAIL");
ALTER TABLE "PUBLIC"."MOVIE" ADD CONSTRAINT "PUBLIC"."UK_55SOYOH6N540UUND67FHJQN2B" UNIQUE("IMDBID");
ALTER TABLE "PUBLIC"."MOVIE_INVENTORY_MEDIA" ADD CONSTRAINT "PUBLIC"."FKPXRNH6DMONSQACYJ4IDFFY3NB" FOREIGN KEY("MOVIE_ITEM_ID") REFERENCES "PUBLIC"."MOVIE_INVENTORY"("ID") NOCHECK;
ALTER TABLE "PUBLIC"."MOVIE_INVENTORY" ADD CONSTRAINT "PUBLIC"."FK634C5XYOC2RQ2EFN9HQB5MOFN" FOREIGN KEY("OWNER_ID") REFERENCES "PUBLIC"."USERS"("ID") NOCHECK;
ALTER TABLE "PUBLIC"."MOVIE_INVENTORY_MEDIA" ADD CONSTRAINT "PUBLIC"."FK24CAWLNKLGG89N2E3BNL8Y6E3" FOREIGN KEY("MEDIA_ID") REFERENCES "PUBLIC"."MEDIUM"("ID") NOCHECK;
ALTER TABLE "PUBLIC"."MOVIE_INVENTORY" ADD CONSTRAINT "PUBLIC"."FK5UUMSWMN3FT55AGHEFXFA4NNP" FOREIGN KEY("MOVIE_ID") REFERENCES "PUBLIC"."MOVIE"("ID") NOCHECK;
