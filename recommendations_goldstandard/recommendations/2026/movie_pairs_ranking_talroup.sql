USE imdb_ijs;
-- Movie Pairs Ranking
-- GitHub: talroup

-- GOOD RECOMMENDATIONS
INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    644,       -- 10 Things I Hate About You
    66194,     -- Clueless
    10,
    'talroup',
    'A fan of 10 Things I Hate About You is very likely to enjoy Clueless, because it keeps the same sharp teen-comedy attitude, style, romantic payoff, and playful comfort.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    644,       -- 10 Things I Hate About You
    151616,    -- How to Lose a Guy in 10 Days
    10,
    'talroup',
    'This is a strong match because romantic conflict becomes comedy instead of cruelty, with confident leads and chemistry that makes the bickering fun.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    644,       -- 10 Things I Hate About You
    1038,      -- 13 Going On 30
    9,
    'talroup',
    '13 Going On 30 fits the same comfort space: charm, transformation, and a romantic lead who makes the fantasy feel sweet.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    644,       -- 10 Things I Hate About You
    263360,    -- Pretty Woman
    9,
    'talroup',
    'Different ages and settings, but both use big romantic gestures and charismatic leads to create a very rewatchable rom-com mood.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    644,       -- 10 Things I Hate About You
    46878,     -- Bridget Jones: The Edge of Reason
    8,
    'talroup',
    'Bridget Jones works here because it keeps awkward romance funny and warm, so the embarrassment feels charming rather than mean.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    66194,     -- Clueless
    1038,      -- 13 Going On 30
    10,
    'talroup',
    'The match works because both films are colorful, girly, and self-aware stories about becoming a better version of yourself while still having fun.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    66194,     -- Clueless
    264157,    -- Princess Diaries 2: Royal Engagement, The
    9,
    'talroup',
    'This is a natural pairing: each follows a lovable young woman learning social rules in a glossy, feel-good world full of fashion and romance.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    66194,     -- Clueless
    283410,    -- Runaway Bride
    8,
    'talroup',
    'Runaway Bride keeps the same light mainstream-comedy comfort, using romance for self-discovery without making the lesson feel heavy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    263360,    -- Pretty Woman
    283410,    -- Runaway Bride
    10,
    'talroup',
    'The Roberts-Gere chemistry makes both films feel like classic romantic comfort, and both depend on charm more than plot logic.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    263360,    -- Pretty Woman
    200864,    -- Maid in Manhattan
    10,
    'talroup',
    'Maid in Manhattan is a strong follow-up because it offers another modern Cinderella fantasy where class difference becomes part of the fun rather than painful social drama.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    263360,    -- Pretty Woman
    151616,    -- How to Lose a Guy in 10 Days
    9,
    'talroup',
    'This pairing works well because the two films share glossy mainstream romance, confident leads, comic misunderstanding, and a satisfying payoff.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    263360,    -- Pretty Woman
    62460,     -- Chocolat
    8,
    'talroup',
    'Both are romantic fantasies about pleasure and transformation, with a warm setting that makes the story feel inviting.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    151616,    -- How to Lose a Guy in 10 Days
    283410,    -- Runaway Bride
    9,
    'talroup',
    'Runaway Bride is a great match for me because commitment panic becomes funny, romantic, and easy to revisit rather than stressful.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    151616,    -- How to Lose a Guy in 10 Days
    46878,     -- Bridget Jones: The Edge of Reason
    9,
    'talroup',
    'Both enjoy messy dating behavior, but keep the heroine lovable enough that the chaos feels funny instead of stressful.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    151616,    -- How to Lose a Guy in 10 Days
    220805,    -- Mr. and Mrs. Smith
    8,
    'talroup',
    'Mr. and Mrs. Smith works best as a playful couple-driven follow-up, with flirting, competition, and attractive leads making the conflict entertaining.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    1038,      -- 13 Going On 30
    200864,    -- Maid in Manhattan
    9,
    'talroup',
    'Both offer very accessible romantic fantasy: big-city glamour, likable heroines, and a comforting belief in happy endings.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    1038,      -- 13 Going On 30
    264157,    -- Princess Diaries 2: Royal Engagement, The
    9,
    'talroup',
    'Princess Diaries 2 fits the same youthful, sweet, wish-fulfilling zone, with a heroine learning confidence inside a polished fantasy world.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    200864,    -- Maid in Manhattan
    283410,    -- Runaway Bride
    9,
    'talroup',
    'Both are gentle star-driven romances where the premise is familiar, but the warmth and casting make it work.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    200864,    -- Maid in Manhattan
    46878,     -- Bridget Jones: The Edge of Reason
    8,
    'talroup',
    'Bridget Jones fits this recommendation because it also follows a woman navigating love, embarrassment, and self-worth without becoming too heavy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    46878,     -- Bridget Jones: The Edge of Reason
    257744,    -- Playing by Heart
    8,
    'talroup',
    'Both treat romance as imperfect and human, with enough ensemble warmth to make the messiness feel comforting.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    46878,     -- Bridget Jones: The Edge of Reason
    118980,    -- Frankie and Johnny
    8,
    'talroup',
    'Both are grounded romances about imperfect adults trying to be vulnerable, and both keep the emotional tone warm.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    264157,    -- Princess Diaries 2: Royal Engagement, The
    190869,    -- Lilo & Stitch
    8,
    'talroup',
    'Lilo & Stitch works after Princess Diaries 2 because both are family-friendly comfort films where identity, loyalty, and chosen family matter more than serious conflict.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    264157,    -- Princess Diaries 2: Royal Engagement, The
    300230,    -- Shrek 2
    9,
    'talroup',
    'Both sequels use royal-family pressure as a comedy engine while keeping the romance light, colorful, and easy to enjoy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    62460,     -- Chocolat
    33492,     -- Bella Martha
    10,
    'talroup',
    'Food, routine, and quiet attraction give both films a cozy romantic texture that works especially well for me.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    62460,     -- Chocolat
    34104,     -- Benny & Joon
    9,
    'talroup',
    'Benny & Joon is a good match because it also turns oddball romance into tenderness, making eccentric characters feel lovable rather than alienating.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    62460,     -- Chocolat
    311428,    -- Splash
    8,
    'talroup',
    'Both are soft romantic fantasies where the unusual premise is treated with sweetness rather than cynicism.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    33492,     -- Bella Martha
    118980,    -- Frankie and Johnny
    8,
    'talroup',
    'Both are adult romances about guarded people slowly opening up, with a gentle pace and human warmth.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    33492,     -- Bella Martha
    257744,    -- Playing by Heart
    8,
    'talroup',
    'Both are relationship-focused films that prefer small emotional details over big dramatic shocks.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    220276,    -- Moulin Rouge!
    333856,    -- Titanic
    9,
    'talroup',
    'Both are lush tragic romances, but the spectacle supports the love story instead of replacing it.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    220276,    -- Moulin Rouge!
    31715,     -- Beaches
    8,
    'talroup',
    'Both use music and big feelings to make sadness more emotional than bleak, which is exactly the balance I need.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    220276,    -- Moulin Rouge!
    74259,     -- Cry-Baby
    8,
    'talroup',
    'Both are stylized musical romances with camp, color, and a playful performance style that makes them memorable.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    34104,     -- Benny & Joon
    97727,     -- Edward Scissorhands
    9,
    'talroup',
    'Both are gentle outsider romances where innocence and strangeness become touching rather than scary.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    34104,     -- Benny & Joon
    113506,    -- Finding Neverland
    9,
    'talroup',
    'Both rely on Depp''s soft, eccentric charm and keep sadness balanced with imagination and tenderness.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    34104,     -- Benny & Joon
    74259,     -- Cry-Baby
    8,
    'talroup',
    'Both use Johnny Depp''s offbeat persona in a playful romantic register rather than a dark thriller one.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    59578,     -- Charlie and the Chocolate Factory
    300229,    -- Shrek
    9,
    'talroup',
    'Shrek fits this Charlie and the Chocolate Factory recommendation because it is another colorful fantasy comedy that stays weird in a fun, heartfelt way.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    59578,     -- Charlie and the Chocolate Factory
    300230,    -- Shrek 2
    8,
    'talroup',
    'Both are bright, joke-filled fantasies that use strange worlds for fun rather than for heaviness.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    59578,     -- Charlie and the Chocolate Factory
    149287,    -- Hook
    8,
    'talroup',
    'Both are childlike fantasies about returning to imagination, with production design that makes the world feel magical.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    59578,     -- Charlie and the Chocolate Factory
    96593,     -- E.T. the Extra-Terrestrial
    8,
    'talroup',
    'Both build wonder around a childlike point of view and keep the fantasy gentle enough for an easy rewatch.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    96593,     -- E.T. the Extra-Terrestrial
    65811,     -- Close Encounters of the Third Kind
    8,
    'talroup',
    'Close Encounters is a good match because it shares Spielberg''s alien wonder and keeps the science fiction humane instead of frightening.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    96593,     -- E.T. the Extra-Terrestrial
    149287,    -- Hook
    8,
    'talroup',
    'Both have Spielberg''s soft family feeling and turn fantasy into something emotionally warm instead of threatening.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    96593,     -- E.T. the Extra-Terrestrial
    190869,    -- Lilo & Stitch
    10,
    'talroup',
    'Lilo & Stitch is especially strong here because the alien-friendship story also centers on family, loyalty, and a creature who becomes lovable.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    328272,    -- Terminal, The
    56871,     -- Catch Me If You Can
    9,
    'talroup',
    'Both make unusual true-ish situations feel light and human, with a playful rhythm rather than a heavy crime mood.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    328272,    -- Terminal, The
    311428,    -- Splash
    8,
    'talroup',
    'Both let Tom Hanks play kindness and awkwardness in a way that makes an odd premise feel genuinely sweet.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    328272,    -- Terminal, The
    12744,     -- Always
    6,
    'talroup',
    'Both are gentle, human stories that move slowly but still keep a soft emotional glow.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    333856,    -- Titanic
    31715,     -- Beaches
    8,
    'talroup',
    'Both are emotional crowd-pleasers where the sadness works because the relationships feel sincere and memorable.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    333856,    -- Titanic
    12744,     -- Always
    8,
    'talroup',
    'Both combine romance with loss, but they hold onto tenderness instead of becoming purely depressing.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    149287,    -- Hook
    113506,    -- Finding Neverland
    10,
    'talroup',
    'Both are Peter Pan-adjacent stories about imagination, adulthood, and emotional softness, making them very natural companions.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    149287,    -- Hook
    131885,    -- Goonies, The
    9,
    'talroup',
    'Both have messy adventure energy, childlike wonder, and enough humor to make danger feel safe.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    149287,    -- Hook
    139657,    -- Harry Potter and the Sorcerer's Stone
    8,
    'talroup',
    'Both invite the viewer into a magical world with a cozy sense of discovery rather than overwhelming darkness.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    131885,    -- Goonies, The
    312150,    -- Spy Kids
    10,
    'talroup',
    'Both are kid-adventure films where gadgets, teamwork, and silliness matter more than polished seriousness.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    131885,    -- Goonies, The
    170721,    -- Jungle Book 2, The
    6,
    'talroup',
    'Both are simple, upbeat adventures that feel easy and youthful, even if one is louder and one is more musical.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    113506,    -- Finding Neverland
    97727,     -- Edward Scissorhands
    8,
    'talroup',
    'Both are bittersweet fantasies about fragile outsiders, but each keeps enough tenderness to avoid feeling cold.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    113506,    -- Finding Neverland
    12744,     -- Always
    8,
    'talroup',
    'Both use grief and imagination gently, creating sentiment without becoming too harsh for me.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    139657,    -- Harry Potter and the Sorcerer's Stone
    139650,    -- Harry Potter and the Chamber of Secrets
    10,
    'talroup',
    'The first two Harry Potter films share the same cozy Hogwarts foundation, childlike discovery, and accessible mystery tone.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    139650,    -- Harry Potter and the Chamber of Secrets
    139655,    -- Harry Potter and the Prisoner of Azkaban
    9,
    'talroup',
    'The third film gets moodier, but it still grows naturally from the magical comfort and friendship of the second.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    139655,    -- Harry Potter and the Prisoner of Azkaban
    139652,    -- Harry Potter and the Goblet of Fire
    9,
    'talroup',
    'Both keep the school-year structure while adding higher stakes, so the darker turn still feels connected and watchable.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    139652,    -- Harry Potter and the Goblet of Fire
    139653,    -- Harry Potter and the Half-Blood Prince
    8,
    'talroup',
    'Both mix danger with awkward teen romance, which helps the darker plot remain emotionally accessible.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    139657,    -- Harry Potter and the Sorcerer's Stone
    194497,    -- Lord of the Rings: The Fellowship of the Ring, The
    8,
    'talroup',
    'Both are gateway fantasy adventures that introduce a beloved world, friendships, and a clear sense of wonder.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    139655,    -- Harry Potter and the Prisoner of Azkaban
    194497,    -- Lord of the Rings: The Fellowship of the Ring, The
    8,
    'talroup',
    'Both have fantasy darkness balanced by friendship and visual magic, making the epic tone still approachable.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    256632,    -- Pirates of the Caribbean: The Curse of the Black Pearl
    256631,    -- Pirates of the Caribbean 2
    10,
    'talroup',
    'The sequel keeps Jack Sparrow, Will and Elizabeth, and the playful pirate energy that made the first film fun.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    256632,    -- Pirates of the Caribbean: The Curse of the Black Pearl
    300229,    -- Shrek
    8,
    'talroup',
    'Shrek fits after Pirates because both turn familiar fantasy-adventure worlds into something funny, romantic, and less serious than expected.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    256632,    -- Pirates of the Caribbean: The Curse of the Black Pearl
    159172,    -- Indiana Jones and the Last Crusade
    8,
    'talroup',
    'Both are adventure films that balance danger with jokes, charm, and a hero who never feels too grim.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    256632,    -- Pirates of the Caribbean: The Curse of the Black Pearl
    271095,    -- Raiders of the Lost Ark
    8,
    'talroup',
    'Both are classic crowd-pleasing adventures with iconic heroes, set pieces, and a light sense of fun.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    256631,    -- Pirates of the Caribbean 2
    300230,    -- Shrek 2
    8,
    'talroup',
    'Both are bigger sequels that keep the comic romance alive while expanding the fantasy world around it.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    238072,    -- Ocean's Eleven
    238073,    -- Ocean's Twelve
    8,
    'talroup',
    'The sequel is more smug, but it still keeps the stylish ensemble and movie-star ease that make the first enjoyable.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    238072,    -- Ocean's Eleven
    56871,     -- Catch Me If You Can
    9,
    'talroup',
    'Both make crime feel playful and stylish instead of brutal, with charm doing more work than violence.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    238072,    -- Ocean's Eleven
    208245,    -- Maverick
    8,
    'talroup',
    'Both are relaxed con-game entertainments where charm, tricks, and banter matter more than real danger.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    238072,    -- Ocean's Eleven
    220805,    -- Mr. and Mrs. Smith
    8,
    'talroup',
    'Both use glamour, banter, and stars to make crime/action feel sleek and fun rather than emotionally heavy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    210739,    -- Men in Black
    312150,    -- Spy Kids
    8,
    'talroup',
    'Both turn secret organizations, gadgets, and action into bright mainstream comedy rather than hard sci-fi.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    210739,    -- Men in Black
    158999,    -- Independence Day
    6,
    'talroup',
    'Both are accessible 1990s alien blockbusters, and both keep the tone broad, funny, and crowd-friendly.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    210739,    -- Men in Black
    398232,    -- Mork & Mindy
    6,
    'talroup',
    'Both use aliens mainly as a comedy setup, so the weirdness stays playful rather than frightening.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    312150,    -- Spy Kids
    312151,    -- Spy Kids 2: Island of Lost Dreams
    9,
    'talroup',
    'The sequel keeps the child-led spy fantasy, bright gadgets, and harmless silliness that make the first one work.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    312151,    -- Spy Kids 2: Island of Lost Dreams
    312152,    -- Spy Kids 3-D: Game Over
    8,
    'talroup',
    'Both are goofy family spy sequels that embrace ridiculousness instead of trying to become serious action films.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    300229,    -- Shrek
    300230,    -- Shrek 2
    10,
    'talroup',
    'The second film keeps the fairy-tale jokes and Fiona-Shrek romance while adding even more family comedy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    300229,    -- Shrek
    300233,    -- Shrek 4-D
    8,
    'talroup',
    'Both use the same fairy-tale parody world and the same quick comic comfort, even if one is much smaller.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    300230,    -- Shrek 2
    300233,    -- Shrek 4-D
    8,
    'talroup',
    'Both continue the Shrek universe as light comic extensions rather than dramatic reinventions.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    337166,    -- Toy Story
    190869,    -- Lilo & Stitch
    10,
    'talroup',
    'Lilo & Stitch is a natural match for Toy Story because both are animated comfort films about loyalty, friendship, and imperfect little families finding each other.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    337166,    -- Toy Story
    300229,    -- Shrek
    9,
    'talroup',
    'Both are animated films with jokes for adults and a surprisingly sincere emotional center.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    337166,    -- Toy Story
    131885,    -- Goonies, The
    8,
    'talroup',
    'Both focus on group adventure, friendship, and childlike loyalty, with danger kept safely fun.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    337166,    -- Toy Story
    170721,    -- Jungle Book 2, The
    6,
    'talroup',
    'Both are simple, warm family adventures where the emotional stakes stay light and easy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    170721,    -- Jungle Book 2, The
    190869,    -- Lilo & Stitch
    8,
    'talroup',
    'Both are bright, family-friendly stories with music, movement, and a forgiving emotional tone.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    291495,    -- Scrooged
    398232,    -- Mork & Mindy
    6,
    'talroup',
    'Both rely on comic weirdness and a big central personality, with enough heart to soften the harsher jokes.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    311428,    -- Splash
    257744,    -- Playing by Heart
    8,
    'talroup',
    'Both treat romance warmly and let charm carry the story more than plot complexity.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    311428,    -- Splash
    96593,     -- E.T. the Extra-Terrestrial
    8,
    'talroup',
    'Both place a gentle non-human visitor inside ordinary life and make the fantasy feel sweet rather than scary.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    31715,     -- Beaches
    257744,    -- Playing by Heart
    8,
    'talroup',
    'Both are relationship-centered dramas that give emotional moments a warm, human texture.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    74259,     -- Cry-Baby
    97727,     -- Edward Scissorhands
    8,
    'talroup',
    'Both are stylized outsider romances with Johnny Depp, campy surfaces, and a sincere lonely heart underneath.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    74259,     -- Cry-Baby
    59578,     -- Charlie and the Chocolate Factory
    7,
    'talroup',
    'Both are colorful Depp vehicles where exaggeration and weirdness are part of the fun.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    97727,     -- Edward Scissorhands
    59578,     -- Charlie and the Chocolate Factory
    7,
    'talroup',
    'Both are Depp-led fantasies where odd visual worlds still leave room for sweetness and childlike wonder.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    12744,     -- Always
    65811,     -- Close Encounters of the Third Kind
    7,
    'talroup',
    'Both are Spielberg stories with awe, longing, and a sincere old-fashioned emotional tone.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    10702,     -- Alice Doesn't Live Here Anymore
    118980,    -- Frankie and Johnny
    8,
    'talroup',
    'Both are grounded adult stories about starting over, loneliness, and finding warmth in ordinary life.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    208245,    -- Maverick
    379327,    -- Adventures of Robin Hood, The
    7,
    'talroup',
    'Both are old-fashioned adventures where charm and playfulness matter more than grit.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    280270,    -- Rocky
    280281,    -- Rocky II
    8,
    'talroup',
    'The first two Rocky films work as one emotional underdog arc, with character warmth balancing the boxing.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    280281,    -- Rocky II
    280282,    -- Rocky III
    7,
    'talroup',
    'The third film is broader, but it keeps Rocky''s familiar underdog heart and easy sports-movie structure.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    319602,    -- Superman
    319613,    -- Superman II
    8,
    'talroup',
    'Both keep the superhero story sincere, romantic, and bright rather than cynical or overly grim.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    311037,    -- Spider-Man
    311038,    -- Spider-Man 2
    10,
    'talroup',
    'Spider-Man 2 deepens the same awkward, romantic, heroic tone that makes the first film so accessible.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    30976,     -- Batman: Mask of the Phantasm
    381392,    -- Batman Beyond
    7,
    'talroup',
    'Both are animated Batman stories with emotional clarity, stylish action, and less exhausting darkness than the grittier films.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    142491,    -- Hellboy
    142492,    -- Hellboy 2
    8,
    'talroup',
    'Both make a monster hero feel surprisingly human, and the sequel adds more fantasy color to the same world.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    391006,    -- Happy Days
    395271,    -- Laverne & Shirley
    9,
    'talroup',
    'Both are nostalgic sitcom comforts with warm characters, simple humor, and a relaxed old-TV feeling.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    390691,    -- Growing Pains
    400853,    -- Parenthood
    8,
    'talroup',
    'Both are family-centered comfort stories where messiness is treated with humor and affection.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    391006,    -- Happy Days
    398232,    -- Mork & Mindy
    8,
    'talroup',
    'Both have classic sitcom warmth, big personalities, and a harmless kind of silliness that I genuinely enjoy.',
    NULL
);


