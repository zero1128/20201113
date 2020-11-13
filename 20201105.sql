create table memberChap04(
    idx NUMERIC(5),
    name varchar(30),
	gender varchar(30),
	id varchar(30),
	pwd varchar(30),
	cpwd varchar(30),
	addr varchar(200),
	phone varchar(30),
	email varchar(50),
	hobby varchar(200)
);

select * from "SCOTT"."MEMBER_mh" order by reg_date desc;

INSERT INTO "SCOTT"."MEMBER_mh" 
(ID, PASSWD, "DATE_NUMBER", EMAIL, ADDRESS, TEL, NAME,reg_date) 
VALUES ((select MEMBER_SEQ.nextval from dual), 'aa', 'aa', 'aa', 'aa', 'aa', 'name',sysdate);

commit;

delete from member_ex;

drop table member_mh;
CREATE TABLE "SCOTT"."MEMBER_mh" 
(	"ID" VARCHAR2(15 BYTE) NOT NULL ENABLE, 
	"PASSWD" VARCHAR2(12 BYTE) NOT NULL ENABLE, 
	"DATE_NUMBER" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE), 
	"ADDRESS" VARCHAR2(25 BYTE), 
	"TEL" VARCHAR2(13 BYTE), 
	"NAME" VARCHAR2(15 BYTE) NOT NULL ENABLE, 
	"REG_DATE" timestamp(8) NOT NULL ENABLE
);
   
commit;

create SEQUENCE member_seq;
