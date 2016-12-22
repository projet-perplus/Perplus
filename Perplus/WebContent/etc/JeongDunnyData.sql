DROP SEQUENCE CARD_SERIAL_seq;
DROP SEQUENCE SHOWMETHEMONEY_SERIAL_seq;

--시퀀스 추가
create sequence CARD_SERIAL_seq
start with 10000

create sequence SHOWMONEY_SERIAL_seq
start with 10000

--Member 추가
insert into MEMBER values('aaa','wegwe','김아무개','199ㄷ-02-04','남',01023,'경기',null,0,null);
insert into MEMBER values('bbb','dsgwe','아아무개','1993-02-04','남',01023,'청주',null,0,null);
insert into MEMBER values('ccc','hfgwe','중아무개','199ㄹ-02-04','남',01023,'부산',null,0,null);
insert into MEMBER values('ddd','xcgwe','이아무개','199ㅍ-02-04','남',010123,'서울',null,0,null);
insert into MEMBER values('eee','weasdgwe','권아무개','199ㄷ-02-04','남',010223,'서울',null,0,null);
insert into MEMBER values('fff','dsg2we','태아무개','1993-02-04','남',010233,'경기',null,0,null);
insert into MEMBER values('ggg@ggg.ggg','gggg','연아무개','199ㄹ-02-04','남',010233,'전주',null,0,null);
insert into MEMBER values('hhh','xcgsadwe','보아무개','199ㅍ-02-04','남',010223,'의정부',null,0,null);

--House 추가
insert into HOUSE values(1,'bbb',0,'따뜻한 집','조흔 집입니다1','ㅇㅇㅇ',0,0,0,0);
insert into HOUSE values(2,'aaa',0,'추운 즵','조흔 집입니다2','ㅇㅇㅇ',0,0,0,0);
insert into HOUSE values(3,'bbb',0,'초가집','조흔 집입니다3','ㅇㅇㅇ',0,0,0,0);
insert into HOUSE values(4,'ggg@ggg.ggg',0,'이글루','조흔 집입니다4','ㅇㅇㅇ',0,0,0,0);
insert into HOUSE values(5,'ggg@ggg.ggg',0,'따뜻한 집2','조흔따뜻한 집입니다1','ㅇㅇㅇ',0,0,0,0);
insert into HOUSE values(6,'ggg@ggg.ggg',0,'추운 즵2','조흔집이지만 추운입니다2','ㅇㅇㅇ',0,0,0,0);
insert into HOUSE values(7,'ggg@ggg.ggg',0,'초가집2','바람에 흐날리는 조흔 집입니다3','ㅇㅇㅇ',0,0,0,0);
insert into HOUSE values(8,'ggg@ggg.ggg',0,'이글루2','조흔 집일까4','ㅇㅇㅇ',0,0,0,0);

--travel 추가
insert into TRAVEL values(1,1, 1, 'ggg@ggg.ggg', '2012-12-12', '2012-12-14', 2, '2012-12-12', 100);
insert into TRAVEL values(2,1, 1, 'ggg@ggg.ggg', '2012-12-12', '2012-12-14', 2, '2012-12-12', 100);
insert into TRAVEL values(3,1, 1, 'ggg@ggg.ggg', '2012-12-12', '2012-12-14', 2, '2012-12-12', 100);
insert into TRAVEL values(4,1, 1, 'ggg@ggg.ggg', '2012-12-12', '2012-12-14', 2, '2012-12-12', 100);
insert into TRAVEL values(5,1, 1, 'ggg@ggg.ggg', '2012-12-12', '2012-12-14', 2, '2012-12-12', 100);
insert into TRAVEL values(6,1, 1, 'ggg@ggg.ggg', '2012-12-12', '2012-12-14', 2, '2012-12-12', 100);
insert into TRAVEL values(7,1, 1, 'ggg@ggg.ggg', '2012-12-12', '2012-12-14', 2, '2012-12-12', 100);
insert into TRAVEL values(8,1, 1, 'ggg@ggg.ggg', '2012-12-12', '2012-12-14', 2, '2012-12-12', 100);
insert into TRAVEL values(9,1, 1, 'ggg@ggg.ggg', '2012-12-12', '2012-12-14', 2, '2012-12-12', 100);
insert into TRAVEL values(10,1, 1, 'ggg@ggg.ggg', '2012-12-12', '2012-12-14', 2, '2012-12-12', 100);

