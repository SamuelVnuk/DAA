/*1.  vypise produkt a celkovu zarobenu cenu za ten produkt, takze cena produktu * mnozstvo a zoradi to od najvacsieho zarobku z produktu*/
SELECT produkt, mnozstvo * cena AS zarobok_za_produkt FROM produkty ORDER BY zarobok_za_produkt DESC;

/*2. vypise pocet budov na pozemku vo farme*/
SELECT id_farm, pocet_staji + pocet_garazi + pocet_sil + pocet_obytnych_domov AS pocet_budov_na_farme FROM pozemok;

/*3. vypis a zoradenie osob podla mena */
SELECT * FROM osoby ORDER BY meno;

/*4. vypise osoby ktori su spravcovia*/
SELECT * FROM osoby WHERE role IN ('spravca');

/*5. Vybere to osoby ktore maju menej ako 40 rokov, su zaregistrovani skor ako 1.1.2015 alebo maju rolu zamestnanca*/
SELECT * FROM osoby WHERE vek < 40 AND registrovany > 2015-01-01 OR role IN ('zamestanec');

/*6. vypise vsetky zvierata s pohlavim 1 - samice */
SELECT * FROM animal WHERE sex != 0; 

/*7. vypise vsetky produkty ktore v nazve obashuju maso a su regulovane cenou od 4 do 6*/
SELECT * FROM produkty WHERE produkt LIKE '%maso' AND cena BETWEEN 4 AND 6; 

/*8. vypise pocet druhov zvierat podla pohlavia*/
SELECT sex, COUNT(*) AS pocet_druhov FROM animal GROUP BY sex;

/*9. vypise pocet osob s danou rolou */
SELECT role, COUNT(*) AS pocet_ludi_v_roli FROM osoby GROUP BY role;

/*10. vypise to priemer samcov na farme*/
SELECT AVG(pocet) AS priemer_samcov_na_farme FROM animal GROUP BY sex HAVING sex = 0;


