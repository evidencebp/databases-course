CREATE TABLE movies_recommendations (
    base_movie_id INT,
    recommended_movie_id INT,
    recommendation INT,
    suggested_by VARCHAR(255),
    justification TEXT,
    comment TEXT,
    PRIMARY KEY (base_movie_id, recommended_movie_id)
);

-- 969 12 Angry Men (1957) -> 349 ...And Justice for All (1979)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (969, 349, 10, 'Yoavkeidar9', 'Both are incredibly tense legal and courtroom dramas that rely on explosive, legendary performances to highlight the flaws in the justice system.', '');

-- 52 'A' gai waak (1983) -> 53 'A' gai waak juk jaap (1987)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (52, 53, 10, 'Yoavkeidar9', 'Viewers who appreciate the iconic bicycle chases and clock tower drops of the first installment will find the exact same mind-blowing practical stunt choreography in this direct sequel.', '');

-- 1019 12:01 PM (1990) -> 1018 12:01 (1993)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (1019, 1018, 10, 'Yoavkeidar9', 'Both masterfully execute the sci-fi time-loop concept, with the short film laying the clever groundwork that the full-length movie expands upon brilliantly.', '');

-- 847 101 Dalmatians (1996) -> 880 102 Dalmatians (2000)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (847, 880, 10, 'Yoavkeidar9', 'If you enjoyed Glenn Close''s iconic and cartoonish villain performance in the live-action original, this follow-up delivers more of the exact same elaborate costume design and slapstick animal humor.', '');

-- 644 10 Things I Hate About You (1999) -> 1038 13 Going On 30 (2004)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (644, 1038, 10, 'Yoavkeidar9', 'Both are highly energetic, feel-good romantic comedies that succeed entirely because of the incredible charm and commanding screen presence of their lead actresses.', '');

-- 548 08/15 (1954) -> 69 'Breaker' Morant (1980)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (548, 69, 10, 'Yoavkeidar9', 'These films share a deeply cynical and harsh perspective on military bureaucracy, stripping away romanticized warfare to expose the devastating hypocrisy of military justice.', '');

-- 845 101 (1989) -> 181 'N Sync: No Strings Attached (1999)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (845, 181, 10, 'Yoavkeidar9', 'Both documentaries act as perfect time capsules of obsessive fan culture, giving viewers a front-row seat to the massive scale and frantic energy of a legendary stadium music tour.', '');

-- 336 ...a pty jezdec je Strach (1964) -> 909 11 de septiembre de 1973. El ltimo combate de Salvador Allende (1998)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (336, 909, 10, 'Yoavkeidar9', 'Both deal with harrowing, real-world historical atrocities, using dark, oppressive tones and deeply serious filmmaking to document terror and political collapse.', '');

-- 73 'burbs, The (1989) -> 606 10 (1979)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (73, 606, 10, 'Yoavkeidar9', 'These comedies brilliantly satirize domestic life and midlife crises, tracking protagonists who slowly lose their grip on reality through a mix of psychological breakdown and physical slapstick.', '');

-- 1048 13 Rue Madeleine (1947) -> 209 'Pimpernel' Smith (1941)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (1048, 209, 10, 'Yoavkeidar9', 'Both are highly intelligent WWII-era espionage films that effectively blend smart undercover spy operations with strong, historically resonant anti-Nazi themes.', '');

-- 121 'High Sign', The (1921) -> 798 100% Service (1931)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (121, 798, 10, 'Yoavkeidar9', 'Fans of brilliant early-cinema physical comedy will appreciate how both films rely on impeccable timing, intricate set design, and timeless slapstick gags to generate laughs.', '');

-- 639 10 Rillington Place (1971) -> 1054 13 West Street (1962)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (639, 1054, 10, 'Yoavkeidar9', 'Both are incredibly dark, tense thrillers grounded in gritty urban realism that avoid low-budget scares in favor of building a genuinely frightening, uncomfortable atmosphere.', '');

-- 695 100 Jahre Adolf Hitler (1989) -> 558 1 Berlin-Harlem (1974)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (695, 558, 10, 'Yoavkeidar9', 'These challenging German films provide an intentionally raw, claustrophobic, and uncomfortable viewing experience, using handheld aesthetics to tackle heavy historical and societal trauma.', '');

-- 869 101 Rent Boys (2000) -> 926 110 Stories (2002)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (869, 926, 10, 'Yoavkeidar9', 'Both are highly emotional, raw documentaries that simply let their subjects speak, completely avoiding low-budget dramatic editing or narration to deliver a profoundly honest narrative.', '');

-- 955 11:14 (2003) -> 1016 125 rue Montmartre (1959)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (955, 1016, 10, 'Yoavkeidar9', 'Audiences who appreciate tightly woven, satisfying mystery plots will love how both films execute clever, overlapping twists that reveal the full dark picture by the ending.', '');

-- 995 12 stulyev (1971) -> 1051 13 Sthle (1938)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (995, 1051, 10, 'Yoavkeidar9', 'These are fast-paced, hilarious European comedies that utilize the exact same highly entertaining plot device of desperate characters hunting for money hidden inside antique chairs.', '');

-- 837 1001 Nights (1998) -> 831 1001 Arabian Nights (1959)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (837, 831, 10, 'Yoavkeidar9', 'Both visually stunning adaptations perfectly capture the magic and sweeping visual design of classic Middle Eastern folklore and legendary tales.', '');

-- 1097 14 Carrot Rabbit (1952) -> 124 'Hyp-Nut-Tist', The (1935)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (1097, 124, 10, 'Yoavkeidar9', 'Both showcase the absolute peak of classic, expressive studio animation, relying entirely on perfect comedic timing and visual gags that still hold up flawlessly today.', '');

-- 597 1. April 2000 (1952) -> 328 *batteries not included (1987)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (597, 328, 10, 'Yoavkeidar9', 'These sweet, charming sci-fi films prioritize creativity and practical effects, presenting a retro-futuristic world that feels optimistic and magical rather than apocalyptic.', '');

-- 72 'Bullitt': Steve McQueen's Commitment to Reality (1968) -> 220 'Rope' Unleashed (2001)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (72, 220, 10, 'Yoavkeidar9', 'Both documentaries provide absolutely brilliant behind-the-scenes insights into analog filmmaking techniques, showing exactly how masters of cinema set up complex practical shots and hidden cuts.', '');

-- 249 'Sunset Blvd.': A Look Back (2002) -> 165 'Midnight Cowboy' Revisited (1994)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (249, 165, 10, 'Yoavkeidar9', 'These are excellent, high-value retrospectives that provide deep historical context and fantastic interviews regarding why their respective original films were so groundbreaking and controversial.', '');

-- 645 10 to Midnight (1983) -> 337 ...a tutte le auto della polizia (1975)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (645, 337, 10, 'Yoavkeidar9', 'Both start as seemingly standard, gritty police procedurals but quickly escalate into intense, surprisingly violent thrillers featuring great car chases and unhinged criminals.', '');

-- 50 '?' Motorist, The (1906) -> 41 '49-'17 (1917)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (50, 41, 10, 'Yoavkeidar9', 'These are fascinating historical artifacts that show early silent cinema actively experimenting with visual camera tricks and openly satirizing their own established genres before CGI even existed.', '');

-- 628 10 minuta (2002) -> 993 12 Stops on the Road to Nowhere (1999)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (628, 993, 10, 'Yoavkeidar9', 'Both are incredibly effective short indie films that manage to deliver a complete, highly engaging story with very limited resources and zero filler.', '');

