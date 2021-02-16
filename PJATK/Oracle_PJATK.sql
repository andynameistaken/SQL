/* Wypisz z tabeli Student literał Student oraz imię studenta skonkatenowane z nazwiskiem.
Między imieniem i nazwiskiem wstaw spację.
Kolumnie z imieniem i nazwiskiem nadaj alias Personalia, a literałowi nadaj alias Informacja.
*/

select 'Student' as "Informacja", STUDENT.IMIE || ' ' || STUDENT.NAZWISKO as "Personalia"
from STUDENT;

/*Z tabeli RokAkademicki wypisz identyfikator roku akademickiego oraz długość jego trwania, wyrażoną w dniach.
Identyfikatorowi nadaj alias Rok_akademicki, zaś liczbie dni nadaj alias "Długość trwania".
Aby podać liczbę dni między dwoma datami, w systemie Oracle od daty końca wystarczy odjąć datę początku.
*/

select IDROKAKADEMICKI as Rok_akademicki, DATA_ZAK - DATA_ROZP as "Długość trwania"
from ROKAKADEMICKI;

/*
Przykład 3. Wypisz bez powtórzeń numery grup z tabeli Grupa.
*/
select distinct GRUPA.NRGRUPY
from GRUPA;

/*------------------------------Lekcja 04 Blok 4 - Polecenie SELECT - klauzula WHERE---------------------*/

/*
Wypisz nazwiska, zarobki i stanowiska pracowników z tabeli Emp, którzy pracują w dziale o numerze 10:
*/

select EMP.ENAME, EMP.SAL, EMP.JOB
from EMP
where EMP.DEPTNO = 10;

-- Klauzula WHERE pozwala zdefiniować warunek logiczny,  ograniczający zwracane w wyniku instrukcji
--  SELECT wiersze tylko do tych, dla których przyjmuje on wartość logiczną TRUE.
-- Wiersze, dla których warunek przyjmuje wartość FALSE lub NULL są z wyniku eliminowane.

/*
Wypisz numery, nazwiska, stanowiska i pensje pracowników, których
zarobki są większe lub równe 1100 i którzy pracują na stanowisku 'CLERK'.
*/

select EMP.EMPNO, EMP.ENAME, EMP.SAL
from EMP
where SAL >= 1100
  and EMP.JOB = 'CLERK';


/*
Przykład 2. Wypisz z tabeli Student wszystkie dane dotyczące kobiet.
*/

select *
from STUDENT
where STUDENT.PLEC = 'K';


/*
Przykład 4. Wypisz imiona, nazwiska, daty urodzenia oraz płeć wszystkich studentów
urodzonych po 30 stycznia 2012 roku i nie później niż 22 stycznia 2013 roku.
*/

-- select EMP.EMPNO,


select STUDENT.IMIE, STUDENT.NAZWISKO, STUDENT.PLEC, STUDENT.DATAURODZENIA
from STUDENT
where to_char(STUDENT.DATAURODZENIA, 'MM.DD.YYYY') > '01.01.1997';

select to_char(STUDENT.DATAURODZENIA, 'MM.DD.YYYY')
from STUDENT;

-- select *
-- from STUDENT
-- where cast()

select trunc(DATAURODZENIA, 'MM')
from STUDENT;


select nazwisko, imie, trunc(DATAURODZENIA), dataurodzenia
from STUDENT
where dataurodzenia > '01-JAN-97';

-- select *
-- from STUDENT
-- where DATAURODZENIA > '01-jan-97'
-- and DATAURODZENIA <=  '9'

/*
Przykład 5. Wypisz numery grup z lat akademickich 2012_13, 2013_14, 2014_15.
*/

select GRUPA.NRGRUPY
from GRUPA
where GRUPA.IDROKAKADEMICKI = '2012_13'
   or GRUPA.IDROKAKADEMICKI = '2013_14'
   or GRUPA.IDROKAKADEMICKI = '2013_15';


/*Przykład 6. Wypisz imiona, nazwiska, daty urodzenia, płeć oraz identyfikator miejscowości zamieszkania wszystkich studentów z miejscowości 3 oraz 22.
*/



select STUDENT.IMIE, STUDENT.NAZWISKO, STUDENT.DATAURODZENIA, STUDENT.PLEC, STUDENT.IDMIASTO
from STUDENT
where STUDENT.IDMIASTO = 3
   or STUDENT.IDMIASTO = 22;


