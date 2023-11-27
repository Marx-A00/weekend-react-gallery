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


  ------------------------------------------------Better Maze Query----------------------------------------------------------------------------------------------------------


 
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
 ('images/Maze_Illustrator_01.jpg','...','...',0,0),
 ('images/Maze_Illustrator_02.jpg','...','...',0,1),
 ('images/Maze_Illustrator_03.jpg','...','...',0,2),
 ('images/Maze_Illustrator_04.jpg','...','...',0,3),
 ('images/Maze_Illustrator_05.jpg','...','...',0,4),
 ('images/Maze_Illustrator_06.jpg','...','...',0,5),
 ('images/Maze_Illustrator_07.jpg','...','...',0,6),
 ('images/Maze_Illustrator_08.jpg','...','...',0,7),
 ('images/Maze_Illustrator_09.jpg','...','...',0,8),
 ('images/Maze_Illustrator_10.jpg','...','...',0,9);
 
 ('images/Maze_Illustrator_11.jpg','...','...',1,0),
 ('images/Maze_Illustrator_12.jpg','...','...',1,1),
 ('images/Maze_Illustrator_13.jpg','...','...',1,2),
 ('images/Maze_Illustrator_14.jpg','...','...',1,3),
 ('images/Maze_Illustrator_15.jpg','...','...',1,4),
 ('images/Maze_Illustrator_16.jpg','...','...',1,5),
 ('images/Maze_Illustrator_17.jpg','...','...',1,6),
 ('images/Maze_Illustrator_18.jpg','...','...',1,7),
 ('images/Maze_Illustrator_19.jpg','...','...',1,8),
 ('images/Maze_Illustrator_20.jpg','...','...',1,9);
 
 ('images/Maze_Illustrator_21.jpg','...','...',2,0),
 ('images/Maze_Illustrator_22.jpg','...','...',2,1),
 ('images/Maze_Illustrator_23.jpg','...','...',2,2),
 ('images/Maze_Illustrator_24.jpg','...','...',2,3),
 ('images/Maze_Illustrator_25.jpg','...','...',2,4),
 ('images/Maze_Illustrator_26.jpg','...','...',2,5),
 ('images/Maze_Illustrator_27.jpg','...','...',2,6),
 ('images/Maze_Illustrator_28.jpg','...','...',2,7),
 ('images/Maze_Illustrator_29.jpg','...','...',2,8),
 ('images/Maze_Illustrator_30.jpg','...','...',2,9);
 
 ('images/Maze_Illustrator_31.jpg','...','...',3,0),
 ('images/Maze_Illustrator_32.jpg','...','...',3,1),
 ('images/Maze_Illustrator_33.jpg','...','...',3,2),
 ('images/Maze_Illustrator_34.jpg','...','...',3,3),
 ('images/Maze_Illustrator_35.jpg','...','...',3,4),
 ('images/Maze_Illustrator_36.jpg','...','...',3,5),
 ('images/Maze_Illustrator_37.jpg','...','...',3,6),
 ('images/Maze_Illustrator_38.jpg','...','...',3,7),
 ('images/Maze_Illustrator_39.jpg','...','...',3,8),
 ('images/Maze_Illustrator_40.jpg','...','...',3,9);
 
 ('images/Maze_Illustrator_41.jpg','...','...',4,0),
 ('images/Maze_Illustrator_42.jpg','...','...',4,1),
 ('images/Maze_Illustrator_43.jpg','...','...',4,2),
 ('images/Maze_Illustrator_44.jpg','...','...',4,3),
 ('images/Maze_Illustrator_45.jpg','...','...',4,4),
 ('images/Maze_Illustrator_46.jpg','...','...',4,5),
 ('images/Maze_Illustrator_47.jpg','...','...',4,6),
 ('images/Maze_Illustrator_48.jpg','...','...',4,7),
 ('images/Maze_Illustrator_49.jpg','...','...',4,8),
 ('images/Maze_Illustrator_50.jpg','...','...',4,9);
 
 ('images/Maze_Illustrator_51.jpg','...','...',5,0),
 ('images/Maze_Illustrator_52.jpg','...','...',5,1),
 ('images/Maze_Illustrator_53.jpg','...','...',5,2),
 ('images/Maze_Illustrator_54.jpg','...','...',5,3),
 ('images/Maze_Illustrator_55.jpg','...','...',5,4),
 ('images/Maze_Illustrator_56.jpg','...','...',5,5),
 ('images/Maze_Illustrator_57.jpg','...','...',5,6),
 ('images/Maze_Illustrator_58.jpg','...','...',5,7),
 ('images/Maze_Illustrator_59.jpg','...','...',5,8),
 ('images/Maze_Illustrator_60.jpg','...','...',5,9);
 
 ('images/Maze_Illustrator_61.jpg','...','...',6,0),
 ('images/Maze_Illustrator_62.jpg','...','...',6,1),
 ('images/Maze_Illustrator_63.jpg','...','...',6,2),
 ('images/Maze_Illustrator_64.jpg','...','...',6,3),
 ('images/Maze_Illustrator_65.jpg','...','...',6,4),
 ('images/Maze_Illustrator_66.jpg','...','...',6,5),
 ('images/Maze_Illustrator_67.jpg','...','...',6,6),
 ('images/Maze_Illustrator_68.jpg','...','...',6,7),
 ('images/Maze_Illustrator_69.jpg','...','...',6,8),
 ('images/Maze_Illustrator_70.jpg','...','...',6,9);
 
 ('images/Maze_Illustrator_71.jpg','...','...',7,0),
 ('images/Maze_Illustrator_72.jpg','...','...',7,1),
 ('images/Maze_Illustrator_73.jpg','...','...',7,2),
 ('images/Maze_Illustrator_74.jpg','...','...',7,3),
 ('images/Maze_Illustrator_75.jpg','...','...',7,4),
 ('images/Maze_Illustrator_76.jpg','...','...',7,5),
 ('images/Maze_Illustrator_77.jpg','...','...',7,6),
 ('images/Maze_Illustrator_78.jpg','...','...',7,7),
 ('images/Maze_Illustrator_79.jpg','...','...',7,8),
 ('images/Maze_Illustrator_80.jpg','...','...',7,9);
 
 ('images/Maze_Illustrator_81.jpg','...','...',8,0),
 ('images/Maze_Illustrator_82.jpg','...','...',8,1),
 ('images/Maze_Illustrator_83.jpg','...','...',8,2),
 ('images/Maze_Illustrator_84.jpg','...','...',8,3),
 ('images/Maze_Illustrator_85.jpg','...','...',8,4),
 ('images/Maze_Illustrator_86.jpg','...','...',8,5),
 ('images/Maze_Illustrator_87.jpg','...','...',8,6),
 ('images/Maze_Illustrator_88.jpg','...','...',8,7),
 ('images/Maze_Illustrator_89.jpg','...','...',8,8),
 ('images/Maze_Illustrator_90.jpg','...','...',8,9);
 

 ('images/Maze_Illustrator_91.jpg','...','...',9,0),
 ('images/Maze_Illustrator_92.jpg','...','...',9,1),
 ('images/Maze_Illustrator_93.jpg','...','...',9,2),
 ('images/Maze_Illustrator_94.jpg','...','...',9,3),
 ('images/Maze_Illustrator_95.jpg','...','...',9,4),
 ('images/Maze_Illustrator_96.jpg','...','...',9,5),
 ('images/Maze_Illustrator_97.jpg','...','...',9,6),
 ('images/Maze_Illustrator_98.jpg','...','...',9,7),
 ('images/Maze_Illustrator_99.jpg','...','...',9,8),
 ('images/Maze_Illustrator_100.jpg','...','...',9,9);