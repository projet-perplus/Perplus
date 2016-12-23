/*리뷰 시퀀스*/
CREATE SEQUENCE REVIEW_SEQ START WITH 10000;
CREATE SEQUENCE REVIEWCOMMENT_SEQ START WITH 10000;
CREATE SEQUENCE REVIEWPICTURE_SEQ START WITH 10000;

/*멤버 시퀀스*/
CREATE SEQUENCE CHATTING_SEQ START WITH 10000;
CREATE SEQUENCE HOUSECOMMENT_SEQ START WITH 10000;
CREATE SEQUENCE HOUSEZZIM_SEQ START WITH 10000;
CREATE SEQUENCE HOWMONEY_SEQ START WITH 10000;
CREATE SEQUENCE PAYMENT_SEQ START WITH 10000;
CREATE SEQUENCE REJECT_SEQ START WITH 10000;
CREATE SEQUENCE REVIEWZZIM_SEQ START WITH 10000;
CREATE SEQUENCE TRAVEL_SEQ START WITH 10000;
/*하우스 시퀀스*/
CREATE SEQUENCE CHECKLIST_SEQ START WITH 10000;
CREATE SEQUENCE HOUSE_SEQ START WITH 30000;
CREATE SEQUENCE HOUSEPICTURE_SEQ START WITH 10000;
CREATE SEQUENCE SHUTDOWN_SEQ START WITH 10000;

select REVIEW_SEQ.nextval from dual

alter sequence REVIEWPICTURE_SEQ increment by 41;
select REVIEWPICTURE_SEQ.nextval from dual;
alter sequence REVIEWPICTURE_SEQ increment by 1


/* SEQUENCE DROP*/
DROP SEQUENCE REVIEW_SEQ;
DROP SEQUENCE REVIEWCOMMENT_SEQ;
DROP SEQUENCE REVIEWPICTURE_SEQ;

DROP SEQUENCE CHATTING_SEQ;
DROP SEQUENCE HOUSECOMMENT_SEQ;
DROP SEQUENCE HOUSEZZIM_SEQ;
DROP SEQUENCE HOWMONEY_SEQ;
DROP SEQUENCE PAYMENT_SEQ;
DROP SEQUENCE REJECT_SEQ;
DROP SEQUENCE REVIEWZZIM_SEQ;

DROP SEQUENCE CHECKLIST_SEQ;
DROP SEQUENCE HOUSE_SEQ;
DROP SEQUENCE HOUSEPICTURE_SEQ;
DROP SEQUENCE SHUTDOWN_SEQ;


create sequence HOUSE_SEQ increment by 1;
create sequence CHECKLIST_SEQ increment by 1;
create sequence HOUSEPICTURE_SEQ increment by 1;
create sequence SHUTDOWN_SEQ increment by 1;
create sequence REVIEW_SEQ increment by 1;
create sequence review_serial_seq;	
create sequence comment_serial_seq;	
create sequence picture_serial_seq;	
create sequence houseZzim_seq;
create sequence reviewZzim_seq;

drop sequence review_serial_seq;
drop sequence comment_serial_seq;
drop sequence picture_serial_seq;
drop sequence HOUSE_SEQ;
drop sequence CHECKLIST_SEQ;
drop sequence HOUSEPICTURE_SEQ;
drop sequence SHUTDOWN_SEQ;
drop sequence REVIEW_SEQ;

alter sequence HOUSE_SEQ increment by 1;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
select HOUSE_SEQ.nextval from DUAL;