/*
Przykład 7. Wypisz imiona, nazwiska, daty urodzenia, płeć oraz identyfikator miejscowości zamieszkania wszystkich kobiet urodzonych przed 1 stycznia 1994 z miejscowości 3 oraz 22.
*/

select STUDENT.IMIE, STUDENT.NAZWISKO, STUDENT.DATAURODZENIA, STUDENT.PLEC, STUDENT.PLEC, STUDENT.IDMIASTO
from STUDENT
where STUDENT.PLEC = 'K'
  and STUDENT.DATAURODZENIA < '1-JAN-1994'
  and (STUDENT.IDMIASTO = 3 or STUDENT.IDMIASTO = 22);


/*
ORDER BY

Wypisz numery, nazwiska, stanowiska i pensje pracowników. Wynik posortuj rosnąco według pensji.
*/

select emp.ENAME, EMP.EMPNO, emp.JOB, EMP.SAL
from EMP
order by SAL;


/*
Wypisz numery, nazwiska, stanowiska i pensje pracowników. Wynik posortuj rosnąco według stanowiska, a w drugiej kolejności malejąco według pensji.
*/

select EMP.EMPNO, EMP.ENAME, EMP.JOB, EMP.SAL
from EMP
order by JOB,
		 SAL desc;


/*
Przykład 1. Wypisz imiona, nazwiska i daty urodzenia wszystkich kobiet.
Dane posortuj po dacie urodzenia zaczynając od osób najmłodszych.
*/

select s.IMIE, s.NAZWISKO, s.DATAURODZENIA
from STUDENT s
where s.PLEC = 'K'
order by s.DATAURODZENIA desc;

/*
Przykład 2. Wypisz numery indeksów, imiona, nazwiska oraz daty rekrutacji wszystkich studentów.
Dane posortuj tak, jak sortuje się listy z personaliami osób (w pierwszej kolejności po nazwisku, a w drugiej po imieniu).
*/
select s.NRINDEKSU, s.IMIE, s.NAZWISKO, s.DATAREKRUTACJI
from STUDENT s
order by s.NAZWISKO, s.IMIE;

SELECT Student.NrIndeksu, Student.Imie "Imię studenta", Student.Nazwisko Nazwisko_studenta, Student.DataRekrutacji
FROM Student
ORDER BY Nazwisko_studenta, "Imię studenta";

/*
Przykład 3. Wypisz numery indeksów, imiona, nazwiska oraz daty rekrutacji wszystkich studentów.
Dane posortuj malejąco według wieku studenta w chwili rekrutacji mierzonego
liczbą dni między datą rekrutacji a datą urodzenia.
*/

select STUDENT.NRINDEKSU, STUDENT.IMIE, STUDENT.NAZWISKO, STUDENT.DATAREKRUTACJI
from STUDENT
order by STUDENT.DATAREKRUTACJI - STUDENT.DATAURODZENIA desc;

/*----------------Lekcja 05 Blok 2 - Polecenie SELECT - operator BETWEEN-----------------------*/


/*
operator przynależności do listy wartości:
 x [NOT] IN (x1,....)
*/

/*
Przykład 1. Wypisz z tabeli Student numery indeksów, imiona,
nazwiska oraz identyfikatory miast studentów z miast o identyfikatorach 1, 3, 22, 28 oraz 29.
*/

select s.NRINDEKSU, s.IMIE, s.NAZWISKO, s.IDMIASTO
from STUDENT s
where s.IDMIASTO in (1, 3, 22, 28, 29);

/*Przykład 2. Wypisz z tabeli Grupa numery grup oraz identyfikatory lat akademickich dla wszystkich lat poza 2011_12, 2012_13 i 2013_14.
*/

select GRUPA.NRGRUPY, GRUPA.IDROKAKADEMICKI
from GRUPA
where GRUPA.IDROKAKADEMICKI not in ('2011_12', '2012_13', '2013_14');

/*Przykład 3. Wypisz z tabeli Student numery indeksów, imiona, nazwiska oraz identyfikatory
miast wszystkich kobiet z miast o identyfikatorach 3 oraz 22.
*/

select STUDENT.NRINDEKSU, STUDENT.IMIE, STUDENT.NAZWISKO, STUDENT.IDMIASTO
from STUDENT
where STUDENT.PLEC = 'K'
  and STUDENT.IDMIASTO in (3, 22);