-- 709 100 minuta slave (2004) -> 499 ...ya no puede caminar. (2001)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (709, 499, 10, 'Yoavkeidar9', 'These are beautiful, grounded international dramas that rely heavily on subtle visual details, atmospheric cinematography, and completely authentic, emotional acting rather than explosive plots.', '');

-- 898 10e chambre - Instants d'audience (2004) -> 350 ...And Millions Die! (1973)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (898, 350, 10, 'Yoavkeidar9', 'Both utilize documentary-style framing to intensely investigate institutional procedures, whether real-world court cases or fictionalized emergency responses.', '');

-- 1075 13th House, The (2003) -> 133 'It's Alive!' (1969)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (1075, 133, 10, 'Yoavkeidar9', 'Horror fans will appreciate that both films heavily rely on establishing a creepy, haunting atmosphere rather than high-end modern explicit gore.', '');

-- 563 1 Giant Leap (2002) -> 32 $ucces Part One (1986)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (563, 32, 10, 'Yoavkeidar9', 'Viewers who enjoy strong auditory and visual experiences will love how both films use highly stylish storytelling deeply synchronized with an amazing musical soundtrack.', '');

-- 264 'Til We Meet Again (1940) -> 141 'Kaash' (1987)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (264, 141, 10, 'Yoavkeidar9', 'Both are incredibly heavy, depressing dramas that succeed entirely due to the raw, emotionally devastating performances dealing with tragedy and illness.', '');

-- 344 ...All the Marbles (1981) -> 49 '94 du bi dao zhi qing (1994)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (344, 49, 10, 'Yoavkeidar9', 'These films brilliantly use highly choreographed, ridiculous physical fight scenes to deliver constant, visceral entertainment.', '');

-- 486 ...wie einst Lili Marleen (1956) -> 38 '38 (1987)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (486, 38, 10, 'Yoavkeidar9', 'Both German-language films offer a deeply interesting, nostalgic, and melancholic look at surviving trauma amidst the backdrop of pre and post-WWII history.', '');

-- 544 06 (1994) -> 585 1,99 - Um Supermercado Que Vende Palavras (2003)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (544, 585, 10, 'Yoavkeidar9', 'These films expertly capture modern social isolation through unconventional storytelling, using weird, restricted environments to explore strange character psychologies.', '');

-- 572 1 na 1 (2002) -> 430 ...Po prozvishchu 'Zver' (1990)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (572, 430, 10, 'Yoavkeidar9', 'Both are extremely gritty, fast-paced international dramas that use raw camera work to portray an authentic, unflinching look at street crime and prison survival.', '');

-- 921 11'09''01 - September 11 (2002) -> 675 100 Days (1991)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (921, 675, 10, 'Yoavkeidar9', 'These are incredibly difficult but vital viewing experiences, serving as powerful cinematic reflections on some of the most horrific, massive historical tragedies of modern times.', '');

-- 393 ...e tanta paura (1976) -> 108 'G' Men (1935)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (393, 108, 10, 'Yoavkeidar9', 'Both thrillers do an excellent job building tense, engaging mysteries, focusing heavily on procedural investigation and underworld crime.', '');

-- 51 'A' (1965) -> 438 ...Remote... Remote... (1973)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (51, 438, 10, 'Yoavkeidar9', 'These short films prove that you do not need complex dialogue to convey a highly effective, memorable story relying entirely on experimental visual styling.', '');

-- 341 ...a zase ta Lucie! (1984) -> 62 'Babicky dobjejte presne!' (1983)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (341, 62, 10, 'Yoavkeidar9', 'Both are light, charming 1980s Czech comedies that work perfectly as relaxing, mildly funny background entertainment with culturally specific humor.', '');

-- 503 ... la campagne (1995) -> 467 ...und fhre uns nicht in Versuchung (1957)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (503, 467, 10, 'Yoavkeidar9', 'Audiences who appreciate slow-paced European cinema will love how both films rely on quiet, beautifully shot countryside environments and highly natural character interactions.', '');

-- 684 100 gramm dlya khrabrosti (1976) -> 11 $1000 a Touchdown (1939)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (684, 11, 10, 'Yoavkeidar9', 'Both serve as great compilations of classic comedic routines, highlighting the distinct historical slapstick humor of their respective eras.', '');

-- 61 'As se hizo' - Torremolinos 73 (2003) -> 118 'Halloween' Unmasked 2000 (1999)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (61, 118, 10, 'Yoavkeidar9', 'These excellent behind-the-scenes documentaries provide immense value for film nerds by showing exactly how specific shots were set up to maximize limited production budgets.', '');

-- 1087 13th Letter, The (1951) -> 521 0 Uhr 15, Zimmer 9 (1950)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (1087, 521, 10, 'Yoavkeidar9', 'Both are solid, intense black-and-white crime mysteries from the early 1950s, showcasing fast-paced investigations into anonymous threats and mobsters.', '');

-- 634 10 on Ten (2004) -> 245 'Space: 1999' Documentary, The (1996)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (634, 245, 10, 'Yoavkeidar9', 'These documentaries are incredibly inspiring for aspiring directors, demonstrating how deeply creative filmmakers managed to produce amazing work without massive studio budgets.', '');

-- 400 ...First Do No Harm (1997) -> 896 10:30 P.M. Summer (1966)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (400, 896, 10, 'Yoavkeidar9', 'Both are deeply sad, highly tense psychological dramas that rely on phenomenal, emotionally taxing performances to anchor their intensely stressful narratives.', '');

-- 591 1-2-3-4 ou Les Collants noirs (1960) -> 71 'Broadway Melody of 1940' (1940)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (591, 71, 10, 'Yoavkeidar9', 'Viewers seeking pure physical artistry will appreciate that both films essentially abandon traditional plots to entirely focus on absolutely mesmerizing, top-tier dance choreography.', '');

-- 1039 13 jours en France (1968) -> 87 'Columbia' Winning the Cup (1899)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (1039, 87, 10, 'Yoavkeidar9', 'Both capture specific, major sporting events perfectly, combining beautiful cinematography with a documentary approach that elevates the raw historical footage.', '');

-- 555 1 + 1 = 3 (1979) -> 160 'Merci la vie' (1991)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (555, 160, 10, 'Yoavkeidar9', 'Both are dramatic explorations of highly complicated human relationships that intentionally shift their tone constantly, resulting in bizarre but memorable cinematic experiences.', '');

-- 428 ...Or Forever Hold Your Peace (2000) -> 1046 13 Moons (2002)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (428, 1046, 10, 'Yoavkeidar9', 'These ensemble indie comedies suffer from slightly messy scripts, but remain highly watchable entirely because of their fantastic casts delivering sharp, funny dialogue.', '');

-- 910 11 Harrowhouse (1974) -> 672 100 aos de perdn (1998)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (910, 672, 10, 'Yoavkeidar9', 'Fans of the heist genre will love the extremely cool, intricate robbery sequences in both films, executed by surprisingly smart and capable characters.', '');

-- 1069 13ta godenitsa na printsa (1987) -> 1036 13 Ghosts (1960)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (1069, 1036, 10, 'Yoavkeidar9', 'Both are delightfully outdated, incredibly cheesy genre films that rely on gimmicks and totally unconvincing special effects to deliver a charming, goofy viewing experience.', '');

-- 973 12 Bucks (1998) -> 31 $pent (2000)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (973, 31, 10, 'Yoavkeidar9', 'Both are low-budget, late-90s/early-2000s indie dramas focusing heavily on desperate characters navigating urban struggle through dialogue-heavy, tense scenes.', '');
-- 965 12 (2003/I) -> 609 10 Again (2003)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (965, 609, 10, 'Yoavkeidar9', 'Both are grounded, realistic coming-of-age indie stories that focus on the quiet, everyday struggles of youth rather than relying on exaggerated Hollywood tropes.', '');

