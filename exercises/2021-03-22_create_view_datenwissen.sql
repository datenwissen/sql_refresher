
SHOW USER;
DROP TABLE buyer;

CREATE TABLE buyer
(buyernum NUMBER PRIMARY KEY,
prodnum NUMBER,
buyerid VARCHAR2(15),
name_ko VARCHAR2(20),
name_en VARCHAR2(20),
sex INT,
phonenum VARCHAR2(20),
email VARCHAR2(30),
regdate DATE);


ALTER TABLE buyer
ADD CONSTRAINT fk_prodnum 
FOREIGN KEY(prodnum) 
REFERENCES product(prodnum);

SHOW USER;
DESC buyer;

-- INSERT into TABLE buyer
-- https://en.wikipedia.org/wiki/ISO/IEC_5218
INSERT INTO buyer VALUES
(1,1,'buyer1','김철수','Charles Kim','1','111-1111','111@buy.com',sysdate);
INSERT INTO buyer VALUES
(2,1,'buyer2','박지원','Jiwon Park','2','222-2222','222@buy.com',sysdate);
INSERT INTO buyer VALUES
(3,2,'buyer3','한소라','Sora Han','2','333-3333','333@buy.com',sysdate);
INSERT INTO buyer VALUES
(4,3,'buyer4','이조한','Johan Lee','1','444-4444','444@buy.com',sysdate);
INSERT INTO buyer VALUES
(5,5,'buyer5','김미나','Mina Kim','2','555-555','555@buy.com',sysdate);
INSERT INTO buyer VALUES
(6,4,'buyer6','손재인','Jane Sohn','2','667-7777','777@buy.com',sysdate);
INSERT INTO buyer VALUES
(7,5,'buyer7','최유진','Eugene Choe','1','777-7788','778@buy.com',sysdate);

SELECT * FROM buyer;

DROP TABLE product;
CREATE TABLE product
(prodnum NUMBER PRIMARY KEY,
prodname VARCHAR2(30),
proddesc VARCHAR2(100),
price NUMBER,
stockdate DATE
);

DESC product;

SELECT * FROM product;

-- INSERT into TABLE product
INSERT INTO product VALUES
(1,'product_1','This is the first product.',10,sysdate);
INSERT INTO product VALUES
(2,'product_2','This is the 2nd product.',20,sysdate);
INSERT INTO product VALUES
(3,'product_3','This is the 3rd product.',30,sysdate);
INSERT INTO product VALUES
(4,'product_4','This is the 4th product.',40,sysdate);
INSERT INTO product VALUES
(5,'product_5','This is the 5th product.',50,sysdate);

-- create view
CREATE OR REPLACE VIEW v_buyprod
AS
SELECT b.buyernum,b.buyerid,b.name_en,
        b.regdate,p.prodname,p.price
FROM buyer b JOIN product p
ON b.prodnum=p.prodnum;

-- VIEW
SELECT * FROM v_buyprod;

COMMIT;