-- NOT GOOD YET REASONABLE RECOMMENDATIONS
INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    644,       -- 10 Things I Hate About You
    30686,     -- Basketball Diaries, The
    2,
    'talroup',
    'While both are 1990s teen-centered films, it is a bad recommendation since Basketball Diaries turns youth into a bleak addiction spiral instead of playful romance.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    644,       -- 10 Things I Hate About You
    112290,    -- Fight Club
    1,
    'talroup',
    'Despite the shared rebellious 1990s attitude, it is a bad recommendation since Fight Club is cynical and aggressive rather than warm or romantic.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    644,       -- 10 Things I Hate About You
    32707,     -- Before Night Falls
    3,
    'talroup',
    'Though both value strong outsiders, it is a bad recommendation since Before Night Falls is an emotionally painful biographical drama rather than a comfort watch.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    263360,    -- Pretty Woman
    8183,      -- Age of Innocence, The
    5,
    'talroup',
    'Though both are class-conscious romances, this is not a good recommendation since Age of Innocence is restrained and emotionally muted instead of sparkling and wish-fulfilling.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    263360,    -- Pretty Woman
    69812,     -- Conspiracy Theory
    3,
    'talroup',
    'Though Julia Roberts is part of the appeal in both, it is a bad recommendation since the paranoia-thriller mood overwhelms any romantic comfort.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    263360,    -- Pretty Woman
    350424,    -- Vanilla Sky
    2,
    'talroup',
    'At first glance, the attractive stars and romance make this pair look reasonable, but it is a bad recommendation since Vanilla Sky turns desire into confusion and unease rather than fantasy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    151616,    -- How to Lose a Guy in 10 Days
    350424,    -- Vanilla Sky
    2,
    'talroup',
    'Though both use romance as a central hook, it is a bad recommendation since Vanilla Sky becomes mind-bending and cold instead of funny and flirtatious.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    151616,    -- How to Lose a Guy in 10 Days
    41518,     -- Blow
    2,
    'talroup',
    'While both have glossy early-2000s star power, it is a bad recommendation since Blow is a draining crime rise-and-fall story.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    66194,     -- Clueless
    30686,     -- Basketball Diaries, The
    2,
    'talroup',
    'Though both are 1990s youth films, it is a bad recommendation since Basketball Diaries replaces style and comedy with addiction and despair.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    66194,     -- Clueless
    209158,    -- Mean Streets
    2,
    'talroup',
    'Though both are urban character films with strong personalities, it is a bad recommendation since Mean Streets is rough crime drama with none of the cozy teen energy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    300229,    -- Shrek
    194497,    -- Lord of the Rings: The Fellowship of the Ring, The
    5,
    'talroup',
    'Though both are fantasy journeys with creatures and kingdoms, this is not a good recommendation since Fellowship is earnest and epic rather than comic and cozy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    300229,    -- Shrek
    304862,    -- Sleepy Hollow
    2,
    'talroup',
    'Despite the fairy-tale-like visuals, it is a bad recommendation since Sleepy Hollow is a gothic murder mystery rather than playful fantasy romance.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    300229,    -- Shrek
    142491,    -- Hellboy
    4,
    'talroup',
    'While both feature an unconventional creature hero, it is a bad recommendation since Hellboy leans into darker monster action instead of fairy-tale comedy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    337166,    -- Toy Story
    21213,     -- Artificial Intelligence: AI
    2,
    'talroup',
    'The pairing makes sense on paper because both involve non-human figures longing for love, but it is a bad recommendation since A.I. is melancholy and unsettling rather than warm and funny.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    337166,    -- Toy Story
    40199,     -- Blade Runner
    2,
    'talroup',
    'Although both can be read as stories about artificial beings, it is a bad recommendation since Blade Runner is lonely, cold, and philosophically heavy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    1038,      -- 13 Going On 30
    7842,      -- After Hours
    3,
    'talroup',
    'Though both follow adults through strange urban situations, it is a bad recommendation since After Hours turns the night into anxiety instead of feel-good transformation.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    1038,      -- 13 Going On 30
    247579,    -- Panic Room
    2,
    'talroup',
    'Despite the shared confined-pressure setup, it is a bad recommendation since Panic Room is pure stress rather than charm.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    200864,    -- Maid in Manhattan
    8183,      -- Age of Innocence, The
    5,
    'talroup',
    'Though both deal with status and forbidden attraction, this is not a good recommendation since Age of Innocence is too distant and subdued for what I look for in a romantic comedy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    283410,    -- Runaway Bride
    69812,     -- Conspiracy Theory
    3,
    'talroup',
    'Though both use Julia Roberts in a romantic orbit, it is a bad recommendation since Conspiracy Theory is suspicious and tense rather than breezy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    46878,     -- Bridget Jones: The Edge of Reason
    8183,      -- Age of Innocence, The
    4,
    'talroup',
    'Though both include social rules around love, it is a bad recommendation since Age of Innocence removes the humor and self-aware messiness that make Bridget work.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    264157,    -- Princess Diaries 2: Royal Engagement, The
    340652,    -- Troy
    3,
    'talroup',
    'While both include royalty, public duty, and romance, it is a bad recommendation since Troy is a solemn war epic rather than a girly comfort fantasy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    190869,    -- Lilo & Stitch
    10830,     -- Alien
    1,
    'talroup',
    'Though the alien premise connects them, it is a bad recommendation since Alien turns the visitor idea into horror and confinement.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    190869,    -- Lilo & Stitch
    359297,    -- War of the Worlds
    2,
    'talroup',
    'At first glance, family and alien contact connect them, but it is a bad recommendation since War of the Worlds is panic-driven instead of affectionate.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    300230,    -- Shrek 2
    30952,     -- Batman & Robin
    3,
    'talroup',
    'Though both are colorful franchise sequels with broad jokes, it is a bad recommendation since Batman & Robin feels loud and hollow rather than sweet.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    62460,     -- Chocolat
    120506,    -- From Hell
    2,
    'talroup',
    'Despite Johnny Depp and period European settings, it is a bad recommendation since From Hell is murder-focused and grim instead of cozy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    62460,     -- Chocolat
    233058,    -- Ninth Gate, The
    2,
    'talroup',
    'Though both use Depp in an old-world atmosphere, it is a bad recommendation since Ninth Gate is occult, cold, and joyless.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    220276,    -- Moulin Rouge!
    123849,    -- Gangs of New York
    3,
    'talroup',
    'While both are stylized period spectacles, it is a bad recommendation since Gangs of New York is brutal and hostile rather than romantic and musical.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    220276,    -- Moulin Rouge!
    185628,    -- Last Samurai, The
    5,
    'talroup',
    'Though both are large-scale period films with romance and sacrifice, this is not a good recommendation since Last Samurai is too solemn and battle-driven.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    34104,     -- Benny & Joon
    41518,     -- Blow
    2,
    'talroup',
    'Despite Johnny Depp''s charisma in both, it is a bad recommendation since Blow uses that charisma inside a draining drug-crime story.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    34104,     -- Benny & Joon
    292671,    -- Secret Window
    2,
    'talroup',
    'Though both feature Depp as an isolated eccentric, it is a bad recommendation since Secret Window turns eccentricity sour and threatening.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    59578,     -- Charlie and the Chocolate Factory
    240327,    -- Omen, The
    1,
    'talroup',
    'While both center on a strange childlike world, it is a bad recommendation since The Omen is supernatural horror with no playful comfort.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    59578,     -- Charlie and the Chocolate Factory
    259826,    -- Poltergeist
    2,
    'talroup',
    'Though both involve children and supernatural spectacle, it is a bad recommendation since Poltergeist is a haunted-house scare experience.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    96593,     -- E.T. the Extra-Terrestrial
    10830,     -- Alien
    1,
    'talroup',
    'The shared alien label makes this look plausible, but it is a bad recommendation since Alien replaces wonder and friendship with survival horror.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    96593,     -- E.T. the Extra-Terrestrial
    359297,    -- War of the Worlds
    2,
    'talroup',
    'Despite Spielberg and alien contact, it is a bad recommendation since War of the Worlds is fear and disaster rather than gentle connection.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    328272,    -- Terminal, The
    247579,    -- Panic Room
    2,
    'talroup',
    'Though both trap characters inside one main location, it is a bad recommendation since Panic Room turns confinement into constant threat.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    328272,    -- Terminal, The
    123435,    -- Game, The
    3,
    'talroup',
    'Though both follow a man trapped in an absurd situation, it is a bad recommendation since The Game feels manipulative and unpleasant rather than kind.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    333856,    -- Titanic
    289109,    -- Saving Private Ryan
    1,
    'talroup',
    'Though both are acclaimed 1990s historical epics, it is a bad recommendation since Saving Private Ryan is dominated by combat realism rather than romance.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    333856,    -- Titanic
    290070,    -- Schindler's List
    1,
    'talroup',
    'Though both are acclaimed historical dramas, it is a bad recommendation since Schindler''s List is important but far too devastating for me to enjoy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    333856,    -- Titanic
    46169,     -- Braveheart
    3,
    'talroup',
    'Though both mix epic scale, romance, and tragedy, it is a bad recommendation since Braveheart lets battle and brutality overpower the romantic pull.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    149287,    -- Hook
    165961,    -- Jaws
    3,
    'talroup',
    'Despite the Spielberg adventure connection, it is a bad recommendation since Jaws is built on dread rather than nostalgic softness.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    149287,    -- Hook
    94741,     -- Duel (1971/I)
    2,
    'talroup',
    'Though both are early Spielberg tension machines, it is a bad recommendation since Duel is all menace and none of Hook''s childlike comfort.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    131885,    -- Goonies, The
    159175,    -- Indiana Jones and the Temple of Doom
    4,
    'talroup',
    'Though both are adventure films with kids and set pieces, this remains a weak recommendation since Temple of Doom is harsher and less safe-feeling.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    131885,    -- Goonies, The
    73574,     -- Critters 3
    2,
    'talroup',
    'Though both involve young people facing creature chaos, it is a bad recommendation since Critters 3 leans into goofy horror instead of warm adventure.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    113506,    -- Finding Neverland
    30686,     -- Basketball Diaries, The
    2,
    'talroup',
    'Though both are sensitive dramas with young emotional pain, it is a bad recommendation since Basketball Diaries becomes far too bleak and punishing.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    139657,    -- Harry Potter and the Sorcerer's Stone
    240327,    -- Omen, The
    1,
    'talroup',
    'At first glance, children and supernatural destiny connect them, but it is a bad recommendation since The Omen is demonic horror rather than magical comfort.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    139657,    -- Harry Potter and the Sorcerer's Stone
    313474,    -- Star Wars: Episode I - The Phantom Menace
    5,
    'talroup',
    'Though both launch large fantasy franchises with young heroes, this is not a good recommendation since Phantom Menace feels colder and less emotionally cozy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    139650,    -- Harry Potter and the Chamber of Secrets
    304862,    -- Sleepy Hollow
    2,
    'talroup',
    'Though both contain dark mysteries and gothic visuals, it is a bad recommendation since Sleepy Hollow is murder-driven rather than school-adventure comfort.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    139652,    -- Harry Potter and the Goblet of Fire
    30959,     -- Batman Begins
    4,
    'talroup',
    'Though both show a hero entering a darker chapter, it is a bad recommendation since Batman Begins is grittier and less magical-feeling.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    139654,    -- Harry Potter and the Order of the Phoenix
    61751,     -- Children of Men, The
    2,
    'talroup',
    'Though both involve resistance against a bleak system, it is a bad recommendation since Children of Men is much more hopeless and emotionally exhausting.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    256632,    -- Pirates of the Caribbean: The Curse of the Black Pearl
    39551,     -- Black Hawk Down
    1,
    'talroup',
    'While both include action and large-scale danger, it is a bad recommendation since Black Hawk Down is combat intensity with none of the playful pirate charm.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    256632,    -- Pirates of the Caribbean: The Curse of the Black Pearl
    129185,    -- Gladiator
    5,
    'talroup',
    'Though both are large-scale adventure films with heroic set pieces, this is not a good recommendation since Gladiator is far more solemn and battle-centered.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    256632,    -- Pirates of the Caribbean: The Curse of the Black Pearl
    189403,    -- Licence to Kill
    3,
    'talroup',
    'Though both are stylish action adventures, it is a bad recommendation since Licence to Kill is revenge-driven and harsher than the playful pirate tone.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    238072,    -- Ocean's Eleven
    56304,     -- Casino
    2,
    'talroup',
    'Despite the money, glamour, and crime connection, it is a bad recommendation since Casino is exhausting and brutal rather than breezy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    238072,    -- Ocean's Eleven
    131780,    -- Goodfellas
    2,
    'talroup',
    'Though both are crime films with style, it is a bad recommendation since Goodfellas is violent gangster immersion rather than sunny ensemble fun.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    238072,    -- Ocean's Eleven
    210511,    -- Memento
    2,
    'talroup',
    'Although both are clever crime puzzles, it is a bad recommendation since Memento is tense, fragmented, and not emotionally relaxing.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    56871,     -- Catch Me If You Can
    25192,     -- Aviator, The
    4,
    'talroup',
    'Though both feature DiCaprio in biographical rise-and-fall territory, it is a bad recommendation since The Aviator feels long and dutiful rather than playful.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    56871,     -- Catch Me If You Can
    30686,     -- Basketball Diaries, The
    2,
    'talroup',
    'Though both center on DiCaprio as a young man in trouble, it is a bad recommendation since Basketball Diaries is bleak instead of charming.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    210739,    -- Men in Black
    40199,     -- Blade Runner
    2,
    'talroup',
    'While both are science fiction with non-human beings, it is a bad recommendation since Blade Runner is cold, lonely, and philosophical rather than quick and funny.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    210739,    -- Men in Black
    256839,    -- Pitch Black
    2,
    'talroup',
    'Though both include aliens and action, it is a bad recommendation since Pitch Black is survival tension instead of mainstream comic adventure.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    312150,    -- Spy Kids
    215879,    -- Mission: Impossible II
    4,
    'talroup',
    'Despite the spies-and-gadgets link, it is a bad recommendation since Mission: Impossible II cares more about glossy action than playful personality.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    312150,    -- Spy Kids
    130945,    -- GoldenEye
    4,
    'talroup',
    'Though both are spy adventures with gadgets, it is a bad recommendation since GoldenEye is more adult, colder, and less silly.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    291495,    -- Scrooged
    54209,     -- Cape Fear
    1,
    'talroup',
    'Though both feature characters haunted or punished by past behavior, it is a bad recommendation since Cape Fear is threatening rather than redemptive comedy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    311428,    -- Splash
    22651,     -- Astronaut's Wife, The
    2,
    'talroup',
    'Though both involve marriage touched by the otherworldly, it is a bad recommendation since Astronaut''s Wife turns intimacy into alien paranoia.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    311428,    -- Splash
    350424,    -- Vanilla Sky
    2,
    'talroup',
    'Though both involve impossible romance and fantasy elements, it is a bad recommendation since Vanilla Sky feels cold, confusing, and emotionally unsafe.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    31715,     -- Beaches
    67395,     -- Color Purple, The
    4,
    'talroup',
    'Though both are emotional female-centered dramas, this remains a weak recommendation since The Color Purple is much heavier than the comfort level here.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    31715,     -- Beaches
    14477,     -- Amistad
    2,
    'talroup',
    'Though both ask for a serious emotional response, it is a bad recommendation since Amistad is historical legal trauma rather than friendship melodrama.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    97727,     -- Edward Scissorhands
    304862,    -- Sleepy Hollow
    3,
    'talroup',
    'Even though both are Burton-Depp gothic stories, it is a bad recommendation since Sleepy Hollow moves toward murder mystery instead of tender outsider romance.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    97727,     -- Edward Scissorhands
    120506,    -- From Hell
    2,
    'talroup',
    'Though both use Depp in a stylized dark world, it is a bad recommendation since From Hell is grim investigation rather than romantic sadness.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    257744,    -- Playing by Heart
    267038,    -- Pulp Fiction
    2,
    'talroup',
    'Though both are ensemble films with intersecting stories, it is a bad recommendation since Pulp Fiction is cynical crime coolness rather than relationship warmth.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    118980,    -- Frankie and Johnny
    270971,    -- Raging Bull
    2,
    'talroup',
    'Though both are adult stories about difficult men, it is a bad recommendation since Raging Bull is punishing self-destruction rather than healing romance.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    12744,     -- Always
    289109,    -- Saving Private Ryan
    1,
    'talroup',
    'Despite Spielberg and sacrifice, it is a bad recommendation since Saving Private Ryan replaces soft sentiment with overwhelming battlefield realism.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    10702,     -- Alice Doesn't Live Here Anymore
    326155,    -- Taxi Driver
    2,
    'talroup',
    'Though both are 1970s Scorsese character studies, it is a bad recommendation since Taxi Driver is oppressive isolation rather than rebuilding life.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    208245,    -- Maverick
    67388,     -- Color of Money, The
    4,
    'talroup',
    'While both involve gambling, hustling, and competitive charm, it is a bad recommendation since The Color of Money is more serious and less playful.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    280270,    -- Rocky
    270971,    -- Raging Bull
    2,
    'talroup',
    'Though both are boxing classics, it is a bad recommendation since Raging Bull is angry self-destruction while Rocky''s appeal is underdog warmth.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    280270,    -- Rocky
    280305,    -- Rocky V
    3,
    'talroup',
    'Though it is the same franchise, it is a bad recommendation since Rocky V loses much of the inspiring simplicity that made the first work.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    280282,    -- Rocky III
    280284,    -- Rocky IV
    4,
    'talroup',
    'Though both are broad sports sequels, it is a bad recommendation since Rocky IV becomes more cartoonish and emotionally thinner.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    319602,    -- Superman
    30959,     -- Batman Begins
    4,
    'talroup',
    'Although both are superhero origin touchstones, it is a bad recommendation since Batman Begins is gritty and heavy compared with Superman''s bright sincerity.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    319613,    -- Superman II
    30952,     -- Batman & Robin
    3,
    'talroup',
    'Though both are colorful superhero sequels, it is a bad recommendation since Batman & Robin is noisy without Superman II''s sincere romance.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    311037,    -- Spider-Man
    311040,    -- Spider-Man 3
    4,
    'talroup',
    'Even though it is the same character and franchise, it is a bad recommendation since Spider-Man 3 loses the clean emotional balance of the first two.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    311038,    -- Spider-Man 2
    30959,     -- Batman Begins
    4,
    'talroup',
    'Though both are respected superhero films from the same era, it is a bad recommendation since Batman Begins is colder and less romantically accessible.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    30965,     -- Batman Forever
    30952,     -- Batman & Robin
    3,
    'talroup',
    'Though both are neon Batman films, it is a bad recommendation since Batman & Robin pushes the camp into exhausting shallowness.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    30976,     -- Batman: Mask of the Phantasm
    30959,     -- Batman Begins
    4,
    'talroup',
    'Though both explore Batman''s emotional origin, it is a bad recommendation since Batman Begins is much grittier and less compactly emotional.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    142491,    -- Hellboy
    350189,    -- Vampire Hunter D
    2,
    'talroup',
    'Though both are supernatural action stories with monster worlds, it is a bad recommendation since Vampire Hunter D feels colder and more joyless.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    379327,    -- Adventures of Robin Hood, The
    46169,     -- Braveheart
    3,
    'talroup',
    'Though both are historical hero stories, it is a bad recommendation since Braveheart is far more violent and solemn.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    379331,    -- Adventures of Sherlock Holmes, The
    291698,    -- Se7en
    1,
    'talroup',
    'The investigation link makes sense, but it is a bad recommendation since Se7en turns mystery into oppressive dread and an ending I simply cannot get past.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    372733,    -- Young Sherlock Holmes
    210511,    -- Memento
    2,
    'talroup',
    'Though both are puzzle-driven mysteries, it is a bad recommendation since Memento is cold, fragmented, and stressful rather than young-adventure fun.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    1121,      -- 1492: Conquest of Paradise
    14477,     -- Amistad
    4,
    'talroup',
    'Though both are historical films about exploration and injustice, it is a bad recommendation since Amistad is even heavier and less relaxing.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    1390,      -- 1941
    289109,    -- Saving Private Ryan
    1,
    'talroup',
    'Though both are Spielberg films connected to World War II, it is a bad recommendation since Saving Private Ryan is brutal realism rather than chaotic comedy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    7842,      -- After Hours
    47130,     -- Bringing Out the Dead
    3,
    'talroup',
    'Though both are Scorsese night-in-New-York stories, it is a bad recommendation since Bringing Out the Dead is more draining than comic anxiety.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    20253,     -- Arizona Dream
    233058,    -- Ninth Gate, The
    2,
    'talroup',
    'Though both use strange Johnny Depp energy, it is a bad recommendation since Ninth Gate turns oddness into cold occult dread.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    21213,     -- Artificial Intelligence: AI
    290070,    -- Schindler's List
    1,
    'talroup',
    'Although both are serious Spielberg films about humanity and suffering, it is a bad recommendation since Schindler''s List is far beyond my emotional comfort zone.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    25192,     -- Aviator, The
    56304,     -- Casino
    3,
    'talroup',
    'Though both are long Scorsese studies of ambition and glamour, it is a bad recommendation since Casino''s brutality makes it even less personally enjoyable.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    39551,     -- Black Hawk Down
    289109,    -- Saving Private Ryan
    1,
    'talroup',
    'Though both are intense war films, it is a bad recommendation since it doubles down on the exact combat realism I actively avoid.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    40199,     -- Blade Runner
    214755,    -- Minority Report
    4,
    'talroup',
    'Though both are intelligent science fiction, it is a bad recommendation since Minority Report still feels more thriller than comfort, and Blade Runner is even colder.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    56304,     -- Casino
    131780,    -- Goodfellas
    2,
    'talroup',
    'Despite being obvious Scorsese crime companions, it is a bad recommendation since both intensify the brutal gangster mood I dislike.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    61751,     -- Children of Men, The
    214755,    -- Minority Report
    4,
    'talroup',
    'Though both are dystopian thrillers, it is a bad recommendation since Children of Men is much bleaker and more emotionally punishing.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    85871,     -- Diamonds Are Forever
    189403,    -- Licence to Kill
    3,
    'talroup',
    'Though both are Bond films, it is a bad recommendation since Licence to Kill removes the playful spy tone and becomes revenge-heavy.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    130945,    -- GoldenEye
    215876,    -- Mission: Impossible
    4,
    'talroup',
    'Though both are polished 1990s spy action films, it is a bad recommendation since the Mission: Impossible tension is sleeker than warm.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    312170,    -- Spy Who Loved Me, The
    218808,    -- Moonraker
    4,
    'talroup',
    'Though both are Roger Moore Bond spectacles, this is a weak recommendation since Moonraker pushes the silliness past charming into empty excess.',
    NULL
);

INSERT INTO imdb_ijs.movies_recommendations
(base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
VALUES (
    215876,    -- Mission: Impossible
    215879,    -- Mission: Impossible II
    3,
    'talroup',
    'Though it is the same franchise, it is a bad recommendation since the sequel trades the clever vault tension for shallow slow-motion action.',
    NULL
);