-- 949 119 (1994) -> 417 ...Lost (2000)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (949, 417, 10, 'Yoavkeidar9', 'Viewers who prefer a slow burn will appreciate these international thrillers, which intentionally take their time building up narrative tension instead of rushing into action.', '');

-- 807 1000 Boomerangs (1994) -> 428 ...Or Forever Hold Your Peace (2000)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (807, 428, 10, 'Yoavkeidar9', 'These are decent, low-budget indie comedies that manage to deliver genuinely funny dialogue and engaging plots despite their obvious financial limitations.', '');

-- 137 'Je vous salue, Marie' (1985) -> 554 1 + 1 = 1.5 (1969)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (137, 554, 10, 'Yoavkeidar9', 'Both are heavily abstract, confusing art films that prioritize completely unconventional, detached visual experimentation over easily digestible mainstream storytelling.', '');

-- 362 ...Belpaese, Il (1977) -> 198 'O re (1989)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (362, 198, 10, 'Yoavkeidar9', 'These Italian features attempt an incredibly tricky balancing act, constantly mixing broad comedy with historical and dramatic elements to create a uniquely mixed tone.', '');

-- 718 100 to One Shot; or, A Run of Luck, The (1906) -> 50 '?' Motorist, The (1906)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (718, 50, 10, 'Yoavkeidar9', 'Both are absolutely fascinating pieces of early cinema history from 1906, offering a pure look at how pioneers experimented with moving photographs and basic visual tricks.', '');

-- 196 'Non', ou A V Glria de Mandar (1990) -> 1057 13. jul (1982)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (196, 1057, 10, 'Yoavkeidar9', 'These are massive, visually overwhelming international war films that focus heavily on sweeping historical military events and explosive battles over subtle character development.', '');

-- 585 1,99 - Um Supermercado Que Vende Palavras (2003) -> 73 'burbs, The (1989)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (585, 73, 10, 'Yoavkeidar9', 'Both are smart, cynical satires that brilliantly mock modern society and domestic life, pointing out the absurdity of consumerism and suburban hypocrisy.', '');

-- 953 11:11 (2004) -> 1075 13th House, The (2003)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (953, 1075, 10, 'Yoavkeidar9', 'Horror fans looking for simple, generic thrills will find that both of these low-budget indie films rely entirely on standard jump scares rather than complex psychological dread.', '');

-- 94 'Crocodile' Dundee II (1988) -> 345 ...Almost (1990)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (94, 345, 10, 'Yoavkeidar9', 'These are highly formulaic, average 90s-era comedies where the protagonists consistently make simplistic decisions, suitable primarily for mindless background viewing.', '');

-- 24 $50,000 Climax Show, The (1975) -> 160 'Merci la vie' (1991)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (24, 160, 10, 'Yoavkeidar9', 'Both are highly unconventional, chaotic movies from past decades that constantly shift their tone, resulting in bizarre but memorable viewing experiences.', '');

-- 378 ...Duren' ty, duren'! (1931) -> 124 'Hyp-Nut-Tist', The (1935)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (378, 124, 10, 'Yoavkeidar9', 'These early 1930s cinematic pieces possess a distinct, historical charm, showcasing how comedy and visual storytelling evolved during the early days of sound and animation.', '');

-- 1051 13 Sthle (1938) -> 11 $1000 a Touchdown (1939)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (1051, 11, 10, 'Yoavkeidar9', 'Both are fast-paced, old 1930s comedies that lean heavily on silly physical gags and ridiculous, highly energetic setups to generate constant laughs.', '');

-- 549 08/15 - In der Heimat (1955) -> 550 08/15 - Zweiter Teil (1955)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (549, 550, 10, 'Yoavkeidar9', 'Since these are direct sequential parts of the same German war trilogy, viewers who invested in the continuing historical storyline will naturally want to see how the narrative wraps up.', '');

-- 130 'Imhar', une lgende (1997) -> 829 10000th Day, The (1997)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (130, 829, 10, 'Yoavkeidar9', 'Both are visually interesting short films from 1997 that successfully deliver strong, thought-provoking concepts in a very limited timeframe.', '');

-- 136 'Java Madness' formerly titled 'Coffee Madness' (1995) -> 641 10 Seconds (1998)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (136, 641, 10, 'Yoavkeidar9', 'Both are tightly executed short films that prove you do not need feature-length runtimes to successfully build great narrative tension or relatable humor.', '');

-- 141 'Kaash' (1987) -> 408 ...ing (2003)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (141, 408, 10, 'Yoavkeidar9', 'Both are incredibly heavy, emotional melodramas from international cinema that act as massive tearjerkers focused on tragic personal relationships.', '');

-- 352 ...And the Earth Did Not Swallow Him (1995) -> 499 ...ya no puede caminar. (2001)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (352, 499, 10, 'Yoavkeidar9', 'These are touching, grounded independent dramas that focus heavily on the raw emotional struggles of marginalized families, featuring deeply authentic and realistic acting.', '');

-- 361 ...Because She Disobeyed (1935) -> 1088 13th Man, The (1937)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (361, 1088, 10, 'Yoavkeidar9', 'Fans of early cinema will appreciate both of these standard, straightforward 1930s cinematic features that rely on highly predictable plots and established cliches.', '');

-- 365 ...borgnes sont rois, Les (1974) -> 993 12 Stops on the Road to Nowhere (1999)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (365, 993, 10, 'Yoavkeidar9', 'Both are highly acclaimed, perfectly paced short narratives that manage to deliver memorable, effective storytelling with incredibly restricted resources.', '');

-- 370 ...continuavano a chiamarlo Trinit (1972) -> 344 ...All the Marbles (1981)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (370, 344, 10, 'Yoavkeidar9', 'These comedies brilliantly use highly choreographed, ridiculous physical fight scenes—whether in a Spaghetti Western or a wrestling ring—to deliver constant laughs.', '');

-- 418 ...Maybe This Time (1980) -> 359 ...Aur Pyaar Ho Gaya (1997)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (418, 359, 10, 'Yoavkeidar9', 'These are incredibly standard, formulaic romance movies that heavily resemble daytime soap operas, offering predictable relationship drama without breaking any new ground.', '');

-- 467 ...und fhre uns nicht in Versuchung (1957) -> 340 ...A ya uezzhayu domoy (1968)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (467, 340, 10, 'Yoavkeidar9', 'These older European dramas take themselves far too seriously, resulting in incredibly slow-paced narratives that are ultimately just okay but very deliberate in their execution.', '');

-- 544 06 (1994) -> 594 1-900 (1996)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (544, 594, 10, 'Yoavkeidar9', 'Both experiment successfully with extreme narrative constraints, locking their entire engaging plots into the format of telephone conversations.', '');

-- 558 1 Berlin-Harlem (1974) -> 869 101 Rent Boys (2000)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (558, 869, 10, 'Yoavkeidar9', 'Both provide incredibly raw, uncomfortable, and entirely unfiltered looks at marginalized urban demographics, avoiding mainstream sanitization entirely.', '');

-- 618 10 from Your Show of Shows (1973) -> 798 100% Service (1931)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (618, 798, 10, 'Yoavkeidar9', 'Both highlight classic, masterfully written old-school comedy, relying heavily on brilliant physical slapstick and sketches that maintain their charm decades later.', '');

-- 634 10 on Ten (2004) -> 61 'As se hizo' - Torremolinos 73 (2003)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (634, 61, 10, 'Yoavkeidar9', 'These are highly inspiring behind-the-scenes documentaries that provide immense value for aspiring filmmakers looking to understand production constraints and setups.', '');

