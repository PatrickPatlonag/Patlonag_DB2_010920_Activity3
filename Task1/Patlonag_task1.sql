--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6 (Ubuntu 11.6-1.pgdg16.04+1)
-- Dumped by pg_dump version 12.0

-- Started on 2020-01-09 14:46:02

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 4616942)
-- Name: 010920; Type: SCHEMA; Schema: -; Owner: gyuivhhcrvopgf
--

CREATE SCHEMA "010920";


ALTER SCHEMA "010920" OWNER TO gyuivhhcrvopgf;

SET default_tablespace = '';

--
-- TOC entry 205 (class 1259 OID 4617304)
-- Name: class; Type: TABLE; Schema: 010920; Owner: gyuivhhcrvopgf
--

CREATE TABLE "010920".class (
    class_code character varying(5),
    crs_code character varying(10),
    class_section character varying(2),
    class_time character varying(20),
    class_room character varying(8),
    prof_num real
);


ALTER TABLE "010920".class OWNER TO gyuivhhcrvopgf;

--
-- TOC entry 206 (class 1259 OID 4617307)
-- Name: course; Type: TABLE; Schema: 010920; Owner: gyuivhhcrvopgf
--

CREATE TABLE "010920".course (
    crs_code character varying(10),
    dept_code character varying(10),
    crs_description character varying(35),
    crs_credit real
);


ALTER TABLE "010920".course OWNER TO gyuivhhcrvopgf;

--
-- TOC entry 207 (class 1259 OID 4617310)
-- Name: department; Type: TABLE; Schema: 010920; Owner: gyuivhhcrvopgf
--

CREATE TABLE "010920".department (
    dept_code character varying(10),
    dept_name character varying(30),
    school_code character varying(8),
    emp_num integer,
    dept_address character varying(20),
    dept_extension character varying(4)
);


ALTER TABLE "010920".department OWNER TO gyuivhhcrvopgf;

--
-- TOC entry 208 (class 1259 OID 4617313)
-- Name: employee; Type: TABLE; Schema: 010920; Owner: gyuivhhcrvopgf
--

CREATE TABLE "010920".employee (
    emp_num integer,
    emp_lname character varying(15),
    emp_fname character varying(12),
    emp_initial character varying(1),
    emp_jobcode character varying(5),
    emp_hiredate timestamp without time zone,
    emp_dob timestamp without time zone
);


ALTER TABLE "010920".employee OWNER TO gyuivhhcrvopgf;

--
-- TOC entry 209 (class 1259 OID 4617316)
-- Name: enroll; Type: TABLE; Schema: 010920; Owner: gyuivhhcrvopgf
--

CREATE TABLE "010920".enroll (
    class_code character varying(5),
    stu_num integer,
    enroll_grade character varying(50)
);


ALTER TABLE "010920".enroll OWNER TO gyuivhhcrvopgf;

--
-- TOC entry 210 (class 1259 OID 4617319)
-- Name: professor; Type: TABLE; Schema: 010920; Owner: gyuivhhcrvopgf
--

CREATE TABLE "010920".professor (
    emp_num integer,
    dept_code character varying(10),
    prof_office character varying(50),
    prof_extension character varying(4),
    prof_high_degree character varying(5)
);


ALTER TABLE "010920".professor OWNER TO gyuivhhcrvopgf;

--
-- TOC entry 211 (class 1259 OID 4617322)
-- Name: student; Type: TABLE; Schema: 010920; Owner: gyuivhhcrvopgf
--

CREATE TABLE "010920".student (
    stu_num integer,
    stu_lname character varying(15),
    stu_fname character varying(15),
    stu_init character varying(1),
    stu_dob timestamp without time zone,
    stu_hrs integer,
    stu_class character varying(2),
    stu_gpa real,
    stu_transfer numeric,
    dept_code character varying(18),
    stu_phone character varying(4),
    prof_num integer
);


ALTER TABLE "010920".student OWNER TO gyuivhhcrvopgf;

--
-- TOC entry 197 (class 1259 OID 1829205)
-- Name: act1; Type: TABLE; Schema: public; Owner: gyuivhhcrvopgf
--

