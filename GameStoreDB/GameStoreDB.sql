DROP DATABASE Group_11_Project_Games_Library;
CREATE DATABASE Group_11_Project_Games_Library;
USE Group_11_Project_Games_Library;


CREATE TABLE Accounts 
(
    user_ID INTEGER AUTO_INCREMENT,
    user_name VARCHAR(255),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(255) UNIQUE,
    isAdmin ENUM('yes', 'no') DEFAULT ('no'),
    PRIMARY KEY (user_ID),
    INDEX (isAdmin)
);

INSERT INTO Accounts (user_ID, user_name, first_name, last_name, email, isAdmin)
VALUES
('1', 'Bobby123', 'Bobby', 'Richards', 'bobbyr@gmail.com', 'no'),
('2', 'Derek123', 'Derek', 'Williams', 'derekw@gmail.com', 'no'),
('3', 'Harold123', 'Harold', 'Butchinson', 'haroldb@gmail.com', 'no'),
('4', 'Lord1123', 'Shane', 'Robillard', 'srobilla@uncc.edu', 'no'),
('5', 'George420', 'George', 'Smith', 'gsmith420@gmail.com', 'no'),
('6', 'PyroClaw5', 'Christopher', 'Aron', 'caron@uncc.edu', 'no'),
('7', 'Butterscotch', 'Henry', 'Hall', 'hhall25@uncc.edu', 'no'),
('8', 'Pandemic Studios', 'Phill', 'Bourbon', 'pandemicstudios@gmail.com', 'no'),
('9', 'Cloud_Games_Admin' , 'Admin', 'McAdmin', 'admin@cloudgames.com', 'yes');

CREATE TABLE Store 
(
    game_ID INTEGER AUTO_INCREMENT,
    game_title VARCHAR(255) UNIQUE,
    developer_ID INTEGER,
    PRIMARY KEY(game_ID),
    FOREIGN KEY(developer_ID) REFERENCES Accounts(user_ID)    
);

INSERT INTO Store
VALUES('1', 'Shovel_Knight', '1'),
('2', 'Elden Ring', '2'),
('3', 'Halo Infinite', '3'),
('4', 'Destiny 2', '4'),
('5', 'Minecraft', '5'),
('6', 'Star Wars: Battlefront 2(Classic 2005)', '8');

CREATE TABLE Genres
(
	genre VARCHAR(255), 
PRIMARY KEY(genre)
);

INSERT INTO Genres
VALUES('Platformer'),
('Souls_Like'),
('FPS'),
('RPG'),
('MMO'),
('Survival'),
('Action'),
('Multiplayer'),
('Shooter');

CREATE TABLE Game_Genres
(
    game_ID INTEGER,
    genre VARCHAR(255),
    PRIMARY KEY(game_ID, genre)
);

INSERT INTO Game_Genres
VALUES ('1', 'Platformer'),
('2', 'Souls_Like'),
('3', 'FPS'),
('1', 'Souls_like'),
('4', 'FPS'),
('4', 'RPG'),
('4', 'MMO'),
('5', 'Survival'),
('6', 'FPS'),
('6', 'Multiplayer'),
('6', 'Action');

CREATE TABLE Personal_Library
(
    game_ID INTEGER,
    user_ID INTEGER,
    hours_played DECIMAL(8,2),
    date_purchased DATE,
    last_date_of_activity DATE,
    PRIMARY KEY(game_ID, user_ID)
);

INSERT INTO Personal_Library
VALUES ('1', '1', '30', '2020-01-01', '2020-01-02'),
('2', '2', '120', '2020-01-02', '2020-01-03'),
('3', '3', '150', '2020-01-03', '2020-01-04'),
('2','1', '180', '2020-01-04', '2020-01-05'),
('5', '4', '700', '2020-05-14', '2022-02-24'),
('4', '5', '400', '2020-06-01','2021-07-01'),
('6', '2','210','2020-01-07','2020-01-08'),
('6', '7', '108.9', '2017-05-06', '2022-03-01');

CREATE TABLE Payment_Information
(
    user_ID INTEGER,
    credit_card_num VARCHAR(19),
    street_address VARCHAR(50),
    second_street_address VARCHAR(20),
    city_name VARCHAR(50),
    zip_code VARCHAR(5),
    state VARCHAR(2),
    PRIMARY KEY(user_ID)
);

