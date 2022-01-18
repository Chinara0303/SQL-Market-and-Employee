CREATE DATABASE MARKET

USE MARKET

CREATE TABLE Products 
(
  İD int,
  NAME NVARCHAR(100),
  PRICE MONEY
)

ALTER TABLE Products
ADD BRAND NVARCHAR(50)

INSERT INTO PRODUCTS VALUES 
(1,'Pechenye',1.50,'Eti'),
(2,'Chorek',0.60,'Nur'),
(3,'Konfet',2.40,'ChocoArt'),
(4,'Shokolad',6.80,'Ulduz'),
(5,'Yumurta',0.20,'Kend'),
(6,'Qatiq',1.45,'Milla'),
(7,'Sud',5.50,'Milla'),
(8,'Kurabiye',4.50,'Hanimeller'),
(9,'Chay',7.30,'Berga'),
(10,'Kruvasan',3.90,'Eti')

SELECT * FROM Products

SELECT AVG(PRICE) [averageprice] FROM Products

SELECT * FROM Products WHERE PRICE<(SELECT AVG(PRICE) FROM Products)

SELECT * FROM Products WHERE PRICE>5 --10  price vermediyim uchun 5 yazdim

SELECT CONCAT(NAME,BRAND)[ProductInfo ] FROM Products WHERE LEN(BRAND)>5

