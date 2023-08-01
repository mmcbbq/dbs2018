create database dbs2018;
use dbs2018;

/* 20 Kunden */

create table Kunde(
                      Kunde_ID int PRIMARY KEY auto_increment,
                      Firma varchar(255),
                      Strasse varchar(255),
                      Plz varchar(255),
                      Ort varchar(255)
);
INSERT INTO Kunde (Firma, Strasse, Plz, Ort)
VALUES
    ('Mustermann GmbH', 'Musterstraße 123', '12345', 'Musterstadt'),
    ('Musterfirma AG', 'Hauptweg 456', '54321', 'Stadtbeispiel'),
    ('Beispiel & Co. KG', 'Testweg 789', '98765', 'Probestadt'),
    ('Testunternehmen UG', 'Beispielallee 12', '45678', 'Testort'),
    ('Max Mustermann GmbH', 'Musterweg 42', '13579', 'Musterhausen'),
    ('Kundenfirma AG', 'Hauptstraße 567', '98765', 'Stadtbeispiel'),
    ('Testfirma UG', 'Testgasse 101', '54321', 'Probestadt'),
    ('Beispielfirma GmbH', 'Beispielweg 99', '12345', 'Testort'),
    ('Musterunternehmen KG', 'Musterplatz 1', '98765', 'Musterhausen'),
    ('Stadtbeispiel GmbH', 'Hauptallee 55', '54321', 'Stadtbeispiel');

INSERT INTO Kunde (Kunde_ID, Firma, Strasse, Plz, Ort) VALUES

    (11, 'Celestial Creations', 'Astral Avenue 20', '67890', 'Himmelsstadt'),
    (12, 'Enchanted Emporium', 'Magic Meadows 30', '11111', 'Zauberstadt'),
    (13, 'Whimsical Wonders', 'Enchantment Road 40', '22222', 'Wunderland'),
    (14, 'Enigma Euphoria', 'Enchanted Alley 50', '33333', 'Rätseldorf'),
    (15, 'Mythical Marvels', 'Myth Street 60', '44444', 'Sagenstadt'),
    (16, 'Wanderlust Treasures', 'Adventure Avenue 70', '55555', 'Abenteuerburg'),
    (17, 'Dreamscape Delights', 'Dreamy Drive 80', '66666', 'Traumstadt'),
    (18, 'Serendipity Empyrean', 'Serendipity Square 90', '77777', 'Glückshafen'),
    (19, 'Wonderland Whimsy', 'Wonderland Lane 100', '88888', 'Wunderlandia'),
    (20, 'Aurora Artistry', 'Stardust Street 120', '99999', 'Funkelstadt');







Regenerate
/* 10 Hersteller */

create table Hersteller(
                           Hersteller_ID int PRIMARY KEY auto_increment ,
                           Firma varchar(255)

);
/* 30 Rechnungen */


create table Rechnung(
                         Rechnung_ID int PRIMARY KEY auto_increment,
                         Kunden_ID int ,
                         RechnungsDatum date,
                         FOREIGN KEY (Kunden_ID) REFERENCES Kunde (Kunde_ID)
);

/* 40 Artikel */

create table Artikel(
                        Artikel_ID int PRIMARY KEY auto_increment ,
                        Hersteller_ID int ,
                        Bezeichnung varchar(255),
                        Listenpreis decimal,
                        FOREIGN KEY (Hersteller_ID) REFERENCES Hersteller (Hersteller_ID)
);


/* 50 Positionen */


create table Position(
                         Rechnung_ID int,
                         Artikel_ID int ,
                         Bezeichnung varchar(255),
                         Listepreis decimal,
                         FOREIGN KEY (Rechnung_ID) REFERENCES Rechnung (Rechnung_ID),
                         FOREIGN KEY (Artikel_ID) REFERENCES Artikel (Artikel_ID)

);