--payinfo
insert into PAYINFO values(1, 'ggg@ggg.ggg', '2012-12-12', 100, 200);
insert into PAYINFO values(2, 'ggg@ggg.ggg', '2012-12-12', 100, 200);
insert into PAYINFO values(3, 'ggg@ggg.ggg', '2012-12-12', 100, 200);
insert into PAYINFO values(4, 'ggg@ggg.ggg', '2012-12-12', 100, 200);
insert into PAYINFO values(5, 'ggg@ggg.ggg', '2012-12-12', 100, 200);
insert into PAYINFO values(6, 'ggg@ggg.ggg', '2012-12-12', 100, 200);
insert into PAYINFO values(7, 'ggg@ggg.ggg', '2012-12-12', 100, 200);
insert into PAYINFO values(8, 'ggg@ggg.ggg', '2012-12-12', 100, 200);
insert into PAYINFO values(9, 'ggg@ggg.ggg', '2012-12-12', 100, 200);
insert into PAYINFO values(10, 'ggg@ggg.ggg', '2012-12-12', 100, 200);

--howgetmoney
insert into HOWMONEY values(11, 'ggg@ggg.ggg', 'asdasd', 'asdas', 200);
insert into HOWMONEY values(12, 'ggg@ggg.ggg', 'asdasd', 'asdas', 200);
insert into HOWMONEY values(13, 'ggg@ggg.ggg', 'asdasd', 'asdas', 200);
insert into HOWMONEY values(14, 'ggg@ggg.ggg', 'asdasd', 'asdas', 200);
insert into HOWMONEY values(15, 'ggg@ggg.ggg', 'asdasd', 'asdas', 200);
insert into HOWMONEY values(16, 'ggg@ggg.ggg', 'asdasd', 'asdas', 200);
insert into HOWMONEY values(17, 'ggg@ggg.ggg', 'asdasd', 'asdas', 200);
insert into HOWMONEY values(18, 'ggg@ggg.ggg', 'asdasd', 'asdas', 200);
insert into HOWMONEY values(19, 'ggg@ggg.ggg', 'asdasd', 'asdas', 200);
insert into HOWMONEY values(20, 'ggg@ggg.ggg', 'asdasd', 'asdas', 200);


--showmethemoney 추가
insert into SHOWMONEY values(1, 'ggg@ggg.ggg', 11, 110, 100, 1000);
insert into SHOWMONEY values(2, 'ggg@ggg.ggg', 12, 110, 100, 1000);
insert into SHOWMONEY values(3, 'ggg@ggg.ggg', 13, 110, 100, 1000);
insert into SHOWMONEY values(4, 'ggg@ggg.ggg', 14, 110, 100, 1000);
insert into SHOWMONEY values(5, 'ggg@ggg.ggg', 15, 110, 100, 1000);
insert into SHOWMONEY values(6, 'ggg@ggg.ggg', 16, 110, 100, 1000);
insert into SHOWMONEY values(7, 'ggg@ggg.ggg', 17, 111, 100, 1000);
insert into SHOWMONEY values(8, 'ggg@ggg.ggg', 18, 111, 100, 1000);
insert into SHOWMONEY values(9, 'ggg@ggg.ggg', 19, 111, 100, 1000);
insert into SHOWMONEY values(10, 'ggg@ggg.ggg', 20, 111, 100, 1000);