/*----------------operator należenia do przedziału:   x [NOT] BETWEEN z AND y */

-- UWZGLĘDNIA TYLKO PRZEDZIAŁY DOMKNIĘTE

/*
Przykład 1. Wypisz numery indeksów, imiona, nazwiska i daty urodzenia wszystkich studentów urodzonych w roku 1995.
*/
select STUDENT.NRINDEKSU, STUDENT.IMIE, STUDENT.NAZWISKO, STUDENT.DATAURODZENIA
from STUDENT
where extract(year from DATAURODZENIA) = '1995';


SELECT Student.Imie, Student.Nazwisko
FROM Student
WHERE Student.Nazwisko BETWEEN 'A' AND 'M'
ORDER BY Student.Nazwisko;


select ENAME
from EMP
where ENAME between 'A' and 'D'
order by ENAME;

/*-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
Lekcja 05 Blok 3 - Polecenie SELECT - operator LIKE


Kolejnym operatorem jest operator wzorca w tekście:
 x [NOT] LIKE y
W argumencie y mogą (a nawet powinny) występować symbole uniwersalne zastępujące jeden znak lub ciąg znaków.

Są dwa rodzaje znaków uniwersalnych:
znak podkreślenia _ oznaczający dowolny jeden znak,
znak % oznaczający dowolny ciąg znaków.

Gdy Ename = 'Kowalski', to oba predykaty Ename LIKE 'Kowal%' i Ename LIKE 'Kowalsk_' są spełnione.
 	*/

/*Przykład 1. Wypisz numery indeksów, imiona oraz nazwiska wszystkich studentów, u których drugą literą nazwiska jest litera 'a'.
*/

select STUDENT.NRINDEKSU, STUDENT.IMIE, STUDENT.NAZWISKO
from STUDENT
where NAZWISKO like '_a%';

/*Przykład 2.
 Wypisz numery indeksów, imiona oraz nazwiska wszystkich
 studentów, których imiona zawierają literę 'P', a nie zawierają litery 'u'.
*/

select STUDENT.NRINDEKSU, STUDENT.IMIE, STUDENT.NAZWISKO
from STUDENT
where STUDENT.IMIE like '%P%'
  and STUDENT.IMIE not like '%u%';

/*_-_-_-_-_-_-_-_-_-_-_-Lekcja 05 Blok 4 - Polecenie SELECT - pseudowartość NULL w wyrażeniach, operator IS NULL
*/

--zamienianie wartości NULL na znaczącą w Oracle
--NVL(wyrażenie, zamienić_na)


/*Przykład 1. Wypisz nazwę miasta oraz identyfikator państwa z tabeli Miasto.
 Dla miast, które nie mają wpisanego identyfikatora państwa, wyświetl w polu z identyfikatorem państwa -1.*/


select MIASTO.MIASTO, nvl(MIASTO.IDPANSTWO, -1)
from MIASTO;

/*Przykład 3. Wypisz z tabeli Miasto wszystkie dane o miastach, które nie mają wpisanego identyfikatora państwa.*/
select *
from MIASTO
where MIASTO.IDPANSTWO is null;

-----------------------------------

/*
NVL2(wyrażenie1, wyrażenie2, wyrażenie3)
inaczej
NVL2(co_sprawdzać, NIE_Null_Out, NULL_Out)
Wartością funkcji NVL2 jest wyrażenie3, jeśli wyrażenie1 jest NULL, zaś w przeciwnym przypadku wyrażenie2.
*/

--Obok nazwiska pracownika wypisz prowizję oraz informację, czy pracuje w systemie prowizyjnym, czy nie.
SELECT Emp.Ename, Comm, NVL2(Emp.Comm, 'Tak', 'Nie')
FROM Emp;

/*
COALESCE(wyrażenie1, wyrażenie2 [, wyrażenie3]...)
Wartością funkcji COALESCE jest pierwsza wartość na podanej liście, która nie jest pusta.
Jeśli wartości wszystkich wyrażeń dają NULL, to funkcja zwraca NULL.
*/
SELECT Emp.Ename, Emp.Comm, Emp.Mgr, Emp.Sal, COALESCE(Emp.Comm, Emp.Mgr, Emp.Sal, ) as "Coalesce"
FROM Emp;