INSERT INTO Payment_Information
VALUES ('1', '1111 2222 3333 4444', '1234 Main Street', 'Apt 123', 'Charlotte', '28215', 'NC'),
('2', '2222 3333 4444 5555', '2345 Main Street', 'Apt 234', 'Charlotte', '28215', 'NC'),
('3', '3333 4444 5555 6666', '3456 Main Street', 'Apt 345', 'Charlotte', '28215', 'NC'),
('4', '5555 3333 1111 7777', '1275 Cactus Street', 'Apt 420', 'Concord', '28027', 'NC'),
('5', '2222 2222 3333 4444', '4567 Main Street', 'Apt 456', 'Charlotte', '28215','NC'),
('6', '3333 1111 6666 7777', '5678 Main Street', 'Apt 567', 'Charlotte', '28215', 'NC'),
('7', '7777 7777 4444 5555', '6789 Main Street', 'Apt 678', 'Charlotte', '28215', 'NC'),
('8', '0000 9999 8888 7777', '7890 Main Street', 'Studio 1', 'Los Angeles', '76589', 'CA');

CREATE TABLE Friends
(
    sender_ID INTEGER,
    receiver_ID INTEGER,
    date_sent DATE NOT NULL,
    date_accepted DATE,
    PRIMARY KEY(sender_ID, receiver_ID)
);

INSERT INTO Friends
VALUES ('5', '7', '2022-04-14', '2022-04-14'),
('7', '4', '2022-04-14', '2022-04-14'),
('1', '2', '2022-04-14', '2022-04-14'),
('3', '4', '2022-04-14', '2022-04-14'),
 ('5', '6', '2022-04-14', '2022-04-14'),
('8', '2', '2022-04-14', '2022-04-14'),
('8', '1', '2022-04-14', '2022-04-14'),
('6', '3', '2022-04-14', '2022-04-14');

CREATE TABLE Wishlist
(
    game_ID INTEGER,
    user_ID INTEGER,
    PRIMARY KEY(game_ID, user_ID)
);

INSERT INTO Wishlist
VALUES ('2', '5'),
('3', '7'),
('1', '7'),
('2', '7'),
('6', '2'),
('5', '3'),
('4', '4'),
('6', '1'),
('5', '5');

CREATE TABLE Hardware
(
	user_ID integer,
	Operating_system_version VARCHAR(255),
	cpu VARCHAR(255),
	gpu VARCHAR(255),
	memory VARCHAR(255),
	storage_capacity VARCHAR(255),
	motherboard VARCHAR(255),
directx_version VARCHAR(255),
PRIMARY KEY (user_ID)
);

INSERT INTO Hardware
VALUES ('1', 'OSX_15', 'Intel_Core_I7_9700', 'AMD_Radeon_Pro_5500_XT', '32_GB', '1_TB', 'Macintosh', 'OpenGL_3'),
('2', 'Win_10', 'Intel_Core_I7_4790k', 'GTX_980', '16_GB', '100_GB', 'ASUS', 'DirectX_12'),
('3', 'Win_11', 'Intel_Core_I5_11320H', 'Integrated', '16_GB', '250_GB', 'DELL', 'DirectX_12'),
('4', 'Win_10', 'Intel_Core_I5_6600k', 'GTX_1060', '12_GB', '500_GB', 'ASROCK', 'DirectX_11'),
('5', 'Win_10', 'AMD_Ryzen_5_2600', 'NVIDIA_GeForce_GTX_1660_Ti', '32_GB', '500_GB', 'ASUS', 'DirectX_12'),
('6', 'Win_10', 'Intel_Core_I9_9900k', 'RTX_2080', '64_GB', '8_TB', 'ASUS', 'DirectX_12'),
('7','Win_10', 'Intel_Core_I5 4690k', 'NVIDIA_GeForce_GTX_970', '16_GB','4_TB', 'ASUS', 'DirectX_12'),
('8', 'Ubuntu_22', 'Intel_Core_I9_12900k', 'GTX_3090', '64_GB', '16_TB', 'MSI', 'OpenGL_4');

SHOW INDEXES FROM Accounts;

SELECT *
FROM Accounts
USE INDEX(isAdmin)
Where isAdmin = 'yes';