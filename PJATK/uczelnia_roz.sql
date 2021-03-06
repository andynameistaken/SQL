INSERT ALL
INTO RokAkademicki (IdRokAkademicki, Data_rozp, Data_zak) VALUES ('2011_12', TO_DATE('2011-10-01', 'YYYY-MM-DD'), TO_DATE('2012-08-31',
'YYYY-MM-DD'))
INTO RokAkademicki (IdRokAkademicki, Data_rozp, Data_zak) VALUES ('2012_13', TO_DATE('2012-10-01', 'YYYY-MM-DD'), TO_DATE('2013-08-31',
'YYYY-MM-DD'))
INTO RokAkademicki (IdRokAkademicki, Data_rozp, Data_zak) VALUES ('2013_14', TO_DATE('2013-10-01', 'YYYY-MM-DD'), TO_DATE('2014-08-31',
'YYYY-MM-DD'))
INTO RokAkademicki (IdRokAkademicki, Data_rozp, Data_zak) VALUES ('2014_15', TO_DATE('2014-10-01', 'YYYY-MM-DD'), TO_DATE('2015-08-31',
'YYYY-MM-DD'))
SELECT * FROM dual;
-------------------------------------------------------------------------------
INSERT ALL
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs I.1', 1, '2011_12')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs I.2', 1, '2011_12')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs II.1', 2, '2011_12')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs II.2', 2, '2011_12')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs I.1', 1, '2012_13')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs I.2', 1, '2012_13')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs II.1', 2, '2012_13')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs II.2', 2, '2012_13')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs III.1', 3, '2012_13')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs III.2', 3, '2012_13')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs IV.1', 4, '2012_13')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs IV.2', 4, '2012_13')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs I.1', 1, '2013_14')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs I.2', 1, '2013_14')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs II.1', 2, '2013_14')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs II.2', 2, '2013_14')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs III.1', 3, '2013_14')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs III.2', 3, '2013_14')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs IV.1', 4, '2013_14')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs IV.2', 4, '2013_14')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs V.1', 5, '2013_14')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs VI.1', 6, '2013_14')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs I.1', 1, '2014_15')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs I.2', 1, '2014_15')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs II.1', 2, '2014_15')
INTO Grupa (NrGrupy, SemestrNauki, IdRokAkademicki) VALUES ('WIs II.2', 2, '2014_15')
SELECT * FROM dual;
-------------------------------------------------------------------------------
INSERT ALL
INTO Panstwo (IdPanstwo, Panstwo) VALUES (14, 'Bia�oru�')
INTO Panstwo (IdPanstwo, Panstwo) VALUES (4, 'Czechy')
INTO Panstwo (IdPanstwo, Panstwo) VALUES (15, 'Francja')
INTO Panstwo (IdPanstwo, Panstwo) VALUES (10, 'Niemcy')
INTO Panstwo (IdPanstwo, Panstwo) VALUES (3, 'Polska')
INTO Panstwo (IdPanstwo, Panstwo) VALUES (12, 'Rosja')
INTO Panstwo (IdPanstwo, Panstwo) VALUES (18, 'Rumunia')
INTO Panstwo (IdPanstwo, Panstwo) VALUES (11, 'S�owacja')
INTO Panstwo (IdPanstwo, Panstwo) VALUES (16, 'S�owenia')
INTO Panstwo (IdPanstwo, Panstwo) VALUES (13, 'Ukraina')
INTO Panstwo (IdPanstwo, Panstwo) VALUES (2, 'USA')
SELECT * FROM dual;
-------------------------------------------------------------------------------
INSERT  ALL
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (3, 'Warszawa', 3)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (4, 'New York', 2)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (5, 'Dallas', 2)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (6, 'Chicago', 2)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (7, 'Boston', 2)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (8, 'Los Angeles', 2)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (14, 'Bonn', 10)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (15, 'Detroit', 2)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (16, 'Bratys�awa', 11)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (17, 'Praga', 4)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (18, 'Pary�', 15)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (19, 'Lyon', 15)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (20, 'Honolulu', NULL)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (21, 'Helsinki', NULL)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (22, 'Krak�w', 3)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (23, 'Pozna�', 3)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (24, 'San Francisco', 2)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (25, 'Rzym', NULL)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (26, 'Neapol', NULL)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (27, 'Wroc�aw', 3)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (28, 'Kielce', 3)
INTO Miasto (IdMiasto, Miasto, IdPanstwo) VALUES (29, 'Gda�sk', 3)
SELECT * FROM dual;