-- CASE: switch inaczej
SELECT Emp.Ename,
	   Emp.Job,
	   CASE Emp.Job
		   WHEN 'CLERK' THEN 'Urzędnik'
		   WHEN 'SALESMAN' THEN 'Sprzedawca'
		   WHEN 'MANAGER' THEN 'Kierownik'
		   WHEN 'ANALYST' THEN 'Analityk'
		   WHEN 'PRESIDENT' THEN 'Prezydent'
		   ELSE 'Brak tłumaczenia'
			   END
		as Stanowisko
FROM Emp;

--DECODE: krótszy switch

SELECT Emp.Ename,
	   Emp.Job,
	   DECODE(
		   Emp.Job,
		   'CLERK', 'Urzędnik',
		   'SALESMAN', 'Sprzedawca',
		   'MANAGER', 'Kierownik',
		   'ANALYST', 'Analityk',
		   'PRESIDENT', 'Prezydent',
		   'Brak tłumaczenia')
		as Stanowisko
FROM Emp;


/*
Instrukcja CASE zamiast z wyrażeniem może również występować z predykatem:
 CASE
  WHEN predykat THEN wyrażenie
  ...
  [ELSE wyrażenie]
END
*/

/*
Przykład.
Obok nazwiska, stanowiska i pensji pracownika, wypisz informację o tym,
do jakiej kategorii należy jego pensja – (0, 1000) – Niska, <1000, 3000) – Średnia, <3000, ∞) – Wysoka.
Zadbaj o to, aby dla pensja <= 0 pojawił się napis Poza skalą. Kategorii nadaj alias Kategoryzacja
*/

select EMP.ENAME,
			 EMP.JOB,
			 EMP.SAL,
			 case
				 when EMP.SAL > 0 and EMP.SAL < 1000 then 'Niska'
				 when EMP.SAL > 1000 and EMP.SAL < 3000 then 'Srednia'
				 when EMP.SAL >= 3000 then 'Wysoka'
				 else 'Poza skala'
			 end as Kategoryzacja
from EMP;

/*
Przykład 1. Wypisz numery indeksów, imiona, nazwiska oraz płeć wszystkich studentów.
Płeć wypisz jako Kobieta, Mężczyzna, Nie podano. Kolumnie z płcią nadaj alias Płeć.
*/
select STUDENT.NRINDEKSU,
       STUDENT.IMIE,
       STUDENT.NAZWISKO,
       case
           when STUDENT.PLEC = 'K' then 'Kobieta'
           when STUDENT.PLEC = 'M' then 'Mezczyzna'
           else 'Nie Podano'
       end as Plec
from STUDENT;

-- Opcja z Decode

select STUDENT.NRINDEKSU,
       STUDENT.IMIE,
       STUDENT.NAZWISKO,
       decode(STUDENT.PLEC, 'K', 'Kobieta', 'M', 'Mezczyza' )
from STUDENT;

/*Przykład 2.
Wypisz nazwę miasta oraz identyfikator państwa z tabeli Miasto.
Dla miast, które nie mają wpisanego identyfikatora państwa,
 wyświetl w polu z identyfikatorem państwa -1.
 	*/

--nvl
select MIASTO.MIASTO,
       nvl(MIASTO.IDPANSTWO, -1)
from MIASTO;

--coalesce
select MIASTO.MIASTO,
       coalesce(MIASTO.IDPANSTWO, -1)
from MIASTO;

--decode
select MIASTO.MIASTO,
       decode(
	      MIASTO.IDPANSTWO, null, -1,
		    MIASTO.IDMIASTO
		    )
from MIASTO;

--case
select MIASTO.MIASTO,
			case when MIASTO.IDPANSTWO is not null then MIASTO.IDPANSTWO
			else -1
			end
from MIASTO;

SELECT Miasto.Miasto,
       CASE WHEN Miasto.IdPanstwo IS NOT NULL THEN Miasto.IdPanstwo
       ELSE -1
       END
FROM   Miasto;


----------------------KONWERSJE-----------------------------------------------

-- CAST(wyrażenie AS typ_danych)

/*Obok nazwiska pracownika wypisz jego prowizję.
Jeśli pracownik nie ma prowizji wypisz tekst Brak prowizji. Prowizji nadaj alias Prowizja.*/

