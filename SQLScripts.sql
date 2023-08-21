CREATE DATABASE SOCIALMEDIA;

CREATE TABLE Influencers (
influencerID INT PRIMARY KEY,
influencerName VARCHAR(50),
age TINYINT,
instagramFollowers INT
);
-- Laver tablet Influencers

INSERT INTO Influencers(influencerID, influencerName, age, instagramFollowers)
VALUES (1, 'Anna', 24, 50000),
(2, 'Bent', 22, 20000),
(3, 'Caroline', 26, 80000),
(4, 'David', 28, 45000),
(5, 'Ella', 30, 70000),
(6, 'Frank', 27, 32000),
(7, 'Grace', 29, 92000),
(8, 'Henry', 31, 48000)
-- Indsætter data i Influencers (Dataen som står i opgaven)

CREATE TABLE SocialMediaPlatforms (
platformID  INT PRIMARY KEY,
platformName VARCHAR(50),
averageUserAge DECIMAL,
totalUsers INT
);
-- Laver tablet SocalMediaPlatforms

INSERT INTO SocialMediaPlatforms(platformID, platformName, averageUserAge, totalUsers)
VALUES (1, 'Instagram', 24.5, 1000000),
(2, 'TikTok', 18.5, 2000000),
(3, 'YouTube', 28.5, 1500000),
(4, 'Snapachat', 20.0, 800000),
(5, 'Twitter', 27.5, 500000),
(6, 'Facebook', 32.5, 2000000),
(7, 'Pinterest', 29.0, 600000),
(8, 'LinkedIn', 34.0, 400000)
-- Indsætter data i Influencers (Dataen som står i opgaven)

CREATE TABLE Brands (
branID  INT PRIMARY KEY,
brandName VARCHAR(50),
category VARCHAR(50)
);
-- Laver tablet Brands

INSERT INTO Brands(brandID, brandName, category)
VALUES (1, 'FashionCo', 'fashion'),
(2, 'BeautyBliss', 'beauty'),
(3, 'TechTron', 'technology'),
(4, 'GlamGlow', 'beauty'),
(5, 'SportSpot', 'sports'),
(6, 'EcoEssentials', 'lifestyle'),
(7, 'TrendTech', 'technology'),
(8, 'MystiqueMakeup', 'beauty')
-- Indsætter data i Influencers (Dataen som står i opgaven)

CREATE TABLE Collaborations(
collaborationsID INT PRIMARY KEY,
influencerID INT,
brandID INT,
platformID INT,
duration INT,
payment DECIMAL
FOREIGN KEY(influencerID) REFERENCES Influencers (influencerID),
FOREIGN KEY(brandID) REFERENCES Brands (brandID),
FOREIGN KEY(platformID) REFERENCES SocialMediaPlatforms (platformID)
);
-- Laver tablet Collaborations

INSERT INTO Collaborations(collaborationsID, influencerID, brandID, platformID, duration, payment)
VALUES (1, 1, 1, 1, 30, 5000.00),
(2, 2, 3, 2, 10, 3000.50),
(3, 3, 2, 3, 20, 7500.00),
(4, 4, 4, 4, 15, 2500.00),
(5, 1, 2, 1, 25, 6000.50),
(6, 3, 1, 2, 40, 6500.75),
(7, 5, 5, 5, 45, 5300.00),
(8, 6, 6, 6, 20, 3500.25),
(9, 7, 7, 7, 15, 4700.50),
(10, 8, 8, 8, 25, 2900.00),
(11, 5, 7, 1, 30, 5100.75),
(12, 6, 5, 2, 40, 4400.00),
(13, 7, 6, 3, 35, 6500.25),
(14, 8, 7, 4, 20, 7000.50)
-- Indsætter data i Collaborations (Dataen som står i opgaven)
