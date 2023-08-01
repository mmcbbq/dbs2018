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

INSERT INTO Rechnung (Kunden_ID, RechnungsDatum)
VALUES
    (8, '2023-01-05'),
    (15, '2023-01-08'),
    (2, '2023-01-12'),
    (19, '2023-02-03'),
    (10, '2023-02-10'),
    (12, '2023-02-15'),
    (5, '2023-03-02'),
    (3, '2023-03-07'),
    (16, '2023-03-12'),
    (4, '2023-04-01'),
    (11, '2023-04-08'),
    (1, '2023-04-13'),
    (6, '2023-05-02'),
    (17, '2023-05-10'),
    (9, '2023-05-15'),
    (7, '2023-06-03'),
    (20, '2023-06-09'),
    (13, '2023-06-14'),
    (14, '2023-07-01'),
    (18, '2023-07-07'),
    (10, '2023-08-01'),
    (5, '2023-08-06'),
    (11, '2023-08-12'),
    (12, '2023-09-03'),
    (20, '2023-09-08'),
    (16, '2023-09-15'),
    (8, '2023-10-02'),
    (7, '2023-10-09'),
    (1, '2023-10-15'),
    (19, '2023-11-01'),
    (3, '2023-11-07');

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
