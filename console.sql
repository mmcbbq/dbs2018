create database dbs2018;
use dbs2018;
create table Kunde(
    Kunde_ID int PRIMARY KEY auto_increment,
    Firma varchar(255),
    Strasse varchar(255),
    Plz varchar(255),
    Ort varchar(255)
);

create table Rechnung(
                      Rechnung_ID int PRIMARY KEY auto_increment,
                      Kunden_ID int ,
                      RechnungsDatum date,
                      FOREIGN KEY (Kunden_ID) REFERENCES Kunde (Kunde_ID)
);
create table Hersteller(
                         Hersteller_ID int PRIMARY KEY auto_increment ,
                        Firma varchar(255)

);




create table Artikel(
                         Artikel_ID int PRIMARY KEY auto_increment ,
                         Hersteller_ID int ,
                         Bezeichnung varchar(255),
                         Listenpreis decimal,
                         FOREIGN KEY (Hersteller_ID) REFERENCES Hersteller (Hersteller_ID)
);




create table Position(
                         Rechnung_ID int,
                         Artikel_ID int ,
                         Bezeichnung varchar(255),
                         Listepreis decimal,
                          FOREIGN KEY (Rechnung_ID) REFERENCES Rechnung (Rechnung_ID),
                         FOREIGN KEY (Artikel_ID) REFERENCES Artikel (Artikel_ID)

);


