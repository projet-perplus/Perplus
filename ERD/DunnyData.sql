--시퀀스 추가
create sequence CARD_SERIAL_seq
start with 10000

create sequence SHOWMETHEMONEY_SERIAL_seq
start with 10000

--Member 추가
insert into MEMBER values('aaa','wegwe','김아무개','199ㄷ-02-04','남',01023,'경기',null,0,null);
insert into MEMBER values('bbb','dsgwe','아아무개','1993-02-04','남',01023,'청주',null,0,null);
insert into MEMBER values('ccc','hfgwe','중아무개','199ㄹ-02-04','남',01023,'부산',null,0,null);
insert into MEMBER values('ddd','xcgwe','이아무개','199ㅍ-02-04','남',010123,'서울',null,0,null);
insert into MEMBER values('eee','weasdgwe','권아무개','199ㄷ-02-04','남',010223,'서울',null,0,null);
insert into MEMBER values('fff','dsg2we','태아무개','1993-02-04','남',010233,'경기',null,0,null);
insert into MEMBER values('ggg','hfwadgwe','연아무개','199ㄹ-02-04','남',010233,'전주',null,0,null);
insert into MEMBER values('hhh','xcgsadwe','보아무개','199ㅍ-02-04','남',010223,'의정부',null,0,null);

--House 추가
insert into HOUSE values(1,'bbb',0,'따뜻한 집','조흔 집입니다1','ㅇㅇㅇ',null,null,0,0,0,0,0);
insert into HOUSE values(2,'bbb',0,'추운 즵','조흔 집입니다2','ㅇㅇㅇ',null,null,0,0,0,0,0);
insert into HOUSE values(3,'bbb',0,'초가집','조흔 집입니다3','ㅇㅇㅇ',null,null,0,0,0,0,0);
insert into HOUSE values(4,'aaa',0,'이글루','조흔 집입니다4','ㅇㅇㅇ',null,null,0,0,0,0,0);
insert into HOUSE values(5,'bbb',0,'따뜻한 집2','조흔따뜻한 집입니다1','ㅇㅇㅇ',null,null,0,0,0,0,0);
insert into HOUSE values(6,'bbb',0,'추운 즵2','조흔집이지만 추운입니다2','ㅇㅇㅇ',null,null,0,0,0,0,0);
insert into HOUSE values(7,'aaa',0,'초가집2','바람에 흐날리는 조흔 집입니다3','ㅇㅇㅇ',null,null,0,0,0,0,0);
insert into HOUSE values(8,'bbb',0,'이글루2','조흔 집일까4','ㅇㅇㅇ',null,null,0,0,0,0,0);