CREATE TABLE public.act1 (
    staffno character varying(5) NOT NULL,
    tutorname character varying(50) NOT NULL,
    tuteeno character varying(4) NOT NULL,
    tuteename character varying(50),
    appointment_date date,
    appointment_time numeric(4,2),
    tutorialno character varying(3) NOT NULL
);


ALTER TABLE public.act1 OWNER TO gyuivhhcrvopgf;

--
-- TOC entry 198 (class 1259 OID 4617109)
-- Name: class; Type: TABLE; Schema: public; Owner: gyuivhhcrvopgf
--

CREATE TABLE public.class (
    class_code character varying(5),
    crs_code character varying(10),
    class_section character varying(2),
    class_time character varying(20),
    class_room character varying(8),
    prof_num real
);


ALTER TABLE public.class OWNER TO gyuivhhcrvopgf;

--
-- TOC entry 199 (class 1259 OID 4617112)
-- Name: course; Type: TABLE; Schema: public; Owner: gyuivhhcrvopgf
--

CREATE TABLE public.course (
    crs_code character varying(10),
    dept_code character varying(10),
    crs_description character varying(35),
    crs_credit real
);


ALTER TABLE public.course OWNER TO gyuivhhcrvopgf;

--
-- TOC entry 200 (class 1259 OID 4617115)
-- Name: department; Type: TABLE; Schema: public; Owner: gyuivhhcrvopgf
--

CREATE TABLE public.department (
    dept_code character varying(10),
    dept_name character varying(30),
    school_code character varying(8),
    emp_num integer,
    dept_address character varying(20),
    dept_extension character varying(4)
);


ALTER TABLE public.department OWNER TO gyuivhhcrvopgf;

--
-- TOC entry 201 (class 1259 OID 4617118)
-- Name: employee; Type: TABLE; Schema: public; Owner: gyuivhhcrvopgf
--

CREATE TABLE public.employee (
    emp_num integer,
    emp_lname character varying(15),
    emp_fname character varying(12),
    emp_initial character varying(1),
    emp_jobcode character varying(5),
    emp_hiredate timestamp without time zone,
    emp_dob timestamp without time zone
);


ALTER TABLE public.employee OWNER TO gyuivhhcrvopgf;

--
-- TOC entry 202 (class 1259 OID 4617121)
-- Name: enroll; Type: TABLE; Schema: public; Owner: gyuivhhcrvopgf
--

CREATE TABLE public.enroll (
    class_code character varying(5),
    stu_num integer,
    enroll_grade character varying(50)
);


ALTER TABLE public.enroll OWNER TO gyuivhhcrvopgf;

--
-- TOC entry 203 (class 1259 OID 4617124)
-- Name: professor; Type: TABLE; Schema: public; Owner: gyuivhhcrvopgf
--

CREATE TABLE public.professor (
    emp_num integer,
    dept_code character varying(10),
    prof_office character varying(50),
    prof_extension character varying(4),
    prof_high_degree character varying(5)
);


ALTER TABLE public.professor OWNER TO gyuivhhcrvopgf;

--
-- TOC entry 204 (class 1259 OID 4617127)
-- Name: student; Type: TABLE; Schema: public; Owner: gyuivhhcrvopgf
--

CREATE TABLE public.student (
    stu_num integer,
    stu_lname character varying(15),
    stu_fname character varying(15),
    stu_init character varying(1),
    stu_dob timestamp without time zone,
    stu_hrs integer,
    stu_class character varying(2),
    stu_gpa real,
    stu_transfer numeric,
    dept_code character varying(18),
    stu_phone character varying(4),
    prof_num integer
);


ALTER TABLE public.student OWNER TO gyuivhhcrvopgf;

--
-- TOC entry 3887 (class 0 OID 4617304)
-- Dependencies: 205
-- Data for Name: class; Type: TABLE DATA; Schema: 010920; Owner: gyuivhhcrvopgf
--

COPY "010920".class (class_code, crs_code, class_section, class_time, class_room, prof_num) FROM stdin;
\.


--
-- TOC entry 3888 (class 0 OID 4617307)
-- Dependencies: 206
-- Data for Name: course; Type: TABLE DATA; Schema: 010920; Owner: gyuivhhcrvopgf
--