-- 453 ...und abends in die Scala (1958) -> 71 'Broadway Melody of 1940' (1940)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (453, 71, 10, 'Yoavkeidar9', 'Viewers seeking classic musical numbers will appreciate how both mid-century films focus intensely on stage performances and choreography to drive the entertainment value.', '');

-- 646 10 Violent Women (1982) -> 823 1000 Shapes of a Female (1963)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (646, 823, 10, 'Yoavkeidar9', 'Both are delightfully outdated, incredibly cheesy genre films that rely on gimmicks and totally unconvincing special effects to deliver a charming, goofy viewing experience.', '');

-- 713 100 Pro (2001) -> 184 'Ne gnstige Gelegenheit (1999)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (713, 184, 10, 'Yoavkeidar9', 'These German comedies attempt to utilize sharp, fast-paced dialogue, appealing to viewers who enjoy culturally specific, loud comedic situations.', '');

-- 822 1000 Rosen (1994) -> 503 ... la campagne (1995)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (822, 503, 10, 'Yoavkeidar9', 'Audiences who appreciate slow-paced European cinema will love how both films rely on quiet, beautifully shot countryside environments and highly natural character interactions.', '');

-- 979 12 horas (2001) -> 331 -30- (1959)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (979, 331, 10, 'Yoavkeidar9', 'Both are fast-paced, cool dramas that capture an incredible sense of chaotic energy—whether in a frantic newspaper office deadline or over a heavily restricted half-day timeline.', '');

-- 1030 13 Fighting Men (1960) -> 188 'Neath the Arizona Skies (1934)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (1030, 188, 10, 'Yoavkeidar9', 'Both are extremely basic, low-budget mid-century features that offer exactly what fans of the era expect: familiar plots and very standard directing without any major surprises.', '');

-- 31 $pent (2000) -> 32 $ucces Part One (1986)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (31, 32, 10, 'Yoavkeidar9', 'These are heavily stylized indie films from the late 80s and 90s that aim for deep artistic statements but largely appeal to niche audiences seeking unconventional cinematic structures.', '');

-- 44 '68 (1988) -> 350 ...And Millions Die! (1973)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (44, 350, 10, 'Yoavkeidar9', 'Both films rely heavily on dialogue-heavy rooms where characters discuss impending societal shifts, capturing the paranoid and culturally specific vibes of their respective decades.', '');

-- 101 'El Chicko' - der Verdacht (1995) -> 393 ...e tanta paura (1976)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (101, 393, 10, 'Yoavkeidar9', 'Both international thrillers do an excellent job building tense, engaging mysteries, navigating procedural investigations that slowly uncover deeper criminal conspiracies.', '');

-- 139 'J to tedy beru, sfe...!' (1977) -> 487 ...Y al tercer ao, resucit (1981)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (139, 487, 10, 'Yoavkeidar9', 'Both are culturally specific 1970s and 80s international comedies where the enjoyment heavily relies on understanding local history and nuanced political jokes.', '');

-- 334 ...4 ...3 ...2 ...1 ...morte (1967) -> 529 007 1/2 no Carnaval (1966)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (334, 529, 10, 'Yoavkeidar9', 'Fans of highly campy, low-budget 1960s cinema will enjoy the cardboard sets and simplistic spy and sci-fi plots that give these films their distinct, unintentional charm.', '');

-- 413 ...Ja teeb trikke (1978) -> 329 *Corpus Callosum (2002)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (413, 329, 10, 'Yoavkeidar9', 'Both are heavily experimental, visually demanding cinematic experiences that utilize strange distortions and abstract visuals to challenge the viewer.', '');

-- 445 ...som havets nakna vind (1968) -> 195 'Night, Mother (1986)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (445, 195, 10, 'Yoavkeidar9', 'Both are incredibly heavy, slow-paced dramas that succeed entirely due to the raw, emotionally devastating and isolating performances of their leading actors.', '');

-- 572 1 na 1 (2002) -> 1016 125 rue Montmartre (1959)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (572, 1016, 10, 'Yoavkeidar9', 'Both are incredibly solid, gritty European crime thrillers that deliver nice plot twists and showcase impressive, tense underworld investigations for their respective time periods.', '');

-- 675 100 Days (1991) -> 430 ...Po prozvishchu 'Zver' (1990)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (675, 430, 10, 'Yoavkeidar9', 'While both films feature simplistic revenge plots, they completely redeem themselves with highly satisfying, excellently choreographed hand-to-hand fight scenes.', '');

-- 11 $1000 a Touchdown (1939) -> 186 'Neath Brooklyn Bridge (1942)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (11, 186, 10, 'Yoavkeidar9', 'Both are early Hollywood features that lean entirely on heavily predictable comedic routines, fast-paced dialogue, and well-worn slapstick cliches to tell their stories.', '');

-- 87 'Columbia' Winning the Cup (1899) -> 589 1-2-3 Go! (1941)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (87, 589, 10, 'Yoavkeidar9', 'Both consist primarily of historical documentary footage, offering a pure, unfiltered look at late 19th and early 20th-century events that serve as perfect time capsules.', '');

-- 188 'Neath the Arizona Skies (1934) -> 390 ...e per tetto un cielo di stelle (1968)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (188, 390, 10, 'Yoavkeidar9', 'Fans of the Western genre will enjoy both films, as they feature cool, recognizable character archetypes engaging in the classic action that defined early cowboy cinema.', '');

-- 18 $40,000 (1996) -> 714 100 Proof (1997)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (18, 714, 10, 'Yoavkeidar9', 'Both are raw, micro-budget 1990s indie projects that feel highly authentic precisely because of their unpolished audio and grassroots production value.', '');

-- 1026 13 Dead Men (2003) -> 33 $windle (2002)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (1026, 33, 10, 'Yoavkeidar9', 'Fans of mindless action will enjoy both films, as they abandon character development entirely in favor of constant, loud shootouts and generic combat scenarios.', '');

-- 682 100 Girls (2000) -> 1038 13 Going On 30 (2004)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (682, 1038, 10, 'Yoavkeidar9', 'Both are energetic, lighthearted teen comedies that perfectly capture the silly, upbeat tone of turn-of-the-century high school romance and coming-of-age tropes.', '');

-- 845 101 (1989) -> 563 1 Giant Leap (2002)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (845, 563, 10, 'Yoavkeidar9', 'Audiences who deeply appreciate music-centric cinema will love how both films use incredible, authentic soundtracks to explore culture, whether through fan obsession or global travel.', '');
-- 848 101 Dalmatians (1998) -> 645 10 to Midnight (1983)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (848, 645, 2, 'Yoavkeidar9', 'Numerical title tag failure. Recommending a violent 1980s police procedural to viewers of an animated family film is highly ineffective.', '');

-- 646 10 Violent Women (1982) -> 969 12 Angry Men (1957)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (646, 969, 1, 'Yoavkeidar9', 'Gender and number keyword overlap. The poorly executed exploitation film lacks the substance to be paired with an acclaimed, masterfully framed courtroom drama.', '');

-- 995 12 stulyev (1971) -> 973 12 Bucks (1998)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (995, 973, 2, 'Yoavkeidar9', 'A false positive based on the number 12. A beloved Russian treasure hunt comedy shares no target audience with a low-budget 90s indie featuring constant yelling.', '');

-- 1040 13 kaidan (2003) -> 1038 13 Going On 30 (2004)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (1040, 1038, 1, 'Yoavkeidar9', 'An algorithm trap matching release eras and the number 13. A dark Japanese death penalty thriller is completely inappropriate for fans of a lighthearted teenage romcom.', '');

