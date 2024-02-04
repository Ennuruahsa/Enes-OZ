

USE bibliothek;
CREATE TABLE Buecher(
    BuchID INT PRIMARY KEY,
    Title VARCHAR(200),
    AuthorID INT,
    HerausgeberID INT,
    Veröffenlichesdatum Date,
    Menge INT
);

CREATE TABLE Author(
    AuhorID INT PRIMARY KEY,
    Vorname VARCHAR(50),
    Nachname VARCHAR(50)
);

CREATE TABLE Herausgeber (
    HerausgeberID INT PRIMARY KEY,
    Name_He VARCHAR(100),
    Adresse VARCHAR(200),
);

-- Wir schreiben die Values dazu

USE bibliothek;

INSERT INTO Author (AuhorID, Vorname, Nachname)
VALUES (51,'Bertus', 'Aafjes'),
        (12,'Patrika', 'Aakhus'),
        (17,'Hans','Aanrut');

INSERT INTO Herausgeber(HerausgeberID,Name_He,Adresse)
VALUES (155,'Econ Verlag','Münih'),
        (178,'XYZ Verlag','Münster'),
        (231,'Knut Verlag','Hamburg');

INSERT INTO Buecher(BuchID,Title,AuthorID,HerausgeberID,Veröffenlichesdatum,Menge)
VALUES (13,'Amoureus liedje in de morgenstond',51,155,'2000-01-05',200),
        (72,'Ohne Aktien wird schwer',12,178,'2020-05-20',500),
        (92,'12 Gesetze der Dummheit',17,231,'2018-12-01',430);