select ENAME,
			 nvl(cast(comm as VARCHAR(5)), 'brak prowizji')
from EMP;

-- TO_CHAR

	/*Funkcja TO_CHAR(wyrażenie, format) służy do konwertowania wyrażenia danego typu (np. daty, liczby) na napis.
	Na pierwszym argumencie podaje się wyrażenie, a na drugim format wyjściowy
	(np. wyświetlania lub wstawiania danych) tego wyrażenia.*/


/*Przykład.

Obok nazwiska pracownika wypisz datę zatrudnienia w formacie 'DD-MM-YYYY' (
dwucyfrowy dzień, dwucyfrowy numer miesiąca, czterocyfrowy rok). Dacie zatrudnienia nadaj alias Hiredate.*/

select ENAME,
			 to_char(EMP.HIREDATE, 'DD-MM-YYYY')
from EMP;

-- TO_DATE
/*	Funkcja TO_DATE(napis, format) służy do konwertowania napisu na datę.
Na pierwszym argumencie podaje się napis, a na drugim format, w jakim ten napis jest wprowadzany.*/

INSERT ALL
	INTO RokAkademicki
		(IdRokAkademicki, Data_rozp, Data_zak)
	VALUES
		('2011_12', TO_DATE('2011-10-01', 'YYYY-MM-DD'), TO_DATE('2012-08-31', 'YYYY-MM-DD'))

-- TO_NUMBER(napis, format)
		/*służy do konwertowania napisu na liczbę.
		Na pierwszym argumencie podaje się napis, a na drugim format, w jakim ten napis jest wprowadzany.*/



/*Przykład 1. Wypisz imiona, nazwiska, daty urodzenia studentów urodzonych w niedzielę.*/


select to_char(STUDENT.DATAURODZENIA, 'DAY')
from STUDENT;

SELECT Student.Imie, Student.Nazwisko, Student.DataUrodzenia
FROM   Student
WHERE  TO_CHAR(Student.DataUrodzenia, 'DAY') LIKE 'SUNDAY%';


/*Przykład 2. Wypisz nazwę miasta oraz identyfikator państwa z tabeli Miasto.
 Dla miast, które nie mają wpisanego identyfikatora państwa,
  wyświetl w polu z identyfikatorem państwa napis Do uzupełnienia.
*/

select MIASTO.MIASTO,
			 nvl2(MIASTO.IDMIASTO, to_char(MIASTO.IDMIASTO), 'Do uzupelnienia')
from MIASTO;

-- select nvl2(MIASTO.IDPANSTWO, to_char(MIASTO.IDPANSTWO), 'do uzupelnienia');

/*
---------------------------------Funkcje operujące na tekście--------------------------------------------------------------

LENGTH(wyrażenie_napisowe) – zwraca liczbę znaków w wyrażeniu tekstowym.

SUBSTR(wyrażenie_napisowe, liczba_od, liczba_znakow) – zwraca liczbę znaków określoną w
trzecim argumencie, począwszy od znaku określonego w drugim argumencie.

REPLACE(wyrażenie_napisowe, tekst_poszukiwany, tekst_zastępujący) – wyszukuje i zamienia
 fragment tekstu (wszystkie argumenty mogą być wyrażeniami).

REVERSE(wyrażenie_napisowe) – odwraca tekst.

TRIM (wyrażenie_napisowe) – obcina spacje z obu stron tekstu.

LTRIM (wyrażenie_napisowe) – obcina spacje z lewej strony tekstu.

RTRIM(wyrażenie_napisowe) – obcina spacje z prawej strony tekstu.

UPPER(wyrażenie_napisowe) – zwraca tekst wyrażenia zapisany wielkimi literami.

LOWER(wyrażenie_napisowe) – zwraca tekst wyrażenia zapisany małymi literami.

INITCAP(wyrażenie_napisowe) – zwraca tekst wyrażenia zapisany z wielkiej litery z pozostałymi małymi literami.

CONCAT(wyrażenie1, wyrażenie2) – funkcja konkatenacji równoważna operatorowi ||.
 	*/

select ENAME,
			 length(ENAME) as length,
			 reverse(ENAME) as reverse,
			 lower(ename) as lower,
			 initcap(ENAME) as initcap,
			 concat(ENAME, ' tekst') as concat
from EMP;


