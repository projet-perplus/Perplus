create sequence house_seq increment by 1;

drop sequence house_seq


insert into HOUSEFILTER values(1,'화장실',20,'다인실',2,'경기도 용인시 모현면');

insert into HOUSEFILTER values(HOUSE_SEQ.nextval,'eee',234,'333',234,'3234')

update HOUSEFILTER 
set HOUSE_RANGE='집전체', HOUSE_GUEST_NUMBER=4, HOUSE_TYPE='초가집', HOUSE_ROOM_NUMBER=3, HOUSE_LOCATION='경기'
where HOUSE_SERIAL=1

insert into HOUSE values(1,'화장실',20,'다인실',2,'경기도 용인시 모현면');


     select r.review_serial, r.member_email,r.review_title,r.review_content,r.review_rating,r.review_time,r.review_marker_x,r.review_marker_y,r.review_marker_constant,
               c.review_serial,c.member_email,c.comment_content,c.comment_rating,c.comment_time,
               p.review_serial,p.picture_order,p.picture_name
      from review r, reviewcomment c, reviewpicture p
      where c.review_serial = r.review_serial
      and p.review_serial=c.review_serial 
      and r.review_serial=2
      
      insert into member values('aaa','ma','하하하',3,'경기','erwer',0,'23423',null)
      
      

