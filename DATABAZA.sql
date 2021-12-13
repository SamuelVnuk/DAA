CREATE DATABASE FARMA;

CREATE TABLE osoby (
id INT AUTO_INCREMENT,
PRIMARY KEY(id),
meno VARCHAR (60),
priezvisko VARCHAR (60),
vek INT (10),
pohlavie INT (10),
registrovany DATE,
telc VARCHAR (60),
role VARCHAR (60)
);	

CREATE TABLE farm 
(
id INT AUTO_INCREMENT,
PRIMARY KEY(id),
meno VARCHAR (60),
vznik DATE,
krajina VARCHAR (60),
majitel INT (10),
spravca_strojov INT (10), 
spravca_pozemku INT (10),
KEY (majitel),
KEY (spravca_strojov),
KEY (spravca_pozemku),
FOREIGN KEY (majitel) REFERENCES osoby (id),
FOREIGN KEY (spravca_strojov) REFERENCES osoby (id),
FOREIGN KEY (spravca_pozemku) REFERENCES osoby (id)
		);

CREATE TABLE produkty (
id INT AUTO_INCREMENT,
PRIMARY KEY(id),
id_farm INT (10),
produkt VARCHAR (60),
mnozstvo INT (10),
cena FLOAT,
KEY (id_farm),
FOREIGN KEY (id_farm) REFERENCES farm (id)
);


CREATE TABLE druh (
id INT AUTO_INCREMENT,
PRIMARY KEY(id),
druh VARCHAR (60)
);


		
CREATE TABLE pozemok 
(
id INT AUTO_INCREMENT,
PRIMARY KEY(id),
pocet_staji INT (10),
pocet_garazi INT (10),
pocet_sil INT (10),
pocet_obytnych_domov INT (10),
pocet_poli INT (10),
velkost_celkoveho_pozemku INT (10),
id_farm INT (10),
KEY (id_farm),
FOREIGN KEY (id_farm) REFERENCES farm (id)
);		
		
		
CREATE TABLE animal (
id INT AUTO_INCREMENT,
PRIMARY KEY(id),
druh INT (10),
sex INT (10),
pocet INT (10),
povod VARCHAR (60),
id_farm INT (10),
KEY (id_farm),
FOREIGN KEY (id_farm) REFERENCES farm (id),
KEY (druh),
FOREIGN KEY (druh) REFERENCES druh (id)
);	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		







