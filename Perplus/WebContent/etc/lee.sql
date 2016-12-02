create sequence house_seq increment by 1;

drop sequence house_seq


insert into HOUSEFILTER values(1,'화장실',20,'다인실',2,'경기도 용인시 모현면');

insert into HOUSEFILTER values(HOUSE_SEQ.nextval,'eee',234,'333',234,'3234')

update HOUSEFILTER 
set HOUSE_RANGE='집전체', HOUSE_GUEST_NUMBER=4, HOUSE_TYPE='초가집', HOUSE_ROOM_NUMBER=3, HOUSE_LOCATION='경기'
where HOUSE_SERIAL=1

insert into HOUSE values(1,'화장실',20,'다인실',2,'경기도 용인시 모현면');


