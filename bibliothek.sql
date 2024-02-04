USE bibliothek;
GO

CREATE TABLE Buecher(
    BuchID INT PRIMARY KEY,
    Title VARCHAR(200),
    AuthorID INT,
    HerausgeberID INT,
    Veroeffentlichungsdatum DATE, 
    Menge INT
);

CREATE TABLE Author(
    AuthorID INT PRIMARY KEY, 
    Vorname VARCHAR(50),
    Nachname VARCHAR(50)
);

CREATE TABLE Herausgeber (
    HerausgeberID INT PRIMARY KEY,
    Name_He VARCHAR(100),
    Adresse VARCHAR(200) 
);

-- Werte hinzufügen

INSERT INTO Author (AuthorID, Vorname, Nachname)
VALUES (51, 'Bertus', 'Aafjes'),
        (12, 'Patrika', 'Aakhus'),
        (17, 'Hans', 'Aanrut');

INSERT INTO Herausgeber(HerausgeberID, Name_He, Adresse)
VALUES (155, 'Econ Verlag', 'Münih'),
        (178, 'XYZ Verlag', 'Münster'),
        (231, 'Knut Verlag', 'Hamburg');

INSERT INTO Buecher(BuchID, Title, AuthorID, HerausgeberID, Veroeffentlichungsdatum, Menge) 
VALUES (13, 'Amoureus liedje in de morgenstond', 51, 155, '2000-01-05', 200),
        (72, 'Ohne Aktien wird schwer', 12, 178, '2020-05-20', 500),
        (92, '12 Gesetze der Dummheit', 17, 231, '2018-12-01', 430);

-- Transaction --

BEGIN TRANSACTION; -- Anfang des Codes
UPDATE Buecher SET Menge = 100 WHERE BuchID = 13; 
SELECT * FROM Buecher; 
-- ROLLBACK; -- Stornierung
-- SELECT * FROM Buecher;
COMMIT;