----------------------------------------------------------------------------------
INSERT ALL
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (1, 'Apolinary', 'Any�ek', NULL, 'M',
NULL, NULL, NULL)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (2, 'Balbina', 'Bak�a�an', NULL, 'K',
NULL, NULL, NULL)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (3, 'Baltazar', 'Bigos', NULL, 'M', NULL,
NULL, NULL)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (4, 'Cezary', 'Czosnek', NULL, 'M', NULL,
NULL, NULL)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (5, 'Domicella', 'Dynia', NULL, 'K', NULL,
NULL, NULL)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (6, 'Bazyli', 'Broku�', NULL, 'M', NULL,
NULL, NULL)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (7, 'Kajetan', 'Kalafior', NULL, 'M',
NULL, NULL, NULL)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (8, 'Kunegunda', 'Karp', NULL, 'K', NULL,
NULL, NULL)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (9, 'January', 'Jajecznica', NULL, 'M',
NULL, NULL, NULL)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (10, 'Archibald', 'Agrest', NULL, 'M',
NULL, NULL, NULL)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (11, 'Kleofas', 'Klops', NULL, 'M', NULL,
NULL, NULL)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (23, 'Winicjusz', 'W�ymord', NULL, 'M',
NULL, NULL, NULL)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (12, 'Alberta', 'Ananas', TO_DATE('1991-
03-05', 'YYYY-MM-DD'), 'K', 12345678901, 3, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (13, 'Salomea', '�liwka', TO_DATE('1992-
05-15', 'YYYY-MM-DD'), 'K', 12345678902, 3, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (14, 'Pulchernia', 'P�czek', TO_DATE
('1993-08-14', 'YYYY-MM-DD'), 'K', 12345678903, 22, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (15, 'Gryzelda', 'Gruszka', TO_DATE('1990
-12-24', 'YYYY-MM-DD'), 'K', 12345678904, 23, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (16, 'Tymoteusz', 'Tymianek', TO_DATE
('1993-11-21', 'YYYY-MM-DD'), 'M', 12345678905, 23, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (17, 'Klara', 'Koperek', TO_DATE('1994-03
-22', 'YYYY-MM-DD'), 'K', 12345678906, 28, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (18, 'Melchior', 'Melon', TO_DATE('1995-
08-09', 'YYYY-MM-DD'), 'M', 12345678907, 29, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (19, 'Hieronim', 'Kapusta', TO_DATE('1994
-08-09', 'YYYY-MM-DD'), 'M', 12345678908, 29, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (20, 'Brunchilda', 'Banan', TO_DATE('1995
-07-07', 'YYYY-MM-DD'), 'K', 12345678909, 28, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (21, 'Salomon', 'Seler', TO_DATE('1994-11
-05', 'YYYY-MM-DD'), 'M', 12345678910, 22, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (22, 'Bonifacy', 'B�b', TO_DATE('1996-03-
09', 'YYYY-MM-DD'), 'M', 12345678911, 3, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (24, 'Pafnucy', 'Papryka', TO_DATE('1997-
02-19', 'YYYY-MM-DD'), 'M', 12345678912, 3, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (25, 'Pankracy', 'Por', TO_DATE('1995-07-
09', 'YYYY-MM-DD'), 'M', 12345678913, 29, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (26, 'Cecylia', 'Cebula', TO_DATE('1997-
12-02', 'YYYY-MM-DD'), 'K', 12345678914, 29, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (27, 'Dezydery', 'D�b', TO_DATE('1998-01-
22', 'YYYY-MM-DD'), 'M', 12345678915, 29, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (28, 'Konstancja', 'Koperek', TO_DATE
('1996-02-02', 'YYYY-MM-DD'), 'K', 12345678919, 29, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (29, 'Judyta', 'Jarmu�', TO_DATE('1997-08
-28', 'YYYY-MM-DD'), 'K', 12345678916, 29, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (30, 'Klaudiusz', 'Karczoch', TO_DATE
('1996-09-06', 'YYYY-MM-DD'), 'M', 12345678917, 29, 3)
INTO U_OSOBA (IDOSOBA, IMIE, NAZWISKO, DATAURODZENIA, PLEC, PESEL, IDMIASTO, IDPANSTWO) VALUES (31, 'Sykstus', 'Szczaw', TO_DATE('1997-
10-05', 'YYYY-MM-DD'), 'M', 12345678918, 29, 3)
SELECT * FROM dual;

------------------------------------------------------------------------------------------------------

INSERT ALL
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (12, 's2121', TO_DATE('2011-09-12', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (13, 's2126', TO_DATE('2011-09-13', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (14, 's2101', TO_DATE('2011-08-19', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (15, 's2135', TO_DATE('2011-10-01', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (16, 's3162', TO_DATE('2012-08-12', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (17, 's3177', TO_DATE('2012-09-23', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (18, 's3045', TO_DATE('2012-07-22', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (19, 's4120', TO_DATE('2013-08-05', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (20, 's4022', TO_DATE('2013-07-16', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (21, 's4004', TO_DATE('2013-07-06', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (22, 's4321', TO_DATE('2013-09-22', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (24, 's4322', TO_DATE('2013-09-22', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (25, 's4323', TO_DATE('2013-09-22', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (26, 's5122', TO_DATE('2014-06-11', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (27, 's5131', TO_DATE('2014-07-17', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (28, 's5138', TO_DATE('2014-07-22', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (29, 's5141', TO_DATE('2014-08-12', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (30, 's5144', TO_DATE('2014-08-22', 'YYYY-MM-DD'))
INTO STUDENT (IDOSOBA, NRINDEKSU, DATAREKRUTACJI) VALUES (31, 's5149', TO_DATE('2014-09-01', 'YYYY-MM-DD'))
SELECT * FROM dual;

-----------------------------------------------------------------------------------------------

INSERT ALL
INTO Katedra (IDKATEDRA, KATEDRA, IDOSOBA) VALUES (1, 'Baz danych', 6)
INTO Katedra (IDKATEDRA, KATEDRA, IDOSOBA) VALUES (2, 'In�ynierii oprogramowania', 1)
INTO Katedra (IDKATEDRA, KATEDRA, IDOSOBA) VALUES (3, 'Sztucznej inteligencji', 8)
SELECT * FROM dual;

-----------------------------------------------------------------------------------------------

INSERT ALL
INTO DYDAKTYK (IDOSOBA, STOPIEN, PODLEGA, PLACA, IDKATEDRA) VALUES (1, 'Profesor Doktor habilitowany', NULL, 3500, NULL)
INTO DYDAKTYK (IDOSOBA, STOPIEN, PODLEGA, PLACA, IDKATEDRA) VALUES (2, 'Magister', 1, 2000, NULL)
INTO DYDAKTYK (IDOSOBA, STOPIEN, PODLEGA, PLACA, IDKATEDRA) VALUES (3, 'In�ynier', 1, 1800, NULL)
INTO DYDAKTYK (IDOSOBA, STOPIEN, PODLEGA, PLACA, IDKATEDRA) VALUES (4, 'Profesor Doktor habilitowany', NULL, 3500, NULL)
INTO DYDAKTYK (IDOSOBA, STOPIEN, PODLEGA, PLACA, IDKATEDRA) VALUES (5, 'Doktor', 4, 2500, NULL)
INTO DYDAKTYK (IDOSOBA, STOPIEN, PODLEGA, PLACA, IDKATEDRA) VALUES (6, 'Doktor habilitowany', 1, 3000, NULL)
INTO DYDAKTYK (IDOSOBA, STOPIEN, PODLEGA, PLACA, IDKATEDRA) VALUES (7, 'Magister', 9, 2000, NULL)
INTO DYDAKTYK (IDOSOBA, STOPIEN, PODLEGA, PLACA, IDKATEDRA) VALUES (8, 'In�ynier', 5, 1800, NULL)
INTO DYDAKTYK (IDOSOBA, STOPIEN, PODLEGA, PLACA, IDKATEDRA) VALUES (9, 'Doktor habilitowany', 4, 3000, NULL)
INTO DYDAKTYK (IDOSOBA, STOPIEN, PODLEGA, PLACA, IDKATEDRA) VALUES (10, 'Doktor', 1, 2500, NULL)
INTO DYDAKTYK (IDOSOBA, STOPIEN, PODLEGA, PLACA, IDKATEDRA) VALUES (11, 'Magister', 9, 2000, NULL)
INTO DYDAKTYK (IDOSOBA, STOPIEN, PODLEGA, PLACA, IDKATEDRA) VALUES (12, 'In�ynier', NULL, 1800, NULL)
SELECT * FROM dual;

-------------------------------------------------------------------------------------------------
INSERT ALL
INTO PRZEDMIOT(IDPRZEDMIOT, PRZEDMIOT, SYMBOL, IDKATEDRA) VALUES (1,'Systemy baz danych', 'SBD', 1)
INTO PRZEDMIOT(IDPRZEDMIOT, PRZEDMIOT, SYMBOL, IDKATEDRA) VALUES (2,'Relacyjne bazy danych', 'RBD', 1)
INTO PRZEDMIOT(IDPRZEDMIOT, PRZEDMIOT, SYMBOL, IDKATEDRA) VALUES (3,'Algebra liniowa i geometria', 'ALG', NULL)
INTO PRZEDMIOT(IDPRZEDMIOT, PRZEDMIOT, SYMBOL, IDKATEDRA) VALUES (4,'Matematyka dyskretna', 'MAD', NULL)
INTO PRZEDMIOT(IDPRZEDMIOT, PRZEDMIOT, SYMBOL, IDKATEDRA) VALUES (5,'Systemy operacyjne', 'SOP', NULL)
INTO PRZEDMIOT(IDPRZEDMIOT, PRZEDMIOT, SYMBOL, IDKATEDRA) VALUES (6,'Analiza matematyczna I', 'AM1', NULL)
INTO PRZEDMIOT(IDPRZEDMIOT, PRZEDMIOT, SYMBOL, IDKATEDRA) VALUES (7,'In�ynieria oprogramowania', 'INO', 2)
INTO PRZEDMIOT(IDPRZEDMIOT, PRZEDMIOT, SYMBOL, IDKATEDRA) VALUES (8,'Projektowanie baz danych', 'BDA', 1)
INTO PRZEDMIOT(IDPRZEDMIOT, PRZEDMIOT, SYMBOL, IDKATEDRA) VALUES (9,'Administrowanie baz� danych', 'ADM', 1)
INTO PRZEDMIOT(IDPRZEDMIOT, PRZEDMIOT, SYMBOL, IDKATEDRA) VALUES (10,'Analiza matematyczna II', 'AM2', NULL)
INTO PRZEDMIOT(IDPRZEDMIOT, PRZEDMIOT, SYMBOL, IDKATEDRA) VALUES (11,'Algorytmy i struktury danych', 'ASD', 3)
INTO PRZEDMIOT(IDPRZEDMIOT, PRZEDMIOT, SYMBOL, IDKATEDRA) VALUES (12,'Administracja system�w operacyjnych', 'ASO', NULL)
SELECT * FROM dual;

-------------------------------------------------------------------------------------------------

INSERT ALL
INTO PrzedmiotPoprzedzajacy (IDPOPRZEDNIK, IDPRZEDMIOT) VALUES (2,1)
INTO PrzedmiotPoprzedzajacy (IDPOPRZEDNIK, IDPRZEDMIOT) VALUES (3,4)
INTO PrzedmiotPoprzedzajacy (IDPOPRZEDNIK, IDPRZEDMIOT) VALUES (6, 10)
INTO PrzedmiotPoprzedzajacy (IDPOPRZEDNIK, IDPRZEDMIOT) VALUES (4, 11)
INTO PrzedmiotPoprzedzajacy (IDPOPRZEDNIK, IDPRZEDMIOT) VALUES (5,12)
SELECT * FROM dual;

-------------------------------------------------------------------------------------------------
INSERT ALL
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (12, 'WIs I.1', '2011_12')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (12, 'WIs II.1', '2011_12')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (12, 'WIs III.1', '2012_13')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (12, 'WIs IV.1', '2012_13')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (12, 'WIs V.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (12, 'WIs VI.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (13, 'WIs I.1', '2011_12')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (13, 'WIs II.1', '2011_12')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (13, 'WIs III.1', '2012_13')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (13, 'WIs IV.1', '2012_13')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (13, 'WIs V.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (13, 'WIs VI.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (14, 'WIs I.1', '2011_12')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (14, 'WIs II.1', '2011_12')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (14, 'WIs III.1', '2012_13')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (14, 'WIs IV.1', '2012_13')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (14, 'WIs V.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (14, 'WIs VI.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (15, 'WIs I.1', '2011_12')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (15, 'WIs II.1', '2011_12')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (15, 'WIs III.1', '2012_13')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (15, 'WIs IV.1', '2012_13')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (15, 'WIs V.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (15, 'WIs VI.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (16, 'WIs I.1', '2012_13')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (17, 'WIs I.1', '2012_13')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (18, 'WIs I.1', '2012_13')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (16, 'WIs II.1', '2012_13')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (17, 'WIs II.1', '2012_13')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (18, 'WIs II.1', '2012_13')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (16, 'WIs III.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (17, 'WIs III.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (18, 'WIs III.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (16, 'WIs IV.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (17, 'WIs IV.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (18, 'WIs IV.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (19, 'WIs I.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (20, 'WIs I.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (21, 'WIs I.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (22, 'WIs I.2', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (24, 'WIs I.2', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (25, 'WIs I.2', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (19, 'WIs II.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (20, 'WIs II.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (21, 'WIs II.1', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (22, 'WIs II.2', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (24, 'WIs II.2', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (25, 'WIs II.2', '2013_14')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (26, 'WIs I.1', '2014_15')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (27, 'WIs I.1', '2014_15')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (28, 'WIs I.1', '2014_15')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (29, 'WIs I.2', '2014_15')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (30, 'WIs I.2', '2014_15')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (31, 'WIs I.2', '2014_15')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (26, 'WIs II.1', '2014_15')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (27, 'WIs II.1', '2014_15')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (28, 'WIs II.1', '2014_15')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (29, 'WIs II.2', '2014_15')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (30, 'WIs II.2', '2014_15')
INTO StudentGrupa (IDOSOBA, NRGRUPY, IDROKAKADEMICKI) VALUES (31, 'WIs II.2', '2014_15')
SELECT * FROM dual;
-----------------------------------------------------------------------------------------------


INSERT ALL
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (12, 6, '2012-01-20', 4.0, 1)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (13, 6, '2012-01-20', 4.5, 1)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (14, 6, '2012-01-20', 3.0, 1)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (15, 6, '2012-01-20', 5.0, 1)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (16, 6, '2013-01-25', 2.0, 1)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (17, 6, '2013-01-25', 4.5, 1)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (18, 6, '2013-01-25', 3.0, 1)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (16, 6, '2013-02-02', 3.0, 1)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (19, 6, '2014-01-18', 5.0, 1)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (20, 6, '2014-01-18', 4.0, 1)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (21, 6, '2014-01-18', 4.5, 1)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (22, 6, '2014-01-18', 2.0, 1)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (22, 6, '2014-01-30', 4.0, 1)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (12, 2, '2012-01-22', 5.0, 9)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (13, 2, '2012-01-22', 4.5, 9)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (14, 2, '2012-01-22', 4.0, 9)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (15, 2, '2012-01-22', 5.0, 9)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (16, 2, '2013-01-23', 5.0, 9)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (17, 2, '2013-01-23', 4.5, 9)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (18, 2, '2013-01-23', 2.0, 9)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (18, 2, '2013-02-01', 3.0, 9)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (19, 2, '2014-01-18', 3.0, 9)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (20, 2, '2014-01-18', 4.0, 9)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (21, 2, '2014-01-18', 3.5, 9)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (22, 2, '2014-01-18', 5.0, 9)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (12, 12, '2014-01-18', 4.0, 8)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (13, 12, '2014-01-18', 4.5, 8)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (14, 12, '2014-01-18', 4.0, 8)
INTO Ocena (IdStudent, IdPrzedmiot, DataWystawienia, Ocena, IdDydaktyk) VALUES (15, 12, '2014-01-18', 3.0, 8)
SELECT * FROM dual;