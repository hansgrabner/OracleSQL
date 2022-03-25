CREATE TABLE HR.Produkte 
   (	
     Produkt_ID NUMBER(6,0), 
	Bezeichnung VARCHAR2(20 BYTE), 
	Preis NUMBER(6,2), 
	
	 CONSTRAINT Preis_check CHECK (Preis > 10) ENABLE, 
     CONSTRAINT Produkte_ID_PK Primary Key(Produkt_ID)
     )
     
     select * from produkte;
     
     INSERT INTO Produkte(Produkt_id, Bezeichnung, Preis)
     VALUES(1,'Handy',70);
     
       INSERT INTO Produkte(Produkt_id, Bezeichnung, Preis)
     VALUES(1,'Handy',2);
