USE [Simpsons]
GO

IF EXISTS(SELECT * FROM  sys.tables WHERE SCHEMA_NAME(schema_id) LIKE 'dbo' AND name like 'Directors')
	DROP TABLE [dbo].[Directors]

CREATE TABLE [dbo].[Directors] (
id INTEGER NOT NULL,
Name NCHAR(50) NOT NULL,
DateOfBirth Date,
Sex NCHAR(1)
)
GO

INSERT INTO [dbo].[Directors]
(id,Name,DateOfBirth,Sex)
VALUES
(1,'David Silverman','1957-03-15','M'),
(2,'Wes Archer','1961-11-26','M'),
(3,'Gregg Vanzo','1961-04-08','M'),
(4,'Kent Butterworth','1953-01-20','M'),
(5,'Rich Moore','1963-05-10','M'),
(6,'Milton Gray',NULL,NULL),
(7,'Brad Bird','1957-09-24','M'),
(8,'Mark Kirkland','1956-11-05','M'),
(9,'Jim Reardon',NULL,NULL),
(10,'Jeffrey Lynch',NULL,NULL),
(11,'Carlos Baeza',NULL,NULL),
(12,'Alan Smart','1963-10-10','M'),
(13,'Bob Anderson',NULL,NULL),
(14,'Susie Dietter','1965-12-25','F'),
(15,'Swinton O. Scott III','1956-10-31','M'),
(16,'Steven Dean Moore',NULL,NULL),
(37,'Matthew Schofield','1971-11-18',NULL),
(38,'Timothy Bailey',NULL,NULL),
(39,'Jennifer Moeller',NULL,NULL),
(40,'Debbie Bruce Mahan',NULL,NULL),
(17,'Dominic Polcino','1964-02-13','M'),
(18,'Mike B. Anderson',NULL,'M'),
(19,'Chuck Sheetz','1960-12-31','M'),
(20,'Pete Michels','1964-12-15','M'),
(21,'Neil Affleck','1953-12-31','M'),
(22,'Mark Ervin',NULL,NULL),
(23,'Klay Hall','1958-09-11','M'),
(24,'Matthew Nastuk','1964-10-13','M'),
(25,'Nancy Kruse','1965-08-26','F'),
(26,'Michael Polcino','1962-04-27',NULL),
(27,'Lance Kramer','1966-02-08','M'),
(28,'Michael Marcantel','1958-04-12',NULL),
(29,'Jen Kamerman','1970-04-06',NULL),
(30,'Shaun Cashman',NULL,NULL),
(31,'Lauren MacMullan','1964-04-30','F'),
(32,'Chris Clements',NULL,NULL),
(33,'Raymond S. Persi','1975-02-17','M'),
(34,'Ralph Sosa',NULL,NULL),
(35,'Matthew Faughnan','1975-02-26','M'),
(36,'Rob Oliver','1977-03-25',NULL)
GO