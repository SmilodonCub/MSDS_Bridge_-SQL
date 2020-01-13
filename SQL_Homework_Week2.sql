-- create a new schema: 'MySQL_how2'
CREATE SCHEMA 'MySQL_how2';
-- create a new table: 'videos'
CREATE TABLE `MySQL_how2`.`videos` (
  `idvideos` INT NOT NULL,
  `title` VARCHAR(45) NULL,
  `length` INT NULL,
  `url` VARCHAR(45) NULL,
  PRIMARY KEY (`idvideos`));
-- create a new table: 'reviewers'
CREATE TABLE `MySQL_how2`.`reviewers` (
  `reviewID` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `rating` INT NULL,
  `review` VARCHAR(60) NULL,
  `videoID` INT NULL,
  PRIMARY KEY (`reviewID`));
  -- insert some data to 'videos'
  INSERT INTO `MySQL_how2`.`videos` (`idvideos`, `title`, `length`, `url`) VALUES ('1', 'MySQL Error Access Denied For Root User', '266', 'https://youtu.be/NdQL-mUGnUE');
INSERT INTO `MySQL_how2`.`videos` (`idvideos`, `title`, `length`, `url`) VALUES ('2', 'Install MYSQL Ubuntu 18.04', '407', 'https://youtu.be/ug0TFsort24');
INSERT INTO `MySQL_how2`.`videos` (`idvideos`, `title`, `length`, `url`) VALUES ('3', 'Beginners MYSQL Database Tutorial 2', '703', 'https://youtu.be/JyRWDQSQYNw');
INSERT INTO `MySQL_how2`.`videos` (`idvideos`, `title`, `length`, `url`) VALUES ('4', 'MySQL Workbench Insert, Read, Update, Delete', '259', 'https://youtu.be/qb7abQ6ROy4');
INSERT INTO `MySQL_how2`.`videos` (`idvideos`, `title`, `length`, `url`) VALUES ('5', 'Command Line Basics 13: Using MySQL', '521', 'https://youtu.be/JoVLldJXzzs');
INSERT INTO `MySQL_how2`.`videos` (`idvideos`, `title`, `length`, `url`) VALUES ('6', 'MySQL - CREATE USER with GRANT Privileges', '681', 'https://youtu.be/1L9u3tbUVBU');
-- inset some data to 'reviewers'
INSERT INTO `MySQL_how2`.`reviewers` (`reviewID`, `name`, `rating`, `review`, `videoID`) VALUES ('1', 'Masny', '5', 'Hi, im from poland, thank you for help me.', '6');
INSERT INTO `MySQL_how2`.`reviewers` (`reviewID`, `name`, `rating`, `review`, `videoID`) VALUES ('2', 'Wolf Solo', '5', 'Thank you a lot for the detailed tutorial.', '6');
INSERT INTO `MySQL_how2`.`reviewers` (`reviewID`, `name`, `rating`, `review`, `videoID`) VALUES ('3', 'Small Biz Geek', '4', 'Finding this video very relaxing!', '5');
INSERT INTO `MySQL_how2`.`reviewers` (`reviewID`, `name`, `rating`, `review`, `videoID`) VALUES ('4', 'TheCaptainsquiggle', '5', 'Best video ever, you\'re amazing thank you!', '5');
INSERT INTO `MySQL_how2`.`reviewers` (`reviewID`, `name`, `rating`, `review`, `videoID`) VALUES ('5', 'manupandu', '3', 'bro graphically its ok. whats command 4 that?', '4');
INSERT INTO `MySQL_how2`.`reviewers` (`reviewID`, `name`, `rating`, `review`, `videoID`) VALUES ('6', 'ivanIvan', '5', 'Oh God, your accent is lovely )', '4');
INSERT INTO `MySQL_how2`.`reviewers` (`reviewID`, `name`, `rating`, `review`, `videoID`) VALUES ('7', 'BM 1', '3', 'I suggest increasing speed 2 1.5 in settings!', '3');
INSERT INTO `MySQL_how2`.`reviewers` (`reviewID`, `name`, `rating`, `review`, `videoID`) VALUES ('8', 'Darkyin', '4', 'Why sound depressed? Good tutorials, cheer up', '3');
INSERT INTO `MySQL_how2`.`reviewers` (`reviewID`, `name`, `rating`, `review`, `videoID`) VALUES ('9', 'DanKun', '5', 'Thank you so much! Ur a wonderful guy', '2');
INSERT INTO `MySQL_how2`.`reviewers` (`reviewID`, `name`, `rating`, `review`, `videoID`) VALUES ('10', 'ManjoBanjo', '5', 'Thank you very much! It helped a lot!', '2');
INSERT INTO `MySQL_how2`.`reviewers` (`reviewID`, `name`, `rating`, `review`, `videoID`) VALUES ('11', 'MR GAMER', '4', 'bro can you make a video how to download the software mysql.', '1');
INSERT INTO `MySQL_how2`.`reviewers` (`reviewID`, `name`, `rating`, `review`, `videoID`) VALUES ('12', 'DakshiSakshi', '5', 'THANK YOU BOSS IT REALLY HALP ME', '1');
-- Report on Video Reviews. Write a JOIN statement that shows information from both tables.
SELECT MySQL_how2.videos.idvideos AS 'Video ID', 
MySQL_how2.videos.title AS 'Video Title', 
MySQL_how2.videos.length AS 'Video Length (ms)',
MySQL_how2.videos.url AS 'Video URL', 
MySQL_how2.reviewers.name AS 'User Name', 
MySQL_how2.reviewers.rating AS 'Rating Score (1-5)',
MySQL_how2.reviewers.review AS 'User Comments'
FROM MySQL_how2.videos
INNER JOIN MySQL_how2.reviewers ON MySQL_how2.videos.idvideos=MySQL_how2.reviewers.videoID;