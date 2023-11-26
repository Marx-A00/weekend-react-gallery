  -- ----------------------------------------------- Base project database ----------------------------------------------------------------
CREATE TABLE "gallery" (
  "id" SERIAL PRIMARY KEY,
  "url" VARCHAR,
  "title" VARCHAR,
  "description" TEXT,
  "likes" INTEGER DEFAULT 0
);

INSERT INTO "gallery" 
  ("url", "title", "description")
  VALUES
  ('images/goat_small.jpg', 'Goat!', 'Photo of a goat taken at Glacier National Park.');
  ()


  -- ------------------------------------------------------------------------------------------------------------------------------------------


----------------------------------------------------------Base maze database query--------------------------------------------------------------

DROP TABLE "gallery"; 

CREATE TABLE "gallery" (
  "id" SERIAL PRIMARY KEY,
  "url" VARCHAR,
  "title" VARCHAR,
  "description" TEXT,
  "row" INTEGER,
  "column" INTEGER, 
  "likes" INTEGER DEFAULT 0
);

INSERT INTO "gallery" 
  ("url", "title", "description","row","column")
VALUES
 ('images/Maze_slices_03.jpg','...','...',0,0),
 
 

('images/Maze_slices_04.gif','...','...',0,1),
 ('images/Maze_slices_05.gif','...','...',0,2),
 ('images/Maze_slices_06.gif','...','...',0,3),
 ('images/Maze_slices_07.gif','...','...',0,4),
 ('images/Maze_slices_08.gif','...','...',0,5),
 

 ('images/Maze_slices_10.gif','...','...',1,0),
 ('images/Maze_slices_11.gif','...','...',1,1),
 ('images/Maze_slices_12.gif','...','...',1,2),
 ('images/Maze_slices_13.gif','...','...',1,3),
 ('images/Maze_slices_14.gif','...','...',1,4),
 ('images/Maze_slices_15.gif','...','...',1,5),
 

 ('images/Maze_slices_16.gif','...','...',2,0),
 ('images/Maze_slices_17.gif','...','...',2,1),
 ('images/Maze_slices_18.gif','...','...',2,2),
 ('images/Maze_slices_19.gif','...','...',2,3),
 ('images/Maze_slices_20.gif','...','...',2,4),
 ('images/Maze_slices_21.gif','...','...',2,5),
 

 ('images/Maze_slices_22.gif','...','...',3,0),
 ('images/Maze_slices_23.gif','...','...',3,1),
 ('images/Maze_slices_24.gif','...','...',3,2),
 ('images/Maze_slices_25.gif','...','...',3,3),
 ('images/Maze_slices_26.gif','...','...',3,4),
 ('images/Maze_slices_27.gif','...','...',3,5),
 

 ('images/Maze_slices_28.gif','...','...',4,0),
 ('images/Maze_slices_29.gif','...','...',4,1),
 ('images/Maze_slices_30.gif','...','...',4,2),
 ('images/Maze_slices_31.gif','...','...',4,3),
 ('images/Maze_slices_32.gif','...','...',4,4),
 ('images/Maze_slices_33.gif','...','...',4,5),
 

 ('images/Maze_slices_34.jpg','...','...',5,0),
 ('images/Maze_slices_35.gif','...','...',5,1),
 ('images/Maze_slices_36.gif','...','...',5,2),
 ('images/Maze_slices_37.gif','...','...',5,3),
 ('images/Maze_slices_38.gif','...','...',5,4),
 ('images/Maze_slices_39.gif','...','...',5,5);

 




  ----------------------------------------------------------------------------------------------------------------------------------------------------------

  
----------------------------------------------------------Alternate gallery query -------------------------------------------------------------------------
   INSERT INTO "gallery_memes" 
  ("url", "title", "description","row","column")
VALUES
 ('images/Dream_Roto.JPG','...','...',0,0),
 ('images/Bladee_hat.jpeg','...','...',0,1),
 ('images/Varg2.jpg','...','...',0,2),
 ('images/IMG_3114.JPG','...','...',0,3),
 ('images/Pan_Labyrinth_Monster.jpeg','...','...',0,4),
 ('images/stackMore_TalkLess.JPG','...','...',0,5),
 

 ('images/Dream_Roto.JPG','...','...',1,0),
 ('images/Bladee_hat.jpeg','...','...',1,1),
 ('images/Varg2.jpg','...','...',1,2),
 ('images/IMG_3114.JPG','...','...',1,3),
 ('images/Pan_Labyrinth_Monster.jpeg','...','...',1,4),
 ('images/stackMore_TalkLess.JPG','...','...',1,5),
 
 
 ('images/red-book-mandala.jpg','...','...',2,0),
('images/Rodya2.jpeg','...','...',2,1),
('images/SpongeBobOnMolly.jpg','...','...',2,2),
('images/Sun_Stone01.jpg','...','...',2,3),
('images/throwin up the set.jpg','...','...',2,4),
('images/Vitruvian.jpeg','...','...',2,5),




('images/JollyJoker.jpeg','...','...',3,0),
('images/Leo_Man.jpeg','...','...',3,1),
('images/Lucian_Freud_1.jpeg','...','...',3,2),
('images/Joker_card.jpeg','...','...',3,3),
('images/Mexica_1.jpeg','...','...',3,4),
('images/Pans Labyrinth.jpeg','...','...',3,5),




('images/IMG_2413.JPG','...','...',4,0),
('images/IMG_2821.jpg','...','...',4,1),
('images/IMG_3114.JPG','...','...',4,2),
('images/IMG_6754.jpg','...','...',4,3),
('images/IMG_8454.JPG','...','...',4,4),
('images/IMG_8720.jpeg','...','...',4,5);


  ----------------------------------------------------------------------------------------------------------------------------------------------------------