-- 707 100 Mile Rule (2002) -> 822 1000 Rosen (1994)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (707, 822, 3, 'Yoavkeidar9', 'Number-based metadata link. A highly cynical, edgy dark comedy appeals to a totally different viewer base than a quiet, methodical European drama.', '');

-- 1048 13 Rue Madeleine (1947) -> 1075 13th House, The (2003)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (1048, 1075, 2, 'Yoavkeidar9', 'A flawed connection via the number 13. A gritty WWII spy thriller offers a deeply serious narrative that completely clashes with generic, low-budget indie horror jump scares.', '');

-- 907 11 commandements, Les (2004) -> 336 ...a pty jezdec je Strach (1964)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (907, 336, 1, 'Yoavkeidar9', 'European production tag mismatch. The repetitive, simplistic stunt humor of a Jackass clone is wildly inappropriate to recommend alongside a terrifying Holocaust drama.', '');

-- 430 ...Po prozvishchu 'Zver' (1990) -> 845 101 (1989)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (430, 845, 3, 'Yoavkeidar9', 'Era overlap failure. A Russian hand-to-hand action movie has absolutely no thematic connection to a documentary exploring the fan culture of a British synth-pop band.', '');

-- 121 'High Sign', The (1921) -> 133 'It's Alive!' (1969)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (121, 133, 3, 'Yoavkeidar9', 'Classic cinema false positive. Masterful 1920s physical comedy relies on brilliant timing, which is fundamentally different from the unintentional humor of low-budget rubber monster suits.', '');

-- 6 $1,000,000 Duck (1971) -> 2 $ (1971)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (6, 2, 3, 'Yoavkeidar9', '1971 release and financial keyword trap. A super silly live-action Disney slapstick lacks any thematic similarity to a bizarre, tonally uneven 70s bank robbery.', '');

-- 365 ...borgnes sont rois, Les (1974) -> 378 ...Duren' ty, duren'! (1931)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (365, 378, 3, 'Yoavkeidar9', 'European short film mismatch. An Oscar-winning 1970s narrative short offers a completely different viewing experience from a rough, historical 1930s Russian artifact.', '');

-- 450 ...tick...tick...tick... (1970) -> 529 007 1/2 no Carnaval (1966)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (450, 529, 2, 'Yoavkeidar9', 'Punctuation and numerical title link. A tense, dramatic exploration of racial tension is entirely incompatible with a poorly executed, unfunny 1960s spy spoof.', '');

-- 548 08/15 (1954) -> 749 100% Arabica (1997)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (548, 749, 2, 'Yoavkeidar9', 'Algorithm failure based on numeric titles. The harsh, realistic critique of military training completely outclasses the thin plot and subpar pacing of the musical comedy.', '');

-- 829 10000th Day, The (1997) -> 263 'Til There Was You (1997)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (829, 263, 3, 'Yoavkeidar9', '1997 release tag trap. A highly effective, thought-provoking short film appeals to an intellectual audience that would find the chemistry-free romantic comedy incredibly unengaging.', '');

-- 118 'Halloween' Unmasked 2000 (1999) -> 156 'Manos' the Hands of Fate (1966)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (118, 156, 2, 'Yoavkeidar9', 'Horror metadata false positive. A deep, informative documentary about cinematic production highlights just how disastrous and poorly executed the 1966 B-movie truly is.', '');

-- 165 'Midnight Cowboy' Revisited (1994) -> 44 '68 (1988)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (165, 44, 3, 'Yoavkeidar9', 'Retrospective tag mismatch. A brilliant breakdown of a controversial classic offers profound context, whereas the 1988 film just presents a superficial collection of hippy cliches.', '');

-- 181 'N Sync: No Strings Attached (1999) -> 558 1 Berlin-Harlem (1974)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (181, 558, 1, 'Yoavkeidar9', 'A massive algorithmic oversight. A highly energetic, nostalgic teen pop concert video has zero crossover appeal with a raw, uncomfortable drama addressing 1970s racism.', '');

-- 230 'Salem's Lot (2004) -> 682 100 Girls (2000)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (230, 682, 2, 'Yoavkeidar9', 'Early 2000s release tag match. The atmospheric, creepy suspense of a Stephen King adaptation is tonally the exact opposite of a simplistic, repetitive teen comedy.', '');

-- 249 'Sunset Blvd.': A Look Back (2002) -> 417 ...Lost (2000)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (249, 417, 3, 'Yoavkeidar9', 'Hollywood drama metadata trap. The masterful retrospective provides deep historical storytelling, making the slow, unengaging pacing of the indie thriller feel incredibly tedious.', '');

-- 50 '?' Motorist, The (1906) -> 675 100 Days (1991)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (50, 675, 2, 'Yoavkeidar9', 'Action/Movement tag failure. A charming, experimental camera trick film from 1906 shares no audience with an overly serious, loudly executed 1990s shootout action movie.', '');

-- 71 'Broadway Melody of 1940' (1940) -> 334 ...4 ...3 ...2 ...1 ...morte (1967)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (71, 334, 3, 'Yoavkeidar9', 'An algorithm matching older studio films. The absolutely timeless, mesmerizing tap choreography completely shames the predictable plot and cardboard sets of the 60s sci-fi.', '');

-- 72 'Bullitt': Steve McQueen's Commitment to Reality (1968) -> 823 1000 Shapes of a Female (1963)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (72, 823, 1, 'Yoavkeidar9', '1960s production tag mismatch. A masterful documentary detailing analog camera setups is deeply educational, while the exploitation film is entirely lacking substance.', '');

-- 73 'burbs, The (1989) -> 1072 13th Child (2002)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (73, 1072, 2, 'Yoavkeidar9', 'Suspense/Horror overlap trap. The brilliant, slapstick satire of suburban paranoia completely contradicts the flat acting and poorly executed monster effects of the Jersey Devil film.', '');

-- 94 'Crocodile' Dundee II (1988) -> 639 10 Rillington Place (1971)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (94, 639, 1, 'Yoavkeidar9', 'Algorithm failure on action/crime tags. A forced, slow-paced action comedy sequel is violently incompatible with the terrifying, quiet realism of a true-crime serial killer drama.', '');

-- 108 'G' Men (1935) -> 713 100 Pro (2001)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (108, 713, 2, 'Yoavkeidar9', 'Protagonist-focused narrative trap. Cagney''s intense, fast-paced 1930s crime thriller provides a totally different experience from the completely flat, unfunny German comedy.', '');

-- 124 'Hyp-Nut-Tist', The (1935) -> 362 ...Belpaese, Il (1977)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (124, 362, 3, 'Yoavkeidar9', 'Comedy genre tag mismatch. Perfect 1930s cartoon timing and expressive animation appeal to a different demographic than an Italian comedy struggling to balance serious drama.', '');

-- 127 'If Only' Jim (1920) -> 695 100 Jahre Adolf Hitler - Die letzte Stunde im Fhrerbunker (1989)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (127, 695, 2, 'Yoavkeidar9', 'Historical drama false positive. A heavily predictable, basic silent-era drama is structurally completely different from the intentionally messy, claustrophobic bunker footage.', '');

-- 130 'Imhar', une lgende (1997) -> 551 091 Polica al habla (1960)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (130, 551, 3, 'Yoavkeidar9', 'European/International tag connection. A visually pleasing, plotless 90s short film shares zero cinematic DNA with a highly standard, procedural 1960s Spanish cop thriller.', '');

