CREATE DATABASE database_anunturi;

USE database_anunturi;

CREATE TABLE anunturi (
    id int(10) NOT NULL UNIQUE AUTO_INCREMENT, #indicativ rand
    url varchar(255), #link-ul paginii
    titlu varchar(255), #titlul
    descriere varchar(255), #continut
    imagine varchar(255), #imagine
    data_postare date,
    pret int(10),
    PRIMARY KEY (id) #Definitie cheie primara ID
);


INSERT INTO anunturi (url,titlu,descriere,imagine,data_postare,pret)
VALUES
("auto/vanzare/dacia-logan","Vand Dacia Logan","Vand autoturism Dacia Logan an fabricatie 2015, detalii la telefon 0775777555","http://localhost/resurse/imagini/logan1.jpg","2022-01-01",4000),
("auto/vanzare/renault-megane","Vand Renaul Megane","Vand autoturism Renault Megane 1.5 an fabricatie 2000, detalii la telefon 0775777555","http://localhost/resurse/imagini/megane1.jpg","2022-01-02",2000),
("auto/vanzare/renault-clio","Vand Renaul Clio","Vand autoturism Renault Clio 1.5 an fabricatie 2020, detalii la telefon 0775777555","http://localhost/resurse/imagini/clio1.jpg","2022-01-03",5000),
("auto/cumparare/dacia-logan","Cumpar Dacia Logan","Cumpar autoturism Dacia Logan an fabricatie 2015, detalii la telefon 0775777555","http://localhost/resurse/imagini/logan2.jpg","2022-01-01",6000),
("auto/cumparare/renault-megane","Cumpar Renaul Megane","Cumpar autoturism Renault Megane 1.5 an fabricatie 2000, detalii la telefon 0775777555","http://localhost/resurse/imagini/megane2.jpg","2022-01-02",2000),
("auto/cumparare/renault-clio","Cumpar Renaul Clio","Cumpar autoturism Renault Clio 1.5 an fabricatie 2020, detalii la telefon 0775777555","http://localhost/resurse/imagini/clio2.jpg","2022-01-05",5000),
("imobiliare/oferta/apartament-berceni","Ofer in chrie apartament Berceni","Ofer in chirie apartament cu trei camere in zona Berceni langa statia de metrou, detalii la telefon 0775777555","http://localhost/resurse/imagini/berceni1.jpg","2022-01-08",300),
("imobiliare/oferta/apartament-militari","Ofer in chrie apartament Militari","Ofer in chirie apartament cu doua camere in zona Militari langa Lacul Morii, detalii la telefon 0775777555","http://localhost/resurse/imagini/militari1.jpg","2022-01-05",250),
("imobiliare/oferta/apartament-dristor","Ofer in chrie garsoniera Dristor","Ofer in chirie garsoniera in cartier Dristor, detalii la telefon 0775777555","http://localhost/resurse/imagini/dristor1.jpg","2022-01-03",200),
("imobiliare/cerere/apartament-berceni","Caut chirie apartament Berceni","Caut sa inchiriez apartament cu trei camere in zona Berceni langa statia de metrou, detalii la telefon 0775777555","http://localhost/resurse/imagini/berceni2.jpg","2022-01-02",300),
("imobiliare/cerere/apartament-militari","Caut chirie apartament Militari","Caut sa inchiriez apartament cu doua camere in zona Militari langa Lacul Morii, detalii la telefon 0775777555","http://localhost/resurse/imagini/militari2.jpg","2022-01-15",250),
("imobiliare/cerere/apartament-dristor","Caut chirie garsoniera Dristor","Caut sa inchiriez garsoniera in cartier Dristor, detalii la telefon 0775777555","http://localhost/resurse/imagini/dristor2.jpg","2022-01-13",200),
("servicii/oferta/curatenie","Fac curat la domiciliu","Fac curatenie la domiciliu, rezultate profesionale, pret la metrul patrat, detalii la telefon 0775777555","http://localhost/resurse/imagini/curatenie.jpg","2022-01-15",1),
("servicii/oferta/reparatii-televizoare","Repar televizoare","Repar orice model de televizor, detalii la telefon 0775777555","http://localhost/resurse/imagini/televizoare.jpg","2022-01-15",0),
("servicii/oferta/reparatii-calculatoare","Repar calculatoare","Curat si repar calculatoare, detalii la telefon 0775777555","http://localhost/resurse/imagini/calculatoare.jpg","2022-01-13",0),
("servicii/cerere/muncitor-necalificat","Caut muncitor necalificat","Caut muncitor necalificat pentru constructii, detalii la telefon 0775777555","http://localhost/resurse/imagini/muncitor.jpg","2022-01-18",1),
("servicii/cerere/fotograf-rofesionist","Caut fotograf profesionist","Caut fotograf profesionist pentru colaborare la evenimente, detalii la telefon 0775777555","http://localhost/resurse/imagini/fotograf.jpg","2022-01-25",0),
("servicii/cerere/asistenta","Caut asistenta","Caut asistenta cu atestat medical, detalii la telefon 0775777555","http://localhost/resurse/imagini/asistenta.jpg","2022-01-15",0)