COPY "010920".course (crs_code, dept_code, crs_description, crs_credit) FROM stdin;
\.


--
-- TOC entry 3889 (class 0 OID 4617310)
-- Dependencies: 207
-- Data for Name: department; Type: TABLE DATA; Schema: 010920; Owner: gyuivhhcrvopgf
--

COPY "010920".department (dept_code, dept_name, school_code, emp_num, dept_address, dept_extension) FROM stdin;
\.


--
-- TOC entry 3890 (class 0 OID 4617313)
-- Dependencies: 208
-- Data for Name: employee; Type: TABLE DATA; Schema: 010920; Owner: gyuivhhcrvopgf
--

COPY "010920".employee (emp_num, emp_lname, emp_fname, emp_initial, emp_jobcode, emp_hiredate, emp_dob) FROM stdin;
\.


--
-- TOC entry 3891 (class 0 OID 4617316)
-- Dependencies: 209
-- Data for Name: enroll; Type: TABLE DATA; Schema: 010920; Owner: gyuivhhcrvopgf
--

COPY "010920".enroll (class_code, stu_num, enroll_grade) FROM stdin;
\.


--
-- TOC entry 3892 (class 0 OID 4617319)
-- Dependencies: 210
-- Data for Name: professor; Type: TABLE DATA; Schema: 010920; Owner: gyuivhhcrvopgf
--

COPY "010920".professor (emp_num, dept_code, prof_office, prof_extension, prof_high_degree) FROM stdin;
\.


--
-- TOC entry 3893 (class 0 OID 4617322)
-- Dependencies: 211
-- Data for Name: student; Type: TABLE DATA; Schema: 010920; Owner: gyuivhhcrvopgf
--

COPY "010920".student (stu_num, stu_lname, stu_fname, stu_init, stu_dob, stu_hrs, stu_class, stu_gpa, stu_transfer, dept_code, stu_phone, prof_num) FROM stdin;
\.


--
-- TOC entry 3879 (class 0 OID 1829205)
-- Dependencies: 197
-- Data for Name: act1; Type: TABLE DATA; Schema: public; Owner: gyuivhhcrvopgf
--

COPY public.act1 (staffno, tutorname, tuteeno, tuteename, appointment_date, appointment_time, tutorialno) FROM stdin;
S1011	Mark ZUckerberg	T100	AGUJAR, CHRISSA MAE	2020-01-15	10.00	T10
S1223	Elon Musk	T106	ALPAS, GREM RAY R.	2020-01-16	9.00	TO1
S1023	Jeff Bezos	T107	CAÑETE, NEIL FRED C.	2020-01-15	16.00	T12
S1111	Tim Cook	T111	BAYACAG, ELDON REY C.	2020-01-15	16.30	T52
S2939	Sundar Pichai	T101	DINERO, VINCENT B	2020-01-09	10.00	T99
S1232	Satya Nadella	T105	PATLONAG, RAY PATRICK A.	2020-01-15	1.00	T06
S9829	Linus Torvalds	T108	ALVAREZ, JULIUS MARC L.	2020-01-11	23.00	T06
S5323	Bill Gates	T110		2020-01-01	10.00	T10
S1521	Susan Wojcicki	T102	PEREZ, JOHN PAUL S.	2020-01-05	9.00	T12
S1091	Jack Patrick Dorsey	T109	DALISAY, GABRIEL ANGELO C.	2020-01-15	16.00	T06
S1008	Yves Guillemot	T104	SOLATORIO, CARYL ETHEL S.	2020-01-06	16.30	T06
S1004	Bob Iger	T103	REBAYLA, AGEN FRANCIS L.	2020-01-15	10.00	T99
S1011	Mark Zuckerberg	T100	REBAYLA, AGEN FRANCIS L.	2020-01-15	1.00	T06
S2000	Jack Ma	T201	TALO, CHRISTIAN JOHN B.	2020-01-15	23.00	T10
S1023	Jeff Bezos	T107	MANTEZA, ANDREW E.	2020-01-15	10.00	T52
S2939	Sundar Pichai	T101	UMBUKAN, MERHAMDIN P.	2020-01-08	9.00	T01
S9829	Linus Torvalds	T108	ASMA, MC KEEN M.	2020-01-15	16.00	T12
S1091	Jack Patrick Dorsey	T109	MAGALLEN, MAYNARD S.	2020-01-12	16.30	T06
S1232	Satya Nadella	T105	BRINA, DENRYL PAUL O.	2020-01-15	10.00	T10
S9829	Linus Torvalds	T108	BANLUTA, CJ DIVON P.	2020-01-15	1.00	T99
S1008	Yves Guillemot	T104	BRINA, DENRYL PAUL O.	2020-01-06	23.00	T06
S2939	Sundar Pichai	T101		2020-01-15	10.00	T06
S1521	Susan Wojcicki	T102	VILLARUBIA, JOHN ROCHI M	2020-01-15	9.00	T52
S1008	Yves Guillemot	T104		2020-01-06	23.00	T06
S2939	Sundar Pichai	T101	BANLUTA, CJ DIVON P.	2020-01-15	10.00	T06
S5323	Bill Gates	T110		2020-01-15	9.00	T52
S1004	Bob Iger	T103	VILLARUBIA, JOHN ROCHI M.	2020-01-06	23.00	T06
\.