-- 136 'Java Madness' formerly titled 'Coffee Madness' (1995) -> 1054 13 West Street (1962)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (136, 1054, 3, 'Yoavkeidar9', 'A false positive based on urban tension. A relatable, humorous short about coffee addiction does not prepare a viewer for a dark, genuinely tense mid-century crime film.', '');

-- 137 'Je vous salue, Marie' (1985) -> 644 10 Things I Hate About You (1999)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (137, 644, 2, 'Yoavkeidar9', 'Modern adaptation tag match. A weird, detached 1980s take on religion is tonally the exact opposite of a highly energetic, incredibly charming high school Shakespeare adaptation.', '');

-- 139 'J to tedy beru, sfe...!' (1977) -> 1018 12:01 (1993)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (139, 1018, 3, 'Yoavkeidar9', 'Comedy crossover failure. A mildly funny, culturally specific 70s Czech film appeals to a vastly different viewer base than a clever, sci-fi time-loop thriller.', '');

-- 141 'Kaash' (1987) -> 1019 12:01 PM (1990)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (141, 1019, 4, 'Yoavkeidar9', 'Late 80s/early 90s dramatic release match. An overly melodramatic Bollywood tearjerker completely contrasts with the highly efficient, clever sci-fi temporal concepts of the short film.', '');

-- 160 'Merci la vie' (1991) -> 847 101 Dalmatians (1996)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (160, 847, 2, 'Yoavkeidar9', '1990s release tag match. A chaotic, bizarre French movie that constantly shifts tone is highly inappropriate for audiences seeking a cartoonish, live-action Disney family adventure.', '');

-- 184 'Ne gnstige Gelegenheit (1999) -> 52 'A' gai waak (1983)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (184, 52, 3, 'Yoavkeidar9', 'Action-comedy metadata trap. A German film featuring failed attempts at sharp dialogue is heavily outclassed by the legendary, mind-blowing practical stunts of Jackie Chan.', '');

-- 186 'Neath Brooklyn Bridge (1942) -> 53 'A' gai waak juk jaap (1987)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (186, 53, 3, 'Yoavkeidar9', 'Urban action genre link. The repetitive, generic jokes of a 1940s feature provide a vastly inferior experience to the world-class stunt choreography of a 1980s martial arts sequel.', '');

-- 188 'Neath the Arizona Skies (1934) -> 921 11'09''01 - September 11 (2002)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (188, 921, 1, 'Yoavkeidar9', 'A massive algorithmic oversight. A low-budget, forgettable 1930s John Wayne adventure shares absolutely zero emotional or cinematic resonance with a heavy 9/11 documentary.', '');

-- 195 'Night, Mother (1986) -> 610 10 Attitudes (2001)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (195, 610, 2, 'Yoavkeidar9', 'Character-driven drama mismatch. An incredibly heavy, emotionally devastating stage adaptation highlights exactly how poorly executed and wooden the acting is in the indie romcom.', '');

-- 196 'Non', ou A V Glria de Mandar (1990) -> 618 10 from Your Show of Shows (1973)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (196, 618, 2, 'Yoavkeidar9', 'Ensemble cast false positive. A visually dense, historically complex Portuguese military drama is fundamentally at odds with a compilation of 1970s comedic television sketches.', '');

-- 198 'O re (1989) -> 628 10 minuta (2002)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (198, 628, 2, 'Yoavkeidar9', 'European film metadata trap. A historical comedy where the localized jokes fail to land is entirely incompatible with a deeply powerful, straight-to-the-point short film about war.', '');

-- 209 'Pimpernel' Smith (1941) -> 672 100 aos de perdn (1998)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (209, 672, 3, 'Yoavkeidar9', 'Smart protagonist genre link. While both feature capable leads, a 1940s British anti-Nazi propaganda film appeals to a very different crowd than a 1990s Venezuelan bank heist.', '');

-- 220 'Rope' Unleashed (2001) -> 585 1,99 - Um Supermercado Que Vende Palavras (2003)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (220, 585, 3, 'Yoavkeidar9', 'Early 2000s thematic release match. A brilliant documentary on Hitchcock''s hidden cuts is highly engaging, whereas the Brazilian consumerism satire feels overly preachy and dialogue-heavy.', '');

-- 223 'Round Midnight (1986) -> 807 1000 Boomerangs (1994)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (223, 807, 3, 'Yoavkeidar9', 'Musical and artsy metadata connection. A soulful, beautifully authentic tribute to 1950s jazz drastically outshines the weirdly paced, low-budget plot of the 90s indie film.', '');

-- 245 'Space: 1999' Documentary, The (1996) -> 1097 14 Carrot Rabbit (1952)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (245, 1097, 4, 'Yoavkeidar9', 'Behind-the-scenes vs Animation false positive. A documentary showing practical sci-fi TV effects caters to adult film nerds, not the audience looking for classic Bugs Bunny slapstick.', '');

-- 257 'Teddy' Bears, The (1907) -> 563 1 Giant Leap (2002)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (257, 563, 2, 'Yoavkeidar9', 'Visual novelty mismatch. The highly bizarre, creepy 1907 moving photograph of people in bear suits lacks the substance of a deep, global travel and music documentary.', '');

-- 263 'Til There Was You (1997) -> 953 11:11 (2004)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (263, 953, 3, 'Yoavkeidar9', 'Late 90s/Early 2000s feature film trap. A boring, highly predictable romantic comedy has zero crossover appeal with a low-budget indie thriller entirely reliant on jump scares.', '');

-- 264 'Til We Meet Again (1940) -> 1046 13 Moons (2002)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (264, 1046, 3, 'Yoavkeidar9', 'Ensemble relationship drama mismatch. A heavily emotional, tragic 1940s romance is tonally the exact opposite of an offbeat 2000s indie comedy navigating a messy script.', '');

-- 291 'Weird Al' Yankovic Live! (1999) -> 337 ...a tutte le auto della polizia (1975)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (291, 337, 2, 'Yoavkeidar9', 'High energy algorithm trap. The frantic, non-stop musical comedy of a stadium concert deeply contrasts with the gritty, tense realism of a 1970s Italian police procedural.', '');

-- 328 *batteries not included (1987) -> 345 ...Almost (1990)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (328, 345, 4, 'Yoavkeidar9', 'Late 80s/Early 90s comedy connection. A sweet, charming sci-fi movie with practical effects completely outclasses the highly simplistic, forgettable character decisions in the 1990 comedy.', '');

-- 329 *Corpus Callosum (2002) -> 349 ...And Justice for All (1979)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (329, 349, 2, 'Yoavkeidar9', 'A false positive based on deep cinematic themes. The tiring, heavily experimental visual distortions of the former clash entirely with the explosive, legendary courtroom performance of Al Pacino.', '');

-- 331 -30- (1959) -> 715 100 Rifles (1969)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (331, 715, 4, 'Yoavkeidar9', 'Mid-century action/drama tag match. A fast-paced, cool drama capturing chaotic newspaper energy offers a much better viewing experience than a highly average, flatly directed Western.', '');
-- 331 -30- (1959) -> 337 ...a tutte le auto della polizia (1975)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (331, 337, 10, 'Yoavkeidar9', 'Both are fast-paced, highly engaging dramas that capture an incredible sense of chaotic energy, utilizing strong pacing to maintain viewer interest throughout.', '');

-- 336 ...a pty jezdec je Strach (1964) -> 38 '38 (1987)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (336, 38, 10, 'Yoavkeidar9', 'These deeply tense, historically significant European dramas use dark, oppressive atmospheres to brilliantly capture the real terror and societal tension surrounding the WWII era.', '');

