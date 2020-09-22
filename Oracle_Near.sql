
create sequence nearmember_seq
  start with 1
  increment by 1
  minvalue 1
  maxvalue 10000;

create table nearmember (
   	userno	number  primary key,		
	userid varchar2(20),		
	password	varchar2(20),		
	username varchar2(20),
	email	varchar2(20),			
	contact 	varchar2(20)		
);

create sequence nearlist_seq
  start with 1
  increment by 1
  minvalue 1
  maxvalue 10000;
  
create table nearlist (
   	Nearno number  primary key,		
	Nearname varchar2(50),		
	Nearstate varchar2(20),		
	Nearaddress varchar2(50),			
	usepeople number,
	price number,
	img varchar2(50),
	Nearinfo varchar2(300),	
	hostinfo varchar2(300)
);

create sequence nearreserve_seq
  start with 1
  increment by 1
  minvalue 1
  maxvalue 10000;
  
create table nearreserve (
 	reserveno  number  primary key,		
	username varchar2(20),		
	nearname varchar2(20),
	reserveterm	number,			
	reserveday 	varchar2(10),		
	usenum		number,
	img varchar2(50),
	userno	number
);

create sequence nearhelp_seq
    start with 1
    increment by 1
    minvalue 1
    maxvalue 10000;

create table nearhelp (
    helpno number primary key ,
    username   varchar2(40) not null,
    email	varchar2(40) not null,
    helptitle varchar2(15) not null,
    upload_date	 date,
    helpcontent	 varchar2(500) not null
 
);

INSERT INTO "KIKI"."NEARLIST" (NEARNO, NEARNAME, NEARSTATE, NEARADDRESS, USEPEOPLE, PRICE, IMG, NEARINFO, HOSTINFO) VALUES ('2', 'No.2', '경기도', '안산시 단원구', '2', '3000000', 'banner2.jpg', '숙소 정보입니다.', '호스트 정보입니다.')
INSERT INTO "KIKI"."NEARLIST" (NEARNO, NEARNAME, NEARSTATE, NEARADDRESS, USEPEOPLE, PRICE, IMG, NEARINFO, HOSTINFO) VALUES ('3', 'No.3', '경기도', '안산시 상록구', '3', '1500000', 'banner3.jpg', '숙소 정보입니다.', '호스트 정보입니다.')
INSERT INTO "KIKI"."NEARLIST" (NEARNO, NEARNAME, NEARSTATE, NEARADDRESS, USEPEOPLE, PRICE, IMG, NEARINFO, HOSTINFO) VALUES ('4', 'No.4', '경기도', '안산시 상록구', '2', '1500000', 'banner4.jpg', '숙소 정보입니다.', '호스트 정보입니다.')
INSERT INTO "KIKI"."NEARLIST" (NEARNO, NEARNAME, NEARSTATE, NEARADDRESS, USEPEOPLE, PRICE, IMG, NEARINFO, HOSTINFO) VALUES ('5', 'No.5', '경기도', '수원시 권선구', '4', '2000000', 'banner5.jpg', '숙소 정보입니다.', '호스트 정보입니다.')
INSERT INTO "KIKI"."NEARLIST" (NEARNO, NEARNAME, NEARSTATE, NEARADDRESS, USEPEOPLE, PRICE, IMG, NEARINFO, HOSTINFO) VALUES ('6', 'No.6', '경기도', '안산시 상록구', '2', '1500000', 'banner6.jpg', '숙소 정보입니다.', '호스트 정보입니다.')
INSERT INTO "KIKI"."NEARLIST" (NEARNO, NEARNAME, NEARSTATE, NEARADDRESS, USEPEOPLE, PRICE, IMG, NEARINFO, HOSTINFO) VALUES ('7', 'No.7', '경기도', '시흥시', '7', '4000000', 'banner7.jpg', '숙소 정보입니다.', '호스트 정보입니다.')
INSERT INTO "KIKI"."NEARLIST" (NEARNO, NEARNAME, NEARSTATE, NEARADDRESS, USEPEOPLE, PRICE, IMG, NEARINFO, HOSTINFO) VALUES ('8', 'No.8', '경기도', '군포시', '5', '1500000', 'banner8.jpg', '숙소 정보입니다.', '호스트 정보입니다.')
INSERT INTO "KIKI"."NEARLIST" (NEARNO, NEARNAME, NEARSTATE, NEARADDRESS, USEPEOPLE, PRICE, IMG, NEARINFO, HOSTINFO) VALUES ('9', 'No.9', '경기도', '안산시 상록구', '5', '1500000', 'banner9.jpg', '숙소 정보입니다.', '호스트 정보입니다.')
INSERT INTO "KIKI"."NEARLIST" (NEARNO, NEARNAME, NEARSTATE, NEARADDRESS, USEPEOPLE, PRICE, IMG, NEARINFO, HOSTINFO) VALUES ('10', 'No.10', '경기도', '안산시 단원구', '2', '1500000', 'banner10.jpg', '숙소 정보입니다.', '호스트 정보입니다.')
INSERT INTO "KIKI"."NEARLIST" (NEARNO, NEARNAME, NEARSTATE, NEARADDRESS, USEPEOPLE, PRICE, IMG, NEARINFO, HOSTINFO) VALUES ('11', 'No.11', '경기도', '안산시 단원구', '4', '1500000', 'banner11.jpg', '숙소 정보입니다.', '호스트 정보입니다.')
INSERT INTO "KIKI"."NEARLIST" (NEARNO, NEARNAME, NEARSTATE, NEARADDRESS, USEPEOPLE, PRICE, IMG, NEARINFO, HOSTINFO) VALUES ('12', 'No.12', '경기도', '안산시 단원구', '8', '3500000', 'banner12.jpg', '숙소 정보입니다.', '호스트 정보입니다.')