--
-- TOC entry 3880 (class 0 OID 4617109)
-- Dependencies: 198
-- Data for Name: class; Type: TABLE DATA; Schema: public; Owner: gyuivhhcrvopgf
--

COPY public.class (class_code, crs_code, class_section, class_time, class_room, prof_num) FROM stdin;
10012	ACCT-211	1	MWF 8:00-8:50 a.m.	BUS311	105
10013	ACCT-211	2	MWF 9:00-9:50 a.m.	BUS200	105
10014	ACCT-211	3	TTh 2:30-3:45 p.m.	BUS252	342
10015	ACCT-212	1	MWF 10:00-10:50 a.m.	BUS311	301
10016	ACCT-212	2	Th 6:00-8:40 p.m.	BUS252	301
10017	CIS-220	1	MWF 9:00-9:50 a.m.	KLR209	228
10018	CIS-220	2	MWF 9:00-9:50 a.m.	KLR211	114
10019	CIS-220	3	MWF 10:00-10:50 a.m.	KLR209	228
10020	CIS-420	1	W 6:00-8:40 p.m.	KLR209	162
10021	QM-261	1	MWF 8:00-8:50 a.m.	KLR200	114
10022	QM-261	2	TTh 1:00-2:15 p.m.	KLR200	114
10023	QM-362	1	MWF 11:00-11:50 a.m.	KLR200	162
10024	QM-362	2	TTh 2:30-3:45 p.m.	KLR200	162
10012	ACCT-211	1	MWF 8:00-8:50 a.m.	BUS311	105
10013	ACCT-211	2	MWF 9:00-9:50 a.m.	BUS200	105
10014	ACCT-211	3	TTh 2:30-3:45 p.m.	BUS252	342
10015	ACCT-212	1	MWF 10:00-10:50 a.m.	BUS311	301
10016	ACCT-212	2	Th 6:00-8:40 p.m.	BUS252	301
10017	CIS-220	1	MWF 9:00-9:50 a.m.	KLR209	228
10018	CIS-220	2	MWF 9:00-9:50 a.m.	KLR211	114
10019	CIS-220	3	MWF 10:00-10:50 a.m.	KLR209	228
10020	CIS-420	1	W 6:00-8:40 p.m.	KLR209	162
10021	QM-261	1	MWF 8:00-8:50 a.m.	KLR200	114
10022	QM-261	2	TTh 1:00-2:15 p.m.	KLR200	114
10023	QM-362	1	MWF 11:00-11:50 a.m.	KLR200	162
10024	QM-362	2	TTh 2:30-3:45 p.m.	KLR200	162
\.


--
-- TOC entry 3881 (class 0 OID 4617112)
-- Dependencies: 199
-- Data for Name: course; Type: TABLE DATA; Schema: public; Owner: gyuivhhcrvopgf
--