-- 338 ...A Valparaso (1962) -> 87 'Columbia' Winning the Cup (1899)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (338, 87, 10, 'Yoavkeidar9', 'Both represent valuable historical documentary footage, utilizing location-based recording to capture specific events and environments as perfect cinematic time capsules.', '');

-- 341 ...a zase ta Lucie! (1984) -> 139 'J to tedy beru, sfe...!' (1977)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (341, 139, 10, 'Yoavkeidar9', 'Viewers who appreciate classic Eastern European cinema will enjoy how both films use culturally specific humor and lighthearted, fast-paced scenarios to keep the audience entertained.', '');

-- 344 ...All the Marbles (1981) -> 53 'A' gai waak juk jaap (1987)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (344, 53, 10, 'Yoavkeidar9', 'These films brilliantly use highly choreographed, occasionally simplistic physical fight scenes—whether in a wrestling ring or martial arts setting—to deliver constant visceral entertainment.', '');

-- 352 ...And the Earth Did Not Swallow Him (1995) -> 195 'Night, Mother (1986)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (352, 195, 10, 'Yoavkeidar9', 'Both are incredibly heavy, grounded dramas that succeed entirely due to the raw, emotionally devastating performances of their actors dealing with marginalized struggles or tragedy.', '');

-- 361 ...Because She Disobeyed (1935) -> 127 'If Only' Jim (1920)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (361, 127, 10, 'Yoavkeidar9', 'Fans of early Hollywood will appreciate both of these standard, straightforward cinematic features that rely on highly predictable plots and established dramatic cliches.', '');

-- 365 ...borgnes sont rois, Les (1974) -> 121 'High Sign', The (1921)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (365, 121, 10, 'Yoavkeidar9', 'These highly acclaimed, perfectly paced short narratives manage to deliver memorable, effective visual storytelling without the need for extensive dialogue or complex scripts.', '');

-- 400 ...First Do No Harm (1997) -> 141 'Kaash' (1987)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (400, 141, 10, 'Yoavkeidar9', 'Both are deeply sad, highly melodramatic family dramas centering around intense medical issues, designed specifically to evoke strong emotional reactions from the audience.', '');

-- 349 ...And Justice for All (1979) -> 69 'Breaker' Morant (1980)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (349, 69, 10, 'Yoavkeidar9', 'These tense, dramatic films deeply explore the flaws in justice and institutional systems, anchored by explosive lead performances dealing with heavy bureaucratic pressure.', '');

-- 328 *batteries not included (1987) -> 51 'A' (1965)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (328, 51, 10, 'Yoavkeidar9', 'These sweet, charming cinematic pieces prioritize creativity and unique visual styles, presenting optimistic and magical narratives rather than relying on standard genre formulas.', '');

-- 291 'Weird Al' Yankovic Live! (1999) -> 71 'Broadway Melody of 1940' (1940)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (291, 71, 10, 'Yoavkeidar9', 'Viewers seeking high-energy stage performances will appreciate how both films essentially focus intensely on absolutely mesmerizing, top-tier musical and physical choreography.', '');

-- 264 'Til We Meet Again (1940) -> 195 'Night, Mother (1986)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (264, 195, 10, 'Yoavkeidar9', 'Both succeed entirely due to the emotionally devastating, deeply authentic dramatic performances of their leading actors navigating severe personal tragedy.', '');


-- 245 'Space: 1999' Documentary, The (1996) -> 118 'Halloween' Unmasked 2000 (1999)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (245, 118, 10, 'Yoavkeidar9', 'These highly inspiring behind-the-scenes documentaries provide immense value for aspiring filmmakers looking to understand production constraints, practical effects, and set designs.', '');

-- 230 'Salem's Lot (2004) -> 639 10 Rillington Place (1971)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (230, 639, 10, 'Yoavkeidar9', 'Horror and thriller fans will appreciate that both films heavily rely on establishing a creepy, haunting atmosphere and quiet realism rather than explicit, low-budget gore.', '');


-- 209 'Pimpernel' Smith (1941) -> 108 'G' Men (1935)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (209, 108, 10, 'Yoavkeidar9', 'These are incredibly solid, fast-paced black-and-white thrillers from the golden age of cinema, showcasing intelligent protagonists navigating tense, high-stakes investigations.', '');


-- 181 'N Sync: No Strings Attached (1999) -> 291 'Weird Al' Yankovic Live! (1999)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (181, 291, 10, 'Yoavkeidar9', 'Both serve as incredibly energetic, fascinating documentary-style records of popular music acts, perfectly capturing the wild enthusiasm of their respective fan bases during live tours.', '');

-- 153 'Mad' Boy, I'll Blow Your Blues Away. Be Mine (1997) -> 130 'Imhar', une lgende (1997)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (153, 130, 10, 'Yoavkeidar9', 'Viewers who prioritize aesthetics over standard narrative will appreciate that both films deliver highly stylish, visually pleasing cinematic experiences in a short format.', '');

-- 136 'Java Madness' formerly titled 'Coffee Madness' (1995) -> 15 $30 (1999)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (136, 15, 10, 'Yoavkeidar9', 'Both are tightly executed short films that prove feature-length runtimes are not necessary to successfully build great narrative tension or deliver highly relatable humor.', '');

-- 124 'Hyp-Nut-Tist', The (1935) -> 121 'High Sign', The (1921)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (124, 121, 10, 'Yoavkeidar9', 'Both showcase the absolute peak of classic, expressive studio physical comedy and animation, relying entirely on perfect comedic timing that still holds up flawlessly today.', '');

-- 334 ...4 ...3 ...2 ...1 ...morte (1967) -> 336 ...a pty jezdec je Strach (1964)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (334, 336, 2, 'Yoavkeidar9', 'Numerical countdown title match. A low-budget cardboard 60s sci-fi movie completely ignores the demographic seeking a deeply terrifying Holocaust drama.', '');

-- 337 ...a tutte le auto della polizia (1975) -> 6 $1,000,000 Duck (1971)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (337, 6, 2, 'Yoavkeidar9', 'Algorithm failure based on chronological sorting. A gritty, impressive Italian police thriller shares absolutely zero audience overlap with a simplistic, highly dated Disney slapstick.', '');

-- 340 ...A ya uezzhayu domoy (1968) -> 344 ...All the Marbles (1981)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (340, 344, 3, 'Yoavkeidar9', 'Matched via ellipsis title patterns. An incredibly slow, deliberate Russian drama is entirely incompatible with an energetic, physical wrestling comedy.', '');

-- 350 ...And Millions Die! (1973) -> 352 ...And the Earth Did Not Swallow Him (1995)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (350, 352, 2, 'Yoavkeidar9', 'Conjunction keyword trap. A boring, talk-heavy virus thriller has no thematic connection to a highly grounded, authentic migrant family drama.', '');

-- 18 $40,000 (1996) -> 24 $50,000 Climax Show, The (1975)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (18, 24, 3, 'Yoavkeidar9', 'Currency-based title metadata link. The poorly executed audio quality of the 90s indie heavily contrasts with the highly confusing, experimental 70s cinematic piece.', '');

-- 31 $pent (2000) -> 36 '15' (2002)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (31, 36, 4, 'Yoavkeidar9', 'Numerical and symbol title trap. A pretentious, overly deep acting drama offers a drastically different viewing experience from a raw, authentic Singaporean street film.', '');

-- 33 $windle (2002) -> 38 '38 (1987)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (33, 38, 2, 'Yoavkeidar9', 'Numeric sequence false positive. A characterless, plotless shootout action feature completely clashes with an atmospheric, deeply tense pre-WWII Austrian drama.', '');

