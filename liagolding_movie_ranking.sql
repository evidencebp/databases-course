use imdb_ijs;

drop table if exists personal_movies_ranking;

create table personal_movies_ranking
(movie_id int
, recommendation int not null
, suggested_by varchar(255) not null
, justification varchar(255) not null
, comment varchar(255)
, PRIMARY KEY (movie_id,  suggested_by)
, CONSTRAINT CHK_personal_recommendation CHECK (recommendation >=1 AND 10 >= recommendation)
, CONSTRAINT CHK_personal_justification CHECK (length(justification) >=10)
, FOREIGN KEY (movie_id) REFERENCES movies(Id)
);

insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (291698, 10, 'liagolding', 'I like Hollywood stars and puzzle-like crime plot', null);  # Se7en 1995
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (207645, 2, 'liagolding', 'I like only English or Hebrew speaking movies', null);  # Matanza 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (312170, 6, 'liagolding', 'I like classic action with mystery', null);  # Spy Who Loved Me, The 1977
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (231917, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Night Gallery 1969
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (210511, 10, 'liagolding', 'Analytical and logical puzzle-like plot', null);  # Memento 2000
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (277945, 3, 'liagolding', 'I dont like documentary', null);  # Rider Pride 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (326155, 10, 'liagolding', 'I like Hollywood stars and realistic psychological drama', null);  # Taxi Driver 1976
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (211757, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Moonbase Alpha 1999
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (230947, 8, 'liagolding', 'I like psychological drama and complex plots', null);  # New York Stories 1989
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (267038, 10, 'liagolding', 'I like Hollywood stars and brilliant crime drama', null);  # Pulp Fiction 1994
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (350189, 2, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Vampire Hunter D 2000
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (279594, 7, 'liagolding', 'I like crime drama and mystery', null);  # Robbers 2000
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (200864, 5, 'liagolding', 'Standard romantic comedy grounded in reality', null);  # Maid in Manhattan 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (311037, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Spider-Man 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (283410, 9, 'liagolding', 'I like Hollywood stars and grounded comedy', null);  # Runaway Bride 1999
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (265273, 5, 'liagolding', 'I dont really like horror movies', null);  # Prodigy, The 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (209158, 9, 'liagolding', 'Realistic crime drama with character analysis', null);  # Mean Streets 1973
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (280284, 5, 'liagolding', 'I dont like movies about sports', null);  # Rocky IV 1985
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (241620, 3, 'liagolding', 'I dont like documentary', null);  # One of Five 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (313478, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Star Wars Ep 5 1980
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (263360, 9, 'liagolding', 'I like Hollywood stars and classic romantic comedy', null);  # Pretty Woman 1990
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (297838, 10, 'liagolding', 'I like Hollywood stars and character analysis', null);  # Shawshank Redemption 1994
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (230963, 4, 'liagolding', 'I dont like musical drama', null);  # New York, New York 1977
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (368418, 5, 'liagolding', 'I dont like action thrillers', null);  # World Is Not Enough 1999
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (271095, 9, 'liagolding', 'I like Hollywood stars and classic action', null);  # Raiders of the Lost Ark 1981
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (214755, 9, 'liagolding', 'High-tech crime analysis and logical systems', null);  # Minority Report 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (330670, 8, 'liagolding', 'I like Hollywood stars and realistic drama', null);  # This Boy's Life 1993
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (197927, 2, 'liagolding', 'I like only English or Hebrew speaking movies', null);  # Lux aeterna 1986
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (280306, 5, 'liagolding', 'I dont like movies about sports', null);  # Rocky VI 1986
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (263076, 7, 'liagolding', 'I like crime drama with mystery', null);  # Prescription for Murder 1987
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (350424, 8, 'liagolding', 'I like Hollywood stars and psychological drama', null);  # Vanilla Sky 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (238072, 8, 'liagolding', 'I like clever crime drama and strategy', null);  # Ocean's Eleven 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (200521, 9, 'liagolding', 'Complex psychological drama very realistic', null);  # Magnolia 1999
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (379331, 8, 'liagolding', 'I like mysteries and analytical plots', null);  # Sherlock Holmes 1984
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (333856, 10, 'liagolding', 'I like Hollywood stars and epic realistic drama', null);  # Titanic 1997
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (289109, 10, 'liagolding', 'I like Hollywood stars and intense realistic drama', null);  # Saving Private Ryan 1998
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (397121, 9, 'liagolding', 'I like smart movies with logical depth', null);  # Matrix 1993
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (311428, 6, 'liagolding', 'I like Hollywood stars and light comedy', null);  # Splash 1984
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (280282, 5, 'liagolding', 'I dont like movies about sports', null);  # Rocky III 1982
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (214259, 2, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Milton Is Shitbag 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (290070, 10, 'liagolding', 'I like Hollywood stars and deep historical drama', null);  # Schindler's List 1993
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (306032, 9, 'liagolding', 'I like Hollywood stars and clever crime plots', null);  # Snatch. 2000
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (268034, 8, 'liagolding', 'I like puzzle-like plot and mystery', null);  # Puzzle, The 2000
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (233058, 8, 'liagolding', 'I like mystery and puzzle-like plot', null);  # Ninth Gate, The 1999
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (328272, 9, 'liagolding', 'I like Hollywood stars and grounded drama', null);  # Terminal, The 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (308025, 7, 'liagolding', 'I like crime drama and mystery', null);  # Someone to Watch Over Me 1987
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (381392, 2, 'liagolding', 'I dont like superheros', null);  # Batman Beyond 1999
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (264157, 8, 'liagolding', 'I like Hollywood stars and light comedy', null);  # Princess Diaries 2 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (300229, 8, 'liagolding', 'I like Hollywood stars and clever humor', null);  # Shrek 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (351705, 7, 'liagolding', 'I like crime drama and character analysis', null);  # Vengeance 2006
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (287501, 8, 'liagolding', 'I like Israeli movies and drama', null);  # Sanhedrin 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (210739, 8, 'liagolding', 'Sci-fi that feels like a realistic police procedural', null);  # Men in Black 1997
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (203481, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Man Who Cheat Death 1959
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (291495, 8, 'liagolding', 'I like Hollywood stars and grounded comedy', null);  # Scrooged 1988
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (354178, 5, 'liagolding', 'I dont like action thrillers', null);  # View to a Kill 1985
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (276217, 9, 'liagolding', 'I like Hollywood stars and character analysis in crime', null);  # Reservoir Dogs 1992
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (383395, 2, 'liagolding', 'I dont like superheros', null);  # Captain America 1966
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (232019, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Night 1000 Screams 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (292671, 8, 'liagolding', 'I like Hollywood stars and mystery plots', null);  # Secret Window 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (313160, 3, 'liagolding', 'I dont like documentary', null);  # Kubrick: Life in Pics 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (240327, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Omen, The 1976
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (361986, 2, 'liagolding', 'I like only English or Hebrew speaking movies', null);  # Wette, Die 1997
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (226964, 5, 'liagolding', 'I dont really like romantic comedy', null);  # Naked Laura 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (322934, 2, 'liagolding', 'I like only English or Hebrew speaking movies', null);  # Tag der Befreiung 2003
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (270971, 5, 'liagolding', 'I dont like movies about sports', null);  # Raging Bull 1980
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (342512, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Twilight Zone 1983
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (335336, 5, 'liagolding', 'I dont like action thrillers', null);  # Tomorrow Never Dies 1997
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (311038, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Spider-Man 2 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (288904, 7, 'liagolding', 'I like crime drama grounded in reality', null);  # Savage 1973
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (304862, 7, 'liagolding', 'I like Hollywood stars and mystery', null);  # Sleepy Hollow 1999
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (368865, 3, 'liagolding', 'I dont like documentary or sports', null);  # Wrestling Shadows 2000
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (242702, 3, 'liagolding', 'I dont like documentary', null);  # Operation 1998
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (280281, 5, 'liagolding', 'I dont like movies about sports', null);  # Rocky II 1979
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (214632, 2, 'liagolding', 'I like only English or Hebrew speaking movies', null);  # Minha Vida 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (261532, 3, 'liagolding', 'I dont like documentary', null);  # Postcards from Future 2003
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (199529, 5, 'liagolding', 'English speaking documentary', null);  # Made Incorrect 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (335266, 8, 'liagolding', 'I like Israeli movies and drama', null);  # Tomer Ve-Hasrutim 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (238073, 7, 'liagolding', 'I like clever crime drama', null);  # Ocean's Twelve 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (263443, 3, 'liagolding', 'I dont like documentary', null);  # Price for Peace 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (313474, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Star Wars Ep 1 1999
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (393012, 2, 'liagolding', 'I dont like superheros', null);  # Iron Man 1966
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (264363, 3, 'liagolding', 'I dont like documentary', null);  # Pripyat 1999
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (336445, 7, 'liagolding', 'I like Hollywood stars and psychological drama', null);  # Total Eclipse 1995
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (272877, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Raven, The 2003
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (332065, 5, 'liagolding', 'I dont like action thrillers', null);  # Thunderball 1965
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (274677, 3, 'liagolding', 'I dont like documentary', null);  # Reflections of Life 2003
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (280305, 5, 'liagolding', 'I dont like movies about sports', null);  # Rocky V 1990
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (215708, 2, 'liagolding', 'I like only English or Hebrew speaking movies', null);  # Missed Call 2003
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (261504, 2, 'liagolding', 'I like only English or Hebrew speaking movies', null);  # Postal Branco 1999
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (288493, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Satanic Dracula 1974
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (379327, 8, 'liagolding', 'I like classics and historical drama', null);  # Robin Hood 1955
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (266446, 2, 'liagolding', 'I like only English or Hebrew speaking movies', null);  # Prncipe, O 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (198835, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Macabre Shorts 1996
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (283196, 5, 'liagolding', 'I dont really like romantic comedy', null);  # Rules, The 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (239387, 2, 'liagolding', 'I like only English or Hebrew speaking movies', null);  # Okkadu 2003
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (318388, 7, 'liagolding', 'I like Hollywood directors and realistic crime drama', null);  # Sugarland Express 1974
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (379931, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Amazing Stories 1985
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (259529, 2, 'liagolding', 'I like only English or Hebrew speaking movies', null);  # Polizeiruf 110 1983
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (313476, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Star Wars Ep 2 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (230568, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # New Clear Farm 1998
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (363633, 4, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Whirlpool, The 2003
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (362473, 7, 'liagolding', 'I like Hollywood directors and character analysis', null);  # Whats a Nice Girl Like You Doing 1963
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (300230, 8, 'liagolding', 'I like Hollywood stars and clever humor', null);  # Shrek 2 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (273164, 3, 'liagolding', 'I dont like documentary', null);  # Re-Membering Jack 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (400853, 7, 'liagolding', 'I like Hollywood stars and grounded comedy', null);  # Parenthood 1990
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (319404, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Super Jesus 1999
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (335353, 6, 'liagolding', 'I like realistic drama movies', null);  # Tomorrows Memoir 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (398571, 8, 'liagolding', 'I like smart comedy series', null);  # Murphy Brown 1988
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (379290, 2, 'liagolding', 'I dont like superheros', null);  # Adventures of Batman 1969
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (2, 7, 'liagolding', 'I like classic Hollywood crime drama', null);  # $ 1971
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (333398, 6, 'liagolding', 'I like grounded drama movies', null);  # Timekeeper, The 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (406158, 2, 'liagolding', 'I dont like superheros', null);  # Spider-Man 2003
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (335592, 5, 'liagolding', 'I dont really like romantic comedy', null);  # Too Good to Be True 1997
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (112290, 10, 'liagolding', 'I like psychological drama and smart plots', null);  # Fight Club 1999
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (33, 7, 'liagolding', 'I like clever crime drama', null);  # $windle 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (139657, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Harry Potter 1 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (406411, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Star Wars: Clone Wars 2003
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (52, 6, 'liagolding', 'I like classic action movies', null);  # A gai waak 1983
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (108, 7, 'liagolding', 'I like classic Hollywood crime', null);  # G Men 1935
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (334747, 5, 'liagolding', 'I dont really like indie drama', null);  # Together & Alone 1998
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (644, 7, 'liagolding', 'I like Hollywood stars and teen comedy', null);  # 10 Things I Hate About You 1999
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (399427, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Night Gallery 1970
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (400612, 7, 'liagolding', 'I like realistic legal drama', null);  # Owen Marshall 1971
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (113506, 8, 'liagolding', 'I like Hollywood stars and drama', null);  # Finding Neverland 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (123849, 9, 'liagolding', 'I like Hollywood stars and realistic crime history', null);  # Gangs of New York 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (405119, 8, 'liagolding', 'I like mystery and logical plots', null);  # Sherlock Holmes 1951
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (158999, 5, 'liagolding', 'I dont really like unreal action', null);  # Independence Day 1996
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (129185, 9, 'liagolding', 'I like Hollywood stars and epic drama', null);  # Gladiator 2000
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (263, 6, 'liagolding', 'I like grounded romantic drama', null);  # Til There Was You 1997
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (10830, 4, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Alien 1979
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (1121, 7, 'liagolding', 'I like historical drama movies', null);  # 1492: Conquest 1992
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (1390, 6, 'liagolding', 'I like classic Hollywood comedy', null);  # 1941 1979
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (450, 7, 'liagolding', 'I like realistic crime drama', null);  # tick tick tick 1970
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (131780, 10, 'liagolding', 'I like Hollywood stars and brilliant crime drama', null);  # Goodfellas 1990
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (165961, 8, 'liagolding', 'I like classic thrillers grounded in reality', null);  # Jaws 1975
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (10702, 8, 'liagolding', 'I like Hollywood stars and psychological drama', null);  # Alice Doesnt Live Here 1974
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (41518, 8, 'liagolding', 'I like Hollywood stars and crime drama', null);  # Blow 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (56871, 9, 'liagolding', 'I like Hollywood stars and clever plots', null);  # Catch Me If You Can 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (220805, 7, 'liagolding', 'I like Hollywood stars and action', null);  # Mr. and Mrs. Smith 2005
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (1038, 7, 'liagolding', 'I like Hollywood stars and light comedy', null);  # 13 Going On 30 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (113459, 7, 'liagolding', 'I like legal drama grounded in reality', null);  # Find Me Guilty 2005
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (30959, 4, 'liagolding', 'I dont like superheros', null);  # Batman Begins 2005
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (46169, 9, 'liagolding', 'I like Hollywood stars and historical drama', null);  # Braveheart 1995
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (188507, 8, 'liagolding', 'I like classic Hollywood action', null);  # Lethal Weapon 1987
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (164572, 9, 'liagolding', 'I like Hollywood stars and clever crime plots', null);  # Jackie Brown 1997
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (109421, 5, 'liagolding', 'I dont really like action movies', null);  # Fast and Furious 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (118367, 8, 'liagolding', 'I like Hollywood stars and clever plots', null);  # Four Rooms 1995
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (65811, 4, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Close Encounters 1977
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (31715, 7, 'liagolding', 'I like Hollywood stars and drama', null);  # Beaches 1988
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (185628, 8, 'liagolding', 'I like Hollywood stars and epic drama', null);  # Last Samurai 2003
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (46878, 5, 'liagolding', 'I dont really like romantic comedy', null);  # Bridget Jones 2 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (56304, 9, 'liagolding', 'I like Hollywood stars and crime drama', null);  # Casino 1995
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (25192, 9, 'liagolding', 'I like Hollywood stars and realistic biography', null);  # Aviator, The 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (131885, 7, 'liagolding', 'I like classic Hollywood adventure', null);  # Goonies, The 1985
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (151616, 5, 'liagolding', 'I dont really like romantic comedy', null);  # How to Lose a Guy 2003
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (66194, 6, 'liagolding', 'I like classic teen comedy', null);  # Clueless 1995
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (130953, 7, 'liagolding', 'I like classic action movies', null);  # Goldfinger 1964
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (139655, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Harry Potter 3 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (149287, 4, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Hook 1991
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (159172, 9, 'liagolding', 'I like Hollywood stars and adventure', null);  # Indiana Jones 3 1989
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (40199, 8, 'liagolding', 'I like smart sci-fi grounded in drama', null);  # Blade Runner 1982
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (30686, 8, 'liagolding', 'I like Hollywood stars and realistic drama', null);  # Basketball Diaries 1995
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (116556, 10, 'liagolding', 'I like smart puzzles and mystery', null);  # Following 1998
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (123435, 9, 'liagolding', 'I like psychological mystery and clever plots', null);  # Game, The 1997
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (67395, 9, 'liagolding', 'I like deep realistic drama', null);  # Color Purple, The 1985
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (247579, 9, 'liagolding', 'I like Hollywood stars and intense realistic thrillers', null);  # 247579 Panic Room 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (160524, 8, 'liagolding', 'I like Hollywood stars and mystery', null);  # Insomnia 2002
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (21213, 7, 'liagolding', 'I like smart sci-fi with emotional depth', null);  # AI 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (8183, 8, 'liagolding', 'I like Hollywood stars and period drama', null);  # Age of Innocence 1993
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (159175, 8, 'liagolding', 'I like classic action adventure', null);  # Indiana Jones 2 1984
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (142491, 3, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Hellboy 2004
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (12744, 7, 'liagolding', 'I like Hollywood stars and drama', null);  # Always 1989
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (181766, 8, 'liagolding', 'I like realistic historical drama', null);  # Kundun 1997
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (256632, 4, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Pirates of the Caribbean 1 2003
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (253010, 9, 'liagolding', 'I like Hollywood stars and drama', null);  # Perfect World, A 1993
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (47130, 8, 'liagolding', 'I like Hollywood stars and psychological drama', null);  # Bringing Out the Dead 1999
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (256839, 8, 'liagolding', 'I like Hollywood stars and movies that are grounded in reality', null);  # 256839 Pitch Black 2000
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (39551, 8, 'liagolding', 'I like realistic war drama', null);  # Black Hawk Down 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (67388, 8, 'liagolding', 'I like Hollywood stars and clever plots', null);  # Color of Money 1986
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (30967, 4, 'liagolding', 'I dont like superheros', null);  # Batman Returns 1992
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (7842, 9, 'liagolding', 'I like smart comedy and unique plots', null);  # After Hours 1985
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (54209, 8, 'liagolding', 'I like intense crime drama', null);  # Cape Fear 1991
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (20253, 7, 'liagolding', 'I like Hollywood stars and indie drama', null);  # Arizona Dream 1993
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (45312, 7, 'liagolding', 'I like classic crime drama', null);  # Boxcar Bertha 1972
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (30955, 4, 'liagolding', 'I dont like superheros', null);  # Batman 1989
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (130945, 6, 'liagolding', 'I dont like action thrillers', null);  # GoldenEye 1997
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (34104, 8, 'liagolding', 'I like Hollywood stars and quirky drama', null);  # Benny & Joon 1993
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (46167, 7, 'liagolding', 'I like Hollywood stars and indie drama', null);  # Brave, The 1997
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (118980, 7, 'liagolding', 'I like Hollywood stars and drama', null);  # Frankie and Johnny 1991
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (120506, 8, 'liagolding', 'I like Hollywood stars and mystery plots', null);  # From Hell 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (34077, 8, 'liagolding', 'I like Hollywood stars and unique drama', null);  # Benjamin Button 2006
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (59578, 4, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Charlie and the Chocolate Factory 2005
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (14477, 9, 'liagolding', 'I like historical drama grounded in reality', null);  # Amistad 1997
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (62460, 8, 'liagolding', 'I like Hollywood stars and grounded drama', null);  # Chocolat 2000
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (33492, 8, 'liagolding', 'I like realistic drama movies', null);  # Bella Martha 2001
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (97360, 9, 'liagolding', 'I like Hollywood stars and smart biographies', null);  # Ed Wood 1994
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (97727, 4, 'liagolding', 'I mostly dont like unreal fantasy', null);  # Edward Scissorhands 1990
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (185704, 8, 'liagolding', 'I like Hollywood stars and deep drama', null);  # Last Temptation of Christ 1988
insert into personal_movies_ranking(movie_id, recommendation, suggested_by, justification, comment) values (14157, 7, 'liagolding', 'I like drama movies', null);  # American Reunion, An 2003