COPY public.course (crs_code, dept_code, crs_description, crs_credit) FROM stdin;
ACCT-211	ACCT	Accounting I	3
ACCT-212	ACCT	Accounting II	3
CIS-220	CIS	Intro. to Microcomputing	3
CIS-420	CIS	Database Design and Implementation	4
QM-261	CIS	Intro. to Statistics	3
QM-362	CIS	Statistical Applications	4
ACCT-211	ACCT	Accounting I	3
ACCT-212	ACCT	Accounting II	3
CIS-220	CIS	Intro. to Microcomputing	3
CIS-420	CIS	Database Design and Implementation	4
QM-261	CIS	Intro. to Statistics	3
QM-362	CIS	Statistical Applications	4
\.


--
-- TOC entry 3882 (class 0 OID 4617115)
-- Dependencies: 200
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: gyuivhhcrvopgf
--

COPY public.department (dept_code, dept_name, school_code, emp_num, dept_address, dept_extension) FROM stdin;
ACCT	Accounting	BUS	114	KLR 211, Box 52	3119
ART	Fine Arts	A&SCI	435	BBG 185, Box 128	2278
BIOL	Biology	A&SCI	387	AAK 230, Box 415	4117
CIS	Computer Info. Systems	BUS	209	KLR 333, Box 56	3245
ECON/FIN	Economics/Finance	BUS	299	KLR 284, Box 63	3126
ENG	English	A&SCI	160	DRE 102, Box 223	1004
HIST	History	A&SCI	103	DRE 156, Box 284	1867
MATH	Mathematics	A&SCI	297	AAK 194, Box 422	4234
MKT/MGT	Marketing/Management	BUS	106	KLR 126, Box 55	3342
PSYCH	Psychology	A&SCI	195	AAK 297, Box 438	4110
SOC	Sociology	A&SCI	342	BBG 208, Box 132	2008
ACCT	Accounting	BUS	114	KLR 211, Box 52	3119
ART	Fine Arts	A&SCI	435	BBG 185, Box 128	2278
BIOL	Biology	A&SCI	387	AAK 230, Box 415	4117
CIS	Computer Info. Systems	BUS	209	KLR 333, Box 56	3245
ECON/FIN	Economics/Finance	BUS	299	KLR 284, Box 63	3126
ENG	English	A&SCI	160	DRE 102, Box 223	1004
HIST	History	A&SCI	103	DRE 156, Box 284	1867
MATH	Mathematics	A&SCI	297	AAK 194, Box 422	4234
MKT/MGT	Marketing/Management	BUS	106	KLR 126, Box 55	3342
PSYCH	Psychology	A&SCI	195	AAK 297, Box 438	4110
SOC	Sociology	A&SCI	342	BBG 208, Box 132	2008
\.


--
-- TOC entry 3883 (class 0 OID 4617118)
-- Dependencies: 201
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: gyuivhhcrvopgf
--