/*
---------------------------FUNKCJE-DATY----------------------------------------------------------------------------
ADD_MONTHS(d, x) – zwraca datę d plus x miesięcy.

MONTHS_BETWEEN(data1, data2) – zwraca liczbę miesięcy między data1 a data2 (data1 − data2).

EXTRACT(część_daty FROM data1) – np. EXTRACT(YEAR FROM Hiredate) – zwraca odpowiednią część daty z data1.
Przy czym część_daty to m.in. YEAR, MONTH, DAY, HOUR, MINUTE, SECOND.

*/

select EMP.HIREDATE as hiredate,
			 add_months(EMP.HIREDATE, 3) as add_months3
from EMP;

SELECT MONTHS_BETWEEN
   (TO_DATE('02-02-1995','MM-DD-YYYY'),
    TO_DATE('01-01-1995','MM-DD-YYYY') ) "Months"
    FROM DUAL;

select extract(DAY  from HIREDATE)
from EMP;

select extract(month  from HIREDATE)
from EMP;

select HIREDATE
from EMP;


/*--------------------------FUNKCJE-LICZBOWE----------------------------------------------------------------------
Funkcje operujące na liczbach

ROUND(x [, y]) – zaokrągla x do y miejsc po przecinku. Domyslnie 0.

TRUNC(x [, y]) – obcina x do y miejsc po przecinku. Domyslnie 0.

MOD(x, y) – zwraca resztę z dzielenia x przez y.

*/



/*
Przykład.
Obok nazwiska i daty zatrudnienia pracownika wypisz, w którym roku został zatrudniony,
ile lat pracuje oraz kiedy będzie obchodził 40-lecie pracy. Nadaj aliasy.
*/

select emp.ENAME as nazwisko,
			 emp.HIREDATE as data_zatrudnienia,
			 extract(year from emp.HIREDATE) as rok_zatrudnienia,
			 round(months_between(sysdate, EMP.HIREDATE)/12 , 0) as ile_lat_peacuje,
			 add_months(EMP.HIREDATE, 480) as czterdziesci_lat
from EMP;


/*Przykład 1. Wypisz imiona, nazwiska oraz inicjały studentów, którzy
 rekrutowali się w zeszłym roku kalendarzowym.
Inicjały wypisz jako I. N. Kolumnie z inicjałami nadaj alias Inicjały.*/

select STUDENT.IMIE,
			 STUDENT.NAZWISKO,
			 substr(STUDENT.IMIE, 1,1) || substr(STUDENT.NAZWISKO, 1,1)
from STUDENT;

/*Przykład 2.
Wypisz z tabeli Student imiona, nazwiska oraz wiek studentów w chwili rekrutacji w latach.
Wynik zaokrąglij do pełnych lat. Kolumnie z wiekiem nadaj alias Wiek.
*/

select STUDENT.IMIE,
			 STUDENT.NAZWISKO,
			 round(months_between(STUDENT.DATAREKRUTACJI, STUDENT.DATAURODZENIA) / 12, 0) as Wiek
from STUDENT;


/*Przykład 3.
Sprawdź, czy są studenci, którzy mają imiona lub nazwiska wpisane samymi wielkimi literami.
*/

select STUDENT.IMIE,
			 STUDENT.NAZWISKO
from STUDENT
where STUDENT.IMIE = upper(STUDENT.IMIE)
or STUDENT.NAZWISKO = upper(STUDENT.NAZWISKO);

/*Przykład 4. Sprawdź, czy każdy wpisany numer Pesel ma 11 znaków.
*/

select STUDENT.PESEL
from STUDENT
where length(rtrim(STUDENT.PESEL)) <> 11;



-------------------------------JOIN---------------------------------------------------------------------------------

/*
Przykład:

Obok numeru i nazwiska pracownika, wypisz nazwę działu, w którym ten pracownik pracuje.
 */

select EMP.EMPNO,
			 EMP.ENAME,
			 DEPT.DNAME
from EMP,
		 DEPT
where EMP.DEPTNO = DEPT.DEPTNO;

SELECT Emp.Empno, Emp.Ename, Dept.Dname
FROM   Emp, Dept
where ENAME = 'MARTIN';


/*
Przykład 1. Obok imienia i nazwiska osoby wypisz nazwę miejscowości, w której ta osoba mieszka.
*/

SELECT Osoba.Imie, Osoba.Nazwisko, Miasto.Miasto
FROM   Osoba, Miasto
WHERE  Osoba.IdMiasto = Miasto.IdMiasto;

