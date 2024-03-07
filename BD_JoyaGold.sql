--------------------------------------------------------
-- Archivo creado  - jueves-marzo-07-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence UNO
--------------------------------------------------------

   CREATE SEQUENCE  "UNO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 13 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table PRODUCTO
--------------------------------------------------------

  CREATE TABLE "PRODUCTO" 
   (	"ID" NUMBER, 
	"NOMBRE" VARCHAR2(200 BYTE), 
	"MATERIAL" VARCHAR2(200 BYTE), 
	"TIPO" VARCHAR2(200 BYTE), 
	"PRECIO" NUMBER, 
	"PESO" NUMBER, 
	"LARGO" NUMBER, 
	"ANCHO" NUMBER, 
	"STOCK" NUMBER, 
	"DESCRIPCION" VARCHAR2(200 BYTE), 
	"MARCA" VARCHAR2(200 BYTE), 
	"TALLA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into PRODUCTO
SET DEFINE OFF;
Insert into PRODUCTO (ID,NOMBRE,MATERIAL,TIPO,PRECIO,PESO,LARGO,ANCHO,STOCK,DESCRIPCION,MARCA,TALLA) values ('3','JoyaGold platinum','oro','cadena','1500000',null,null,null,'4','Cadena de oro para dama con un diamante',null,'0');
Insert into PRODUCTO (ID,NOMBRE,MATERIAL,TIPO,PRECIO,PESO,LARGO,ANCHO,STOCK,DESCRIPCION,MARCA,TALLA) values ('5','JoyaGold gold','oro','cadena','1450000',null,null,null,'3','Cadena de oro para dama con un diamante',null,'0');
Insert into PRODUCTO (ID,NOMBRE,MATERIAL,TIPO,PRECIO,PESO,LARGO,ANCHO,STOCK,DESCRIPCION,MARCA,TALLA) values ('11','JoyaGold premium','oro','collar','5000000',null,null,null,'2','Collar para dama con un dije de oro blanco',null,'0');
Insert into PRODUCTO (ID,NOMBRE,MATERIAL,TIPO,PRECIO,PESO,LARGO,ANCHO,STOCK,DESCRIPCION,MARCA,TALLA) values ('10','JoyaGold','oro','cadena','2300000','10',null,null,'2','Cadena de oro para caballero ',null,'0');
Insert into PRODUCTO (ID,NOMBRE,MATERIAL,TIPO,PRECIO,PESO,LARGO,ANCHO,STOCK,DESCRIPCION,MARCA,TALLA) values ('12','JoyaGold','plata','pulsera','560000',null,null,null,'3','Pulsera de plata para hombre',null,'0');
--------------------------------------------------------
--  DDL for Index SYS_C008314
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008314" ON "PRODUCTO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008314
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C008314" ON "PRODUCTO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger TRIGGERUNO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "TRIGGERUNO" 
before insert on producto
for EACH row 
begin 
select uno.nextval into :new.id from dual;
end;
/
ALTER TRIGGER "TRIGGERUNO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIGGERUNO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "TRIGGERUNO" 
before insert on producto
for EACH row 
begin 
select uno.nextval into :new.id from dual;
end;
/
ALTER TRIGGER "TRIGGERUNO" ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTO
--------------------------------------------------------

  ALTER TABLE "PRODUCTO" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRODUCTO" MODIFY ("MATERIAL" NOT NULL ENABLE);
  ALTER TABLE "PRODUCTO" MODIFY ("TIPO" NOT NULL ENABLE);
  ALTER TABLE "PRODUCTO" MODIFY ("PRECIO" NOT NULL ENABLE);
  ALTER TABLE "PRODUCTO" MODIFY ("STOCK" NOT NULL ENABLE);
  ALTER TABLE "PRODUCTO" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "PRODUCTO" MODIFY ("NOMBRE" NOT NULL ENABLE);