COPY public.employee (emp_num, emp_lname, emp_fname, emp_initial, emp_jobcode, emp_hiredate, emp_dob) FROM stdin;
100	Worley	James	F	CUST	1978-02-23 00:00:00	1950-06-12 00:00:00
101	Ramso	Henry	B	CUST	1994-11-15 00:00:00	1961-11-02 00:00:00
102	Edwards	Rosemary	D	TECH	1990-07-23 00:00:00	1953-07-03 00:00:00
103	Donelly	Ronald	O	PROF	1987-07-01 00:00:00	1952-10-02 00:00:00
104	Yukon	Preston	D	PROF	1992-05-01 00:00:00	1948-02-23 00:00:00
105	Heffington	Arnelle	B	PROF	1991-07-01 00:00:00	1950-11-02 00:00:00
106	Washington	Ross	E	PROF	1976-08-01 00:00:00	1941-03-04 00:00:00
108	Robertson	Elaine	W	TECH	1983-10-18 00:00:00	1961-06-20 00:00:00
110	Thieu	Van	S	PROF	1989-08-01 00:00:00	1951-08-12 00:00:00
114	Graztevski	Gerald	B	PROF	1978-08-01 00:00:00	1939-03-18 00:00:00
122	Wilson	Todd	H	CUST	1990-11-06 00:00:00	1966-10-19 00:00:00
123	Jones	Suzanne	B	TECH	1994-01-05 00:00:00	1967-12-30 00:00:00
124	Smith	Elsa	K	CLRK	1982-12-16 00:00:00	1943-09-13 00:00:00
126	Ardano	James	G	CLRK	1994-10-01 00:00:00	1970-03-12 00:00:00
155	Ritula	Annelise		PROF	1990-08-01 00:00:00	1957-05-24 00:00:00
160	Smith	Robert	T	PROF	1992-08-01 00:00:00	1955-06-19 00:00:00
161	Watson	George	F	CUST	1994-11-01 00:00:00	1962-10-02 00:00:00
162	Rob	Peter		PROF	1981-08-01 00:00:00	1940-06-20 00:00:00
165	Williamson	Kathryn	A	CLRK	1992-06-15 00:00:00	1968-11-17 00:00:00
166	Herndon	Jill	M	TECH	1990-08-18 00:00:00	1965-08-29 00:00:00
173	Teng	Weston	J	TECH	1980-07-15 00:00:00	1951-11-17 00:00:00
191	Dexter	Willa	N	PROF	1984-08-01 00:00:00	1953-05-17 00:00:00
195	Williams	Herman	H	PROF	1988-08-01 00:00:00	1955-11-19 00:00:00
209	Smith	Melanie	K	PROF	1983-08-01 00:00:00	1946-05-24 00:00:00
228	Coronel	Carlos	M	PROF	1988-08-01 00:00:00	1949-05-16 00:00:00
231	Shebert	Rebecca	A	CUST	1994-02-21 00:00:00	1963-02-27 00:00:00
297	Jones	Hermine		PROF	1985-01-01 00:00:00	1950-07-04 00:00:00
299	Stoddard	Doreen	L	PROF	1994-08-01 00:00:00	1960-04-25 00:00:00
301	Osaki	Ismael	K	PROF	1989-08-01 00:00:00	1952-05-25 00:00:00
333	Jordan	Julian	H	TECH	1991-04-23 00:00:00	1968-07-16 00:00:00
335	Okomoto	Ronald	F	PROF	1975-08-01 00:00:00	1944-03-03 00:00:00
342	Smith	Robert	A	PROF	1978-08-01 00:00:00	1937-12-30 00:00:00
387	Smithson	George	D	PROF	1982-08-01 00:00:00	1948-10-01 00:00:00
401	Blalock	James	G	PROF	1981-08-01 00:00:00	1945-03-15 00:00:00
412	Smith	Robert	E	CUST	1985-06-24 00:00:00	1963-09-25 00:00:00
425	Matler	Ralph	F	PROF	1995-08-01 00:00:00	1973-12-02 00:00:00
435	Doornberg	Anne	D	PROF	1992-08-01 00:00:00	1963-10-02 00:00:00
100	Worley	James	F	CUST	1978-02-23 00:00:00	1950-06-12 00:00:00
101	Ramso	Henry	B	CUST	1994-11-15 00:00:00	1961-11-02 00:00:00
102	Edwards	Rosemary	D	TECH	1990-07-23 00:00:00	1953-07-03 00:00:00
103	Donelly	Ronald	O	PROF	1987-07-01 00:00:00	1952-10-02 00:00:00
104	Yukon	Preston	D	PROF	1992-05-01 00:00:00	1948-02-23 00:00:00
105	Heffington	Arnelle	B	PROF	1991-07-01 00:00:00	1950-11-02 00:00:00
106	Washington	Ross	E	PROF	1976-08-01 00:00:00	1941-03-04 00:00:00
108	Robertson	Elaine	W	TECH	1983-10-18 00:00:00	1961-06-20 00:00:00
110	Thieu	Van	S	PROF	1989-08-01 00:00:00	1951-08-12 00:00:00
114	Graztevski	Gerald	B	PROF	1978-08-01 00:00:00	1939-03-18 00:00:00
122	Wilson	Todd	H	CUST	1990-11-06 00:00:00	1966-10-19 00:00:00
123	Jones	Suzanne	B	TECH	1994-01-05 00:00:00	1967-12-30 00:00:00
124	Smith	Elsa	K	CLRK	1982-12-16 00:00:00	1943-09-13 00:00:00
126	Ardano	James	G	CLRK	1994-10-01 00:00:00	1970-03-12 00:00:00
155	Ritula	Annelise		PROF	1990-08-01 00:00:00	1957-05-24 00:00:00
160	Smith	Robert	T	PROF	1992-08-01 00:00:00	1955-06-19 00:00:00
161	Watson	George	F	CUST	1994-11-01 00:00:00	1962-10-02 00:00:00
162	Rob	Peter		PROF	1981-08-01 00:00:00	1940-06-20 00:00:00
165	Williamson	Kathryn	A	CLRK	1992-06-15 00:00:00	1968-11-17 00:00:00
166	Herndon	Jill	M	TECH	1990-08-18 00:00:00	1965-08-29 00:00:00
173	Teng	Weston	J	TECH	1980-07-15 00:00:00	1951-11-17 00:00:00
191	Dexter	Willa	N	PROF	1984-08-01 00:00:00	1953-05-17 00:00:00
195	Williams	Herman	H	PROF	1988-08-01 00:00:00	1955-11-19 00:00:00
209	Smith	Melanie	K	PROF	1983-08-01 00:00:00	1946-05-24 00:00:00
228	Coronel	Carlos	M	PROF	1988-08-01 00:00:00	1949-05-16 00:00:00
231	Shebert	Rebecca	A	CUST	1994-02-21 00:00:00	1963-02-27 00:00:00
297	Jones	Hermine		PROF	1985-01-01 00:00:00	1950-07-04 00:00:00
299	Stoddard	Doreen	L	PROF	1994-08-01 00:00:00	1960-04-25 00:00:00
301	Osaki	Ismael	K	PROF	1989-08-01 00:00:00	1952-05-25 00:00:00
333	Jordan	Julian	H	TECH	1991-04-23 00:00:00	1968-07-16 00:00:00
335	Okomoto	Ronald	F	PROF	1975-08-01 00:00:00	1944-03-03 00:00:00
342	Smith	Robert	A	PROF	1978-08-01 00:00:00	1937-12-30 00:00:00
387	Smithson	George	D	PROF	1982-08-01 00:00:00	1948-10-01 00:00:00
401	Blalock	James	G	PROF	1981-08-01 00:00:00	1945-03-15 00:00:00
412	Smith	Robert	E	CUST	1985-06-24 00:00:00	1963-09-25 00:00:00
425	Matler	Ralph	F	PROF	1995-08-01 00:00:00	1973-12-02 00:00:00
435	Doornberg	Anne	D	PROF	1992-08-01 00:00:00	1963-10-02 00:00:00
\.