/*
Przykład 2. Obok nazwy i symbolu przedmiotu, wypisz nazwę katedry odpowiedzialnej za przedmiot.

*/

SELECT  Przedmiot.Przedmiot, Przedmiot.Symbol, Katedra.Katedra
FROM	Przedmiot, Katedra
WHERE   Przedmiot.IdKatedra = Katedra.IdKatedra;

/*Przykład 3. Czasami złączenie stosuje się nie po to, żeby wybrać dane z dwóch tabel, ale po to,
żeby wybierając dane z jednej tabeli, potwierdzić istnienie ich odpowiedników w innej tabeli.

Wypisz imiona, nazwiska i płeć wszystkich dydaktyków.*/

select O.IMIE,
	   O.NAZWISKO,
	   O.PLEC
from U_OSOBA O,
	 DYDAKTYK D
where O.IDOSOBA = D.IDOSOBA;

/*W
 jednym warunku WHERE możemy używać zarówno predykatów złączenia, jak i
  predykatów ograniczających, łącząc je operatorami logicznymi (pamiętając o ich priorytetach).

Przykład:

Obok numeru i nazwiska każdego urzędnika, wypisz nazwę działu, w którym pracuje.
*/

select e.ENAME,
	   e.EMPNO,
	   d.DNAME
from EMP e, DEPT d
where e.DEPTNO = d.DEPTNO
and  e.JOB = 'CLERK';

/*TO JEST TO SAMO CO INNER JOIN*/

SELECT     Emp.Empno, Emp.Ename, Dept.Dname
FROM       Emp
INNER JOIN Dept ON Emp.Deptno = Dept.Deptno
WHERE      Emp.Job = 'CLERK';

/*Przykład 1. Wypisz numery indeksów, imiona, nazwiska i daty urodzenia wszystkich studentów urodzonych w roku 1995. */

select S2.NRINDEKSU,
	   UO.NAZWISKO,
	   UO.DATAURODZENIA
from STUDENT S2
INNER JOIN U_OSOBA UO on S2.IDOSOBA = UO.IDOSOBA
where extract(year from UO.DATAURODZENIA) = '1995';

/*Przykład 2. Wypisz nazwy i symbole przedmiotów, za które odpowiedzialne są katedry o nazwach zaczynających się na literę B lub I.
*/

select *
from PRZEDMIOT P
INNER JOIN KATEDRA K on P.IDKATEDRA = K.IDKATEDRA
where K.KATEDRA like 'B%'
or K.KATEDRA like 'I%';

SELECT Przedmiot.Przedmiot, Przedmiot.Symbol
FROM   Przedmiot, Katedra
WHERE  (Katedra.Katedra LIKE 'B%' OR Katedra.Katedra LIKE 'I%')
AND    Przedmiot.IdKatedra = Katedra.IdKatedra;

/*Obok imienia i nazwiska osoby wypisz nazwę miejscowości, w której mieszka oraz nazwę kraju, w którym mieszka*/

select O.IMIE,
	   O.NAZWISKO,
	   M.MIASTO,
	   P.PANSTWO
from U_OSOBA O
INNER JOIN MIASTO M on O.IDMIASTO = M.IDMIASTO
inner join PANSTWO P on M.IDPANSTWO = P.IDPANSTWO;

/*Obok imienia i nazwiska studenta wypisz nazwę miejscowości, w której mieszka
 oraz nazwę kraju, w którym mieszka.

W tym przypadku należy zadbać o to, aby wypisane dane dotyczyły tylko studentów,
 a zatem do poprzednich złączeń trzeba dodać złączenie tabel Osoba i Student.*/

select UO.IMIE,
	   UO.NAZWISKO,
	   M.MIASTO,
	   P.PANSTWO
from STUDENT S
inner join U_OSOBA UO on S.IDOSOBA = UO.IDOSOBA
inner join MIASTO M on UO.IDMIASTO = M.IDMIASTO
inner join PANSTWO P on M.IDPANSTWO = P.IDPANSTWO;

/*Gdy między dwoma tabelami, z których należy pobrać dane występuje
 związek wieloznaczny (wiele do wiele), koniecznie trzeba dołączyć do tego zapytania tabelę pośrednią
  łączącą te dwie tabele. Bez tego w wyniku wyświetli się iloczyn kartezjański.
Przykład:

Obok numeru indeksu studenta wypisz semestry nauki, na których był lub jest student.*/