-- 41 '49-'17 (1917) -> 44 '68 (1988)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (41, 44, 3, 'Yoavkeidar9', 'Era-based title overlap. A fascinating 1917 silent Western artifact provides immense historical value, whereas the 1988 film merely presents a superficial collection of hippy cliches.', '');

-- 49 '94 du bi dao zhi qing (1994) -> 50 '?' Motorist, The (1906)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (49, 50, 1, 'Yoavkeidar9', 'Numerical sorting trap. A fast-paced martial arts revenge film shares no cinematic DNA with a charming, plotless 1906 camera trick experiment.', '');

-- 51 'A' (1965) -> 52 'A' gai waak (1983)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (51, 52, 2, 'Yoavkeidar9', 'Alphabetical single-letter tag match. A brilliant, highly acclaimed short animation appeals to a completely different mindset than Jackie Chan''s world-class practical stunt action.', '');

-- 61 'As se hizo' - Torremolinos 73 (2003) -> 62 'Babicky dobjejte presne!' (1983)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (61, 62, 3, 'Yoavkeidar9', 'Sequential database sorting failure. A highly educational behind-the-scenes documentary is tonally the exact opposite of a bizarre, culturally specific Czech sci-fi comedy.', '');

-- 69 'Breaker' Morant (1980) -> 73 'burbs, The (1989)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (69, 73, 2, 'Yoavkeidar9', 'Apostrophe title connection. The deep, heavy anti-war themes of the Australian masterpiece highlight exactly how mismatched it is with a slapstick, simplistic suburban satire.', '');

-- 87 'Columbia' Winning the Cup (1899) -> 94 'Crocodile' Dundee II (1988)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (87, 94, 1, 'Yoavkeidar9', 'General entertainment tag mismatch. An 1899 archive sports clip lacks the narrative structure needed to satisfy a viewer looking for a highly formulaic 90s action comedy.', '');

-- 100 'E' (1981) -> 101 'El Chicko' - der Verdacht (1995)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (100, 101, 2, 'Yoavkeidar9', 'Letter/Title similarity match. A clever, relatable short film about crowds is fundamentally at odds with the confusing, structurally broken plot of the German thriller.', '');

-- 118 'Halloween' Unmasked 2000 (1999) -> 124 'Hyp-Nut-Tist', The (1935)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (118, 124, 3, 'Yoavkeidar9', 'Categorized together due to sequential IDs. A deep, informative documentary about horror production completely ignores the audience seeking perfect 1930s cartoon slapstick.', '');

-- 127 'If Only' Jim (1920) -> 133 'It's Alive!' (1969)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (127, 133, 2, 'Yoavkeidar9', 'Vintage cinema false positive. A heavily predictable, basic silent-era drama is structurally completely different from the unintentional humor of low-budget rubber monster suits.', '');

-- 137 'Je vous salue, Marie' (1985) -> 139 'J to tedy beru, sfe...!' (1977)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (137, 139, 3, 'Yoavkeidar9', 'Foreign language film trap. A weird, detached modern take on religion is highly inappropriate to recommend alongside a culturally specific, lighthearted Czech comedy.', '');

-- 141 'Kaash' (1987) -> 156 'Manos' the Hands of Fate (1966)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (141, 156, 1, 'Yoavkeidar9', 'International feature tag link. An overly melodramatic Bollywood tearjerker completely contrasts with the disastrous dubbing and poorly executed editing of the 1966 B-movie.', '');

-- 165 'Midnight Cowboy' Revisited (1994) -> 181 'N Sync: No Strings Attached (1999)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (165, 181, 2, 'Yoavkeidar9', 'Broad documentary metadata match. A brilliant breakdown of a controversial cinema classic offers profound context, whereas the teen pop concert video provides simplistic, energetic nostalgia.', '');

-- 184 'Ne gnstige Gelegenheit (1999) -> 186 'Neath Brooklyn Bridge (1942)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (184, 186, 4, 'Yoavkeidar9', 'Alphabetical sorting trap. A 1990s German film featuring failed attempts at sharp dialogue is heavily outclassed by the classic, albeit predictable, physical comedy routines of the 1940s.', '');

-- 188 'Neath the Arizona Skies (1934) -> 195 'Night, Mother (1986)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (188, 195, 2, 'Yoavkeidar9', 'Apostrophe metadata link. A low-budget, forgettable 1930s John Wayne adventure shares absolutely zero emotional resonance with a devastating, heavy stage drama adaptation.', '');

-- 196 'Non', ou A V Glria de Mandar (1990) -> 198 'O re (1989)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (196, 198, 3, 'Yoavkeidar9', 'European historical film mismatch. A visually dense, serious Portuguese military drama appeals to a vastly different viewer base than an Italian comedy where localized jokes fail to land.', '');

-- 209 'Pimpernel' Smith (1941) -> 220 'Rope' Unleashed (2001)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (209, 220, 4, 'Yoavkeidar9', 'British cinema metadata link. A 1940s anti-Nazi propaganda film with a capable lead has no thematic overlap with a highly educational documentary detailing Hitchcock''s camera setups.', '');

-- 223 'Round Midnight (1986) -> 230 'Salem's Lot (2004)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (223, 230, 2, 'Yoavkeidar9', 'Time-of-day keyword trap. A soulful, beautifully authentic tribute to 1950s jazz drastically contrasts with the creepy, atmospheric suspense of a Stephen King horror adaptation.', '');

-- 245 'Space: 1999' Documentary, The (1996) -> 257 'Teddy' Bears, The (1907)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (245, 257, 1, 'Yoavkeidar9', 'Archival footage false positive. A documentary showing practical sci-fi TV effects caters to adult film nerds, not the audience looking for a bizarre 1907 short featuring bear suits.', '');

-- 926 110 Stories (2002) -> 352 ...And the Earth Did Not Swallow Him (1995)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (926, 352, 10, 'Yoavkeidar9', 'Both are highly emotional, authentic cinematic pieces that focus intensely on the raw human element during times of immense societal or personal struggle.', '');

-- 676 100 Days (2001) -> 336 ...a pty jezdec je Strach (1964)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (676, 336, 10, 'Yoavkeidar9', 'These are deeply powerful, harrowing historical features that use an incredibly serious cinematic tone to document real-world tragedies and oppressive terror.', '');

-- 450 ...tick...tick...tick... (1970) -> 1048 13 Rue Madeleine (1947)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (450, 1048, 10, 'Yoavkeidar9', 'Both are highly tense, mid-century thrillers that build exceptional suspense by placing capable protagonists in increasingly dangerous, high-stakes institutional or wartime scenarios.', '');

-- 331 -30- (1959) -> 554 1 + 1 = 1.5 (1969)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (331, 554, 3, 'Yoavkeidar9', 'Punctuation and numbering metadata overlap. A fast-paced, highly engaging newspaper drama has absolutely no connection to an abstract, confusing art film.', '');

-- 428 ...Or Forever Hold Your Peace (2000) -> 156 'Manos' the Hands of Fate (1966)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (428, 156, 2, 'Yoavkeidar9', 'Categorized together as low-budget independent features, but the sharp, funny dialogue of the ensemble comedy drastically contrasts with the notoriously disastrous execution of the 1966 B-movie.', '');

-- 910 11 Harrowhouse (1974) -> 707 100 Mile Rule (2002)
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (910, 707, 4, 'Yoavkeidar9', 'Thriller and comedy metadata trap. A cool, intricate heist film appeals to viewers seeking smart plotting, which is completely lacking in the highly cynical, forced cheating humor of the latter.', '');


SELECT COUNT(*)
FROM movies_recommendations;

SELECT COUNT(DISTINCT base_movie_id, recommended_movie_id)
FROM movies_recommendations;