--
-- TOC entry 3884 (class 0 OID 4617121)
-- Dependencies: 202
-- Data for Name: enroll; Type: TABLE DATA; Schema: public; Owner: gyuivhhcrvopgf
--

COPY public.enroll (class_code, stu_num, enroll_grade) FROM stdin;
10014	321452	C
10014	324257	B
10018	321452	A
10018	324257	B
10021	321452	C
10021	324257	C
10014	321452	C
10014	324257	B
10018	321452	A
10018	324257	B
10021	321452	C
10021	324257	C
\.


--
-- TOC entry 3885 (class 0 OID 4617124)
-- Dependencies: 203
-- Data for Name: professor; Type: TABLE DATA; Schema: public; Owner: gyuivhhcrvopgf
--

COPY public.professor (emp_num, dept_code, prof_office, prof_extension, prof_high_degree) FROM stdin;
103	HIST	DRE 156	6783	Ph.D.
104	ENG	DRE 102	5561	MA
105	ACCT	KLR 229D	8665	Ph.D.
106	MKT/MGT	KLR 126	3899	Ph.D.
110	BIOL	AAK 160	3412	Ph.D.
114	ACCT	KLR 211	4436	Ph.D.
155	MATH	AAK 201	4440	Ph.D.
160	ENG	DRE 102	2248	Ph.D.
162	CIS	KLR 203E	2359	Ph.D.
191	MKT/MGT	KLR 409B	4016	DBA
195	PSYCH	AAK 297	3550	Ph.D.
209	CIS	KLR 333	3421	Ph.D.
228	CIS	KLR 300	3000	Ph.D.
297	MATH	AAK 194	1145	Ph.D.
299	ECON/FIN	KLR 284	2851	Ph.D.
301	ACCT	KLR 244	4683	Ph.D.
335	ENG	DRE 208	2000	Ph.D.
342	SOC	BBG 208	5514	Ph.D.
387	BIOL	AAK 230	8665	Ph.D.
401	HIST	DRE 156	6783	MA
425	ECON/FIN	KLR 284	2851	MBA
435	ART	BBG 185	2278	Ph.D.
103	HIST	DRE 156	6783	Ph.D.
104	ENG	DRE 102	5561	MA
105	ACCT	KLR 229D	8665	Ph.D.
106	MKT/MGT	KLR 126	3899	Ph.D.
110	BIOL	AAK 160	3412	Ph.D.
114	ACCT	KLR 211	4436	Ph.D.
155	MATH	AAK 201	4440	Ph.D.
160	ENG	DRE 102	2248	Ph.D.
162	CIS	KLR 203E	2359	Ph.D.
191	MKT/MGT	KLR 409B	4016	DBA
195	PSYCH	AAK 297	3550	Ph.D.
209	CIS	KLR 333	3421	Ph.D.
228	CIS	KLR 300	3000	Ph.D.
297	MATH	AAK 194	1145	Ph.D.
299	ECON/FIN	KLR 284	2851	Ph.D.
301	ACCT	KLR 244	4683	Ph.D.
335	ENG	DRE 208	2000	Ph.D.
342	SOC	BBG 208	5514	Ph.D.
387	BIOL	AAK 230	8665	Ph.D.
401	HIST	DRE 156	6783	MA
425	ECON/FIN	KLR 284	2851	MBA
435	ART	BBG 185	2278	Ph.D.
\.


