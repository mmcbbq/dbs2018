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
                         Bezeichnung varchar(255),
                         Listepreis decimal,
                         FOREIGN KEY (Rechnung_ID) REFERENCES Rechnung (Rechnung_ID),
                         FOREIGN KEY (Artikel_ID) REFERENCES Artikel (Artikel_ID)

);

-- Einfügen der Firmennamen

INSERT INTO Hersteller (firma) VALUES
                                   ('InnovateTech'),
                                   ('Starlight Solutions'),
                                   ('FusionX'),
                                   ('Quantum Industries'),
                                   ('Energon Power'),
                                   ('TechVantage'),
                                   ('Nexus Systems'),
                                   ('Phoenix Innovations'),
                                   ('Synergetic Solutions'),
                                   ('AlphaCorp');