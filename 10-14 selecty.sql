/*11. select spocita kolko druhov zvierat je z akej krajiny stym ze tych zvierat musi byt menej ako 100 kusov z toho druhu*/
SELECT povod, COUNT(*) AS pocet FROM animal
JOIN druh ON id_druh = druh_a WHERE pocet < 100 GROUP BY povod;

/*12. vypise to meno vznik a krajinu kde sa nachadza krajina a kolko druhov zvierat ma dane pohlavie*/
SELECT meno, vznik, krajina, sex, COUNT(*) AS pocet FROM farm 
JOIN animal ON id_farm = id_farms WHERE  id_farm = 1 GROUP BY sex;

/*13. vypise to vsetky hodnoty z tabulky farmy kde spravca pozemku ma meno Samuel*/
SELECT * FROM farm
WHERE spravca_pozemku = (SELECT id_osoby FROM osoby WHERE meno = 'Samuel');

/*14. vypise vsetky hodnoty z tabulky animal, ktore sa nachadzaju na farme v rakusku*/
SELECT * FROM animal
WHERE id_farm = (SELECT id_farms FROM farm WHERE krajina = 'Rakusko');