--showmethemoney 추가
insert into SHOWMETHEMONEY values(111111, 'ggg@ggg.ggg', 1, '2012-12-12', 'aasdsd', 'asdasdasd', 100000, 10000, 'qwe');
insert into SHOWMETHEMONEY values(111212, 'ggg@ggg.ggg', 1, '2012-12-12', 'asasdd', 'asdasdasd', 102300, 1230, 'aqwesd');
insert into SHOWMETHEMONEY values(111313, 'ggg@ggg.ggg', 1, '2012-12-13', 'aasdsd', 'asdasdasd', 1001230, 1020, 'dfgdfg');
insert into SHOWMETHEMONEY values(111414, 'ggg@ggg.ggg', 1, '2012-12-15', 'aasdsd', 'asdasdasd', 102130, 10210, 'dfgdfg');
insert into SHOWMETHEMONEY values(111515, 'ggg@ggg.ggg', 1, '2012-12-15', 'asasdd', 'asdasdasd', 10032, 102100, 'atghngfsd');
insert into SHOWMETHEMONEY values(111616, 'ggg@ggg.ggg', 1, '2012-12-16', 'a1sd', 'asdasdasd', 10230, 10300, 'trhsfg');
insert into SHOWMETHEMONEY values(111717, 'ggg@ggg.ggg', 1, '2012-10-12', '123wqe', 'asdasdasd', 102300, 10230, 'sgfh');
insert into SHOWMETHEMONEY values(111818, 'ggg@ggg.ggg', 1, '2012-11-23', 'qwet', 'asdasdasd', 10230, 1023, 'fghfgh');
insert into SHOWMETHEMONEY values(111919, 'ggg@ggg.ggg', 1, '2013-01-12', 'dfg', 'asdasdasd', 10230, 102300, 'fghgf');
insert into SHOWMETHEMONEY values(112020, 'ggg@ggg.ggg', 1, '2012-11-12', 'asd', 'asdasdasd', 10440, 10660, 'ewr23');
insert into SHOWMETHEMONEY values(112121, 'ggg@ggg.ggg', 1, '2012-12-12', 'dfgdfzb', 'asdasdasd', 232000, 345300, 'ewrwef');
insert into SHOWMETHEMONEY values(112222, 'ggg@ggg.ggg', 1, '2012-12-12', 'dfb', 'asdasdasd', 43000, 3434, 'wefwe');
insert into SHOWMETHEMONEY values(112323, 'ggg@ggg.ggg', 1, '2012-12-12', 'asd', 'asdasdasd', 343421, 676, 'ewfewf');
insert into SHOWMETHEMONEY values(112411, 'ggg@ggg.ggg', 2, '2012-12-12', 'aasdsd', 'asdasdasd', 100000, 10000, 'qwe');
insert into SHOWMETHEMONEY values(112512, 'ggg@ggg.ggg', 2, '2012-12-12', 'asasdd', 'asdasdasd', 102300, 1230, 'aqwesd');
insert into SHOWMETHEMONEY values(112613, 'ggg@ggg.ggg', 2, '2012-12-13', 'aasdsd', 'asdasdasd', 1001230, 1020, 'dfgdfg');
insert into SHOWMETHEMONEY values(112714, 'ggg@ggg.ggg', 2, '2012-12-15', 'aasdsd', 'asdasdasd', 102130, 10210, 'dfgdfg');
insert into SHOWMETHEMONEY values(112815, 'ggg@ggg.ggg', 2, '2012-12-15', 'asasdd', 'asdasdasd', 10032, 102100, 'atghngfsd');
insert into SHOWMETHEMONEY values(112916, 'ggg@ggg.ggg', 2, '2012-12-16', 'a1sd', 'asdasdasd', 10230, 10300, 'trhsfg');
insert into SHOWMETHEMONEY values(113017, 'ggg@ggg.ggg', 2, '2012-10-12', '123wqe', 'asdasdasd', 102300, 10230, 'sgfh');
insert into SHOWMETHEMONEY values(113118, 'ggg@ggg.ggg', 2, '2012-11-23', 'qwet', 'asdasdasd', 10230, 1023, 'fghfgh');
insert into SHOWMETHEMONEY values(113219, 'ggg@ggg.ggg', 2, '2013-01-12', 'dfg', 'asdasdasd', 10230, 102300, 'fghgf');
insert into SHOWMETHEMONEY values(113320, 'ggg@ggg.ggg', 2, '2012-11-12', 'asd', 'asdasdasd', 10440, 10660, 'ewr23');
insert into SHOWMETHEMONEY values(113421, 'ggg@ggg.ggg', 2, '2012-12-12', 'dfgdfzb', 'asdasdasd', 232000, 345300, 'ewrwef');
insert into SHOWMETHEMONEY values(113522, 'ggg@ggg.ggg', 2, '2012-12-12', 'dfb', 'asdasdasd', 43000, 3434, 'wefwe');
insert into SHOWMETHEMONEY values(113623, 'ggg@ggg.ggg', 2, '2012-12-12', 'asd', 'asdasdasd', 343421, 676, 'ewfewf');
insert into SHOWMETHEMONEY values(113711, 'ggg@ggg.ggg', 3, '2012-12-12', 'aasdsd', 'asdasdasd', 100000, 10000, 'qwe');
insert into SHOWMETHEMONEY values(113812, 'ggg@ggg.ggg', 3, '2012-12-12', 'asasdd', 'asdasdasd', 102300, 1230, 'aqwesd');
insert into SHOWMETHEMONEY values(113913, 'ggg@ggg.ggg', 3, '2012-12-13', 'aasdsd', 'asdasdasd', 1001230, 1020, 'dfgdfg');
insert into SHOWMETHEMONEY values(114014, 'ggg@ggg.ggg', 3, '2012-12-15', 'aasdsd', 'asdasdasd', 102130, 10210, 'dfgdfg');
insert into SHOWMETHEMONEY values(114115, 'ggg@ggg.ggg', 3, '2012-12-15', 'asasdd', 'asdasdasd', 10032, 102100, 'atghngfsd');
insert into SHOWMETHEMONEY values(114216, 'ggg@ggg.ggg', 3, '2012-12-16', 'a1sd', 'asdasdasd', 10230, 10300, 'trhsfg');
insert into SHOWMETHEMONEY values(114317, 'ggg@ggg.ggg', 3, '2012-10-12', '123wqe', 'asdasdasd', 102300, 10230, 'sgfh');
insert into SHOWMETHEMONEY values(114418, 'ggg@ggg.ggg', 3, '2012-11-23', 'qwet', 'asdasdasd', 10230, 1023, 'fghfgh');
insert into SHOWMETHEMONEY values(114519, 'ggg@ggg.ggg', 3, '2013-01-12', 'dfg', 'asdasdasd', 10230, 102300, 'fghgf');
insert into SHOWMETHEMONEY values(114620, 'ggg@ggg.ggg', 3, '2012-11-12', 'asd', 'asdasdasd', 10440, 10660, 'ewr23');
insert into SHOWMETHEMONEY values(114721, 'ggg@ggg.ggg', 3, '2012-12-12', 'dfgdfzb', 'asdasdasd', 232000, 345300, 'ewrwef');
insert into SHOWMETHEMONEY values(114822, 'ggg@ggg.ggg', 3, '2012-12-12', 'dfb', 'asdasdasd', 43000, 3434, 'wefwe');
insert into SHOWMETHEMONEY values(114923, 'ggg@ggg.ggg', 3, '2012-12-12', 'asd', 'asdasdasd', 343421, 676, 'ewfewf');
insert into SHOWMETHEMONEY values(115011, 'ggg@ggg.ggg', 4, '2012-12-12', 'aasdsd', 'asdasdasd', 100000, 10000, 'qwe');
insert into SHOWMETHEMONEY values(115112, 'ggg@ggg.ggg', 4, '2012-12-12', 'asasdd', 'asdasdasd', 102300, 1230, 'aqwesd');
insert into SHOWMETHEMONEY values(115213, 'ggg@ggg.ggg', 4, '2012-12-13', 'aasdsd', 'asdasdasd', 1001230, 1020, 'dfgdfg');
insert into SHOWMETHEMONEY values(115314, 'ggg@ggg.ggg', 4, '2012-12-15', 'aasdsd', 'asdasdasd', 102130, 10210, 'dfgdfg');
insert into SHOWMETHEMONEY values(115415, 'ggg@ggg.ggg', 4, '2012-12-15', 'asasdd', 'asdasdasd', 10032, 102100, 'atghngfsd');
insert into SHOWMETHEMONEY values(115516, 'ggg@ggg.ggg', 4, '2012-12-16', 'a1sd', 'asdasdasd', 10230, 10300, 'trhsfg');
insert into SHOWMETHEMONEY values(115617, 'ggg@ggg.ggg', 4, '2012-10-12', '123wqe', 'asdasdasd', 102300, 10230, 'sgfh');
insert into SHOWMETHEMONEY values(115718, 'ggg@ggg.ggg', 4, '2012-11-23', 'qwet', 'asdasdasd', 10230, 1023, 'fghfgh');
insert into SHOWMETHEMONEY values(115819, 'ggg@ggg.ggg', 4, '2013-01-12', 'dfg', 'asdasdasd', 10230, 102300, 'fghgf');
insert into SHOWMETHEMONEY values(115920, 'ggg@ggg.ggg', 4, '2012-11-12', 'asd', 'asdasdasd', 10440, 10660, 'ewr23');
insert into SHOWMETHEMONEY values(116021, 'ggg@ggg.ggg', 4, '2012-12-12', 'dfgdfzb', 'asdasdasd', 232000, 345300, 'ewrwef');
insert into SHOWMETHEMONEY values(116122, 'ggg@ggg.ggg', 4, '2012-12-12', 'dfb', 'asdasdasd', 43000, 3434, 'wefwe');
insert into SHOWMETHEMONEY values(116223, 'ggg@ggg.ggg', 4, '2012-12-12', 'asd', 'asdasdasd', 343421, 676, 'ewfewf');





