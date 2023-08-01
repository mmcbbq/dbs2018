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
                         Menge int,
                         Listepreis decimal,
                         FOREIGN KEY (Rechnung_ID) REFERENCES Rechnung (Rechnung_ID),
                         FOREIGN KEY (Artikel_ID) REFERENCES Artikel (Artikel_ID)

);

INSERT INTO Position (Rechnung_ID, Artikel_ID, Menge, Listepreis)
VALUES
    (1, 25, 6, 10.50),
    (2, 10, 9, 20.75),
    (3, 5, 2, 15.99),
    (4, 30, 5, 8.50),
    (5, 20, 79, 12.25),
    (6, 15, 89, 17.50),
    (7, 35, 33, 22.99),
    (8, 3, 60, 9.75),
    (9, 28, 7, 14.50),
    (10, 18, 2, 18.25),
    (11, 12, 1, 23.99),
    (12, 38, 5, 11.75),
    (13, 7, 6, 16.50),
    (14, 23, 54, 21.25),
    (15, 13, 1, 13.99),
    (16, 33, 5, 19.75),
    (17, 8, 9, 24.50),
    (18, 29, 65, 10.25),
    (19, 19, 76, 15.99),
    (20, 39, 23, 20.75),
    (21, 4, 94, 17.50),
    (22, 24, 98, 22.99),
    (23, 14, 3, 9.75),
    (24, 34, 2, 14.50),
    (25, 9, 37, 18.25),
    (26, 21, 83, 23.99),
    (27, 2, 56, 11.75),
    (28, 36, 31, 16.50),
    (29, 17, 22, 21.25),
    (30, 11, 57, 13.99),
    (31, 32, 47, 19.75),
    (32, 6, 74, 24.50),
    (33, 27, 68, 10.25),
    (34, 37, 87, 15.99),
    (35, 16, 69, 20.75),
    (36, 1, 12, 17.50),
    (37, 22, 29, 22.99),
    (38, 40, 92, 9.75),
    (39, 26, 89, 14.50),
    (40, 31, 37, 18.25),
    (41, 20, 58, 23.99),
    (42, 15, 7, 11.75),
    (43, 10, 51, 16.50),
    (44, 35, 59, 21.25),
    (45, 5, 63, 13.99),
    (46, 9, 17, 19.75),
    (47, 2, 1, 24.50),
    (48, 28, 45, 10.25),
    (49, 19, 88, 15.99),
    (50, 39, 64, 20.75);