select *
from STUDENT S
inner join STUDENTGRUPA S2 on S.IDOSOBA = S2.IDOSOBA
inner join GRUPA G on S2.NRGRUPY = G.NRGRUPY and S2.IDROKAKADEMICKI = G.IDROKAKADEMICKI;

/*Przykład 1. Wypisz imiona i nazwiska osób, które są dydaktykami i są lub były studentami uczelni.

*/

SELECT     Osoba.Imie, Osoba.Nazwisko
FROM       Osoba
INNER JOIN Student ON Student.IdOsoba = Osoba.IdOsoba
INNER JOIN Dydaktyk ON Dydaktyk.IdOsoba = Osoba.IdOsoba;


/*Przykład 2. Wypisz imiona, nazwiska oraz numery indeksów studentów, którzy otrzymali ocenę 2 z przedmiotu Relacyjne bazy danych w roku 2013.
*/

SELECT     U_Osoba.Imie, U_Osoba.Nazwisko, Student.NrIndeksu
FROM       U_Osoba
INNER JOIN Student ON U_Osoba.IdOsoba = Student.IdOsoba
INNER JOIN Ocena ON Ocena.IdStudent = Student.IdOsoba
INNER JOIN Przedmiot ON Ocena.IdPrzedmiot = Przedmiot.IdPrzedmiot
WHERE      Przedmiot.Przedmiot = 'Relacyjne bazy danych'
AND        Ocena.Ocena = 2
AND        EXTRACT(YEAR FROM Ocena.Datawystawienia) = 2013;

/*Przykład 3. Czasami konieczne jest zastosowanie w zapytaniu tej samej tabeli w dwóch różnych rolach.
Wówczas konieczne jest nadanie aliasu co najmniej jednemu wystąpieniu tej tabeli,
a dla czytelności najlepiej obydwu wystąpieniom.
W poniższym zapytaniu tabela Osoba występuje dwukrotnie – raz w roli danych studenta, drugi raz w roli danych dydaktyka.

Wypisz personalia studenta (imię połączone z nazwiskiem), nazwę przedmiotu,
 z którego student otrzymał ocenę, otrzymaną ocenę oraz personalia dydaktyka
 (imię połączone z nazwiskiem), który tę ocenę wystawił.*/

SELECT     St.Imie || ' ' || St.Nazwisko Student,
           Przedmiot.Przedmiot,
		   Ocena.Ocena,
           Dyd.Imie || ' ' || Dyd.Nazwisko Dydaktyk
FROM       Osoba St
INNER JOIN Ocena ON Ocena.IdStudent = St.IdOsoba
INNER JOIN Przedmiot ON Ocena.IdPrzedmiot = Przedmiot.IdPrzedmiot
INNER JOIN Osoba Dyd ON Ocena.IdDydaktyk = Dyd.IdOsoba;


----------------------------------------------SAMOZŁĄCZENIE------------------------------------------------------------
/*Korzystając ze związku klucz obcy -> klucz główny, można dokonać złączenia tabeli z nią samą opisując w ten sposób
związek rekurencyjny. Tego rodzaju złączenie jest nazywane samozłączeniem.*/

/*Obok nazwiska pracownika wypisz nazwisko jego kierownika.
*/
SELECT     Prac.Ename Nazwisko_pracownika, Kier.Ename Nazwisko_kierownika
FROM       Emp Prac
INNER JOIN Emp Kier ON Prac.Mgr = Kier.Empno;


SELECT Prac.Ename Nazwisko_pracownika, Kier.Ename Nazwisko_kierownika
FROM   Emp Prac, Emp Kier
WHERE  Prac.Mgr = Kier.Empno;

/*Przykład 1.
Obok identyfikatora oraz stopnia dydaktyka wypisz identyfikator i stopień jego bezpośredniego przełożonego.
*/

SELECT     Dyd.IdOsoba Dydaktyk_Id, Dyd.Stopien Dydaktyk_Stopien,
           Przel.IdOsoba Przelozony_Id, Przel.Stopien Przelozony_Stopien
FROM       Dydaktyk Dyd
INNER JOIN Dydaktyk Przel ON Dyd.Podlega = Przel.IdOsoba;