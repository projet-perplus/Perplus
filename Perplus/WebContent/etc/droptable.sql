drop table CHATTING cascade constraint;
drop table CHATTINGLOG cascade constraint;
drop table CODETABLE cascade constraint;
drop table HOUSE cascade constraint;
drop table HOUSECOMMENT cascade constraint;
drop table HOUSEFILTER cascade constraint;
drop table HOUSEPICTURE cascade constraint;
drop table HOUSEZZIM cascade constraint;
drop table HOWGETMONEY cascade constraint;
drop table MEMBER cascade constraint;
drop table PAYMENT cascade constraint;
drop table REJECT cascade constraint;
drop table REVIEW cascade constraint;
drop table REVIEWCOMMENT cascade constraint;
drop table REVIEWPICTURE cascade constraint;
drop table REVIEWZZIM cascade constraint;
drop table CHECKLIST cascade constraint;
drop table SHUTDOWN cascade constraint;
drop table SHOWMETHEMONEY cascade constraint;
drop table TRAVEL cascade constraint;

<<<<<<< HEAD
=======



select * from member

insert into MEMBER values('fdsa','a','a',111,'aaa','aaa','aa','aa','aa');





insert into HOUSECOMMENT values(1,'asdf','content',4,'2016-12-12');

delete from HOUSECOMMENT where house_serial = 1 and member_email = 'asdf';

insert into chatting

select *
from housecomment



insert into CHATTING values(1,'asdf','fdsa');
insert into CHATTINGLOG values(1,'fdsa','content2');
>>>>>>> branch 'master' of https://github.com/projet-perplus/Perplus.git
