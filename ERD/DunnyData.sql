--������ �߰�
create sequence CARD_SERIAL_seq
start with 10000

create sequence SHOWMETHEMONEY_SERIAL_seq
start with 10000

--Member �߰�
insert into MEMBER values('aaa','wegwe','��ƹ���','199��-02-04','��',01023,'���',null,0,null);
insert into MEMBER values('bbb','dsgwe','�ƾƹ���','1993-02-04','��',01023,'û��',null,0,null);
insert into MEMBER values('ccc','hfgwe','�߾ƹ���','199��-02-04','��',01023,'�λ�',null,0,null);
insert into MEMBER values('ddd','xcgwe','�̾ƹ���','199��-02-04','��',010123,'����',null,0,null);
insert into MEMBER values('eee','weasdgwe','�Ǿƹ���','199��-02-04','��',010223,'����',null,0,null);
insert into MEMBER values('fff','dsg2we','�¾ƹ���','1993-02-04','��',010233,'���',null,0,null);
insert into MEMBER values('ggg','hfwadgwe','���ƹ���','199��-02-04','��',010233,'����',null,0,null);
insert into MEMBER values('hhh','xcgsadwe','���ƹ���','199��-02-04','��',010223,'������',null,0,null);

--House �߰�
insert into HOUSE values(1,'bbb',0,'������ ��','���� ���Դϴ�1','������',null,null,0,0,0,0,0);
insert into HOUSE values(2,'bbb',0,'�߿� ��','���� ���Դϴ�2','������',null,null,0,0,0,0,0);
insert into HOUSE values(3,'bbb',0,'�ʰ���','���� ���Դϴ�3','������',null,null,0,0,0,0,0);
insert into HOUSE values(4,'aaa',0,'�̱۷�','���� ���Դϴ�4','������',null,null,0,0,0,0,0);
insert into HOUSE values(5,'bbb',0,'������ ��2','��������� ���Դϴ�1','������',null,null,0,0,0,0,0);
insert into HOUSE values(6,'bbb',0,'�߿� ��2','������������ �߿��Դϴ�2','������',null,null,0,0,0,0,0);
insert into HOUSE values(7,'aaa',0,'�ʰ���2','�ٶ��� �峯���� ���� ���Դϴ�3','������',null,null,0,0,0,0,0);
insert into HOUSE values(8,'bbb',0,'�̱۷�2','���� ���ϱ�4','������',null,null,0,0,0,0,0);

--showmethemoney �߰�
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





