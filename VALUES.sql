INSERT INTO osoby 
(
	meno,
	priezvisko,
	vek,
	pohlavie,
	registrovany,
	telc,
	role
)

VALUES ('Fero', 'Mrkva', '38', '0', '2002-07-22', '0907493568', 'majitel'),
('Jano', 'Bicek', '27', '0', '2003-08-11', '0944367821', 'spravca'),
('Samuel', 'Filc', '23', '0', '2003-09-01', '0911893457', 'spravca'),
('Adriana', 'Bilkova', '32', '1', '2004-11-23', '0907683336', 'zamestnanec'),
('Daniela', 'Forgacova', '43', '1', '2006-02-07', '0911367852', 'zamestnanec'),
('Daniel', 'Dobsinsky', '34', '0', '2007-01-23', '0907482635', 'zamestnanec'),
('Tomas', 'Dolezal', '19', '0', '2011-09-12', '0958639157', 'zamestnanec'),
('Miroslav', 'Druska', '59', '0', '2007-12-24', '0913763654', 'zamestnanec'),
('Miroslava', 'Frankova', '65', '1', '2017-03-17', '0911687254', 'spravca'),
('Petra', 'Galikova', '33', '1', '2013-08-18', '0956123789', 'spravca'),
('Adam', 'Ciger', '22', '0', '2019-01-17', '0948369753', 'zamestnanec'),
('Dagmara', 'Tothova', '40', '1', '2007-01-19', '0907478364', 'majitel');


INSERT INTO farm 
(
	meno,
	vznik,
	krajina,
	majitel,
	spravca_strojov,
	spravca_pozemku 	
)
VALUES ('HayDay', '2001-06-13', 'Slovensko', '1','9','3'),
('DayHay', '2002-07-12', 'Rakusko', '12', '10', '2');

INSERT INTO produkty
(
	id_farm,
	produkt,
	mnozstvo,
	cena
)

VALUES ('1', 'mlieko', '130', '1.34'),
('1', 'syr', '25', '4.50'),
('1', 'vajicka', '232', '2.50'),
('1', 'hovadzie maso', '430', '5.30'),
('1', 'kuracie maso', '78', '3.00'),
('2', 'morcacie maso', '20', '4.20'),
('2', 'vlna', '12', '20.20'),
('2', 'kozie mlieko', '33', '1.80'),
('2', 'ovci syr', '22', '7.50'),
('2', 'korbaciky', '246', '5.55');

INSERT INTO druh 
(
`druh`
)
VALUES ('krava'), ('prasa'), ('ovca'), ('koza'), ('kon'), ('morka'), ('sliepka'), ('perlicka'), ('zajac'), ('hus') ;

INSERT INTO pozemok 
(
pocet_staji,
pocet_garazi ,
pocet_sil ,
pocet_obytnych_domov ,
pocet_poli ,
velkost_celkoveho_pozemku,
id_farm
)

VALUES ('2', '3', '4', '2', '9', '33000', '1'),
('1', '2', '3', '1', '5', '27354', '1'),
('0', '4', '6', '3', '12', '47550', '2');

INSERT INTO animal 
(
`druh`,
sex ,
pocet ,
povod ,
id_farm
)

VALUES ('1', '0', '3', 'Svajciarsko', '1'),
('1', '1', '23', 'Svajciarsko', '1'),
('3', '0', '2', 'Finsko', '2'),
('3', '1', '32', 'Finsko', '2'),
('7', '0', '4', 'Cesko', '1'),
('7', '1', '102', 'Cesko', '1'),
('6', '0', '1', 'Slovensko', '2'),
('6', '1', '30', 'Slovensko', '2'),
('4', '0', '2', 'Slovensko', '2'),
('4', '1', '21', 'Slovensko', '2'),
('5', '0', '1', 'Irsko', '1'),
('5', '1', '2', 'Irsko', '1'),
('2', '0', '1', 'Cesko', '1'),
('2', '1', '7', 'Cesko', '1'),
('9', '0', '4', 'Nemecko', '1'),
('9', '1', '15', 'Nemecko', '1'),
('10', '0', '2', 'Polsko', '2'),
('10', '1', '14', 'Polsko', '2'),
('8', '0', '1', 'Madarsko', '2'),
('8', '1', '7', 'Madarsko', '2');