--
-- TOC entry 3886 (class 0 OID 4617127)
-- Dependencies: 204
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: gyuivhhcrvopgf
--

COPY public.student (stu_num, stu_lname, stu_fname, stu_init, stu_dob, stu_hrs, stu_class, stu_gpa, stu_transfer, dept_code, stu_phone, prof_num) FROM stdin;
321452	Bowser	William	C	1975-02-12 00:00:00	42	So	2.83999991	0	BIOL	2134	205
324257	Smithson	Anne	K	1981-11-15 00:00:00	81	Jr	3.26999998	1	CIS	2256	222
324258	Brewer	Juliette		1969-08-23 00:00:00	36	So	2.25999999	1	ACCT	2256	228
324269	Oblonski	Walter	H	1976-09-16 00:00:00	66	Jr	3.08999991	0	CIS	2114	222
324273	Smith	John	D	1958-12-30 00:00:00	102	Sr	2.1099999	1	ENGL	2231	199
324274	Katinga	Raphael	P	1979-10-21 00:00:00	114	Sr	3.1500001	0	ACCT	2267	228
324291	Robertson	Gerald	T	1973-04-08 00:00:00	120	Sr	3.86999989	0	EDU	2267	311
324299	Smith	John	B	1986-11-30 00:00:00	15	Fr	2.92000008	0	ACCT	2315	230
321452	Bowser	William	C	1975-02-12 00:00:00	42	So	2.83999991	0	BIOL	2134	205
324257	Smithson	Anne	K	1981-11-15 00:00:00	81	Jr	3.26999998	1	CIS	2256	222
324258	Brewer	Juliette		1969-08-23 00:00:00	36	So	2.25999999	1	ACCT	2256	228
324269	Oblonski	Walter	H	1976-09-16 00:00:00	66	Jr	3.08999991	0	CIS	2114	222
324273	Smith	John	D	1958-12-30 00:00:00	102	Sr	2.1099999	1	ENGL	2231	199
324274	Katinga	Raphael	P	1979-10-21 00:00:00	114	Sr	3.1500001	0	ACCT	2267	228
324291	Robertson	Gerald	T	1973-04-08 00:00:00	120	Sr	3.86999989	0	EDU	2267	311
324299	Smith	John	B	1986-11-30 00:00:00	15	Fr	2.92000008	0	ACCT	2315	230
\.


--
-- TOC entry 3899 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: gyuivhhcrvopgf
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO gyuivhhcrvopgf;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 3900 (class 0 OID 0)
-- Dependencies: 651
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO gyuivhhcrvopgf;


-- Completed on 2020-01-09 14:46:33

--
-- PostgreSQL database dump complete
--

