create sequence house_seq increment by 1;

drop sequence house_seq

select DISTINCT HOUSE_SERIAL from HOUSEPICTURE

insert into HOUSEFILTER values(1,'화장실',20,'다인실',2,'경기도 용인시 모현면');

select sysdate from dual;

insert into HOUSEZZIM values(1,2,'bbb')

delete from checklist

insert into CHECKLIST values(CHECKLIST_SEQ.nextval,1,16,'안전카드');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,1,15,'다리미');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,2,15,'필수품목');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,2,16,'연기 감지기');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,2,17,'부엌');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,3,15,'에어컨');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,3,16,'소화기');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,3,16,'일산화탄소 감지기');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,4,17,'헬스장');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,4,17,'엘리베이터');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,4,15,'헤어 드라이기');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,4,17,'수영장');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,5,16,'안전카드');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,5,15,'필수품목');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,5,16,'연기 감지기');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,5,17,'부엌');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,6,15,'에어컨');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,6,16,'소화기');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,6,16,'일산화탄소 감지기');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,6,17,'헬스장');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,7,17,'엘리베이터');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,7,15,'헤어 드라이기');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,8,17,'수영장');
insert into CHECKLIST values(CHECKLIST_SEQ.nextval,8,16,'안전카드');

insert into SHUTDOWN values(21,1,'2017-2-3');
insert into SHUTDOWN values(22,1,'2017-2-6');
insert into SHUTDOWN values(23,1,'2017-3-7');
insert into SHUTDOWN values(24,1,'2017-3-6');
insert into SHUTDOWN values(25,1,'2017-3-4');
insert into SHUTDOWN values(26,1,'2017-4-2');
insert into SHUTDOWN values(27,1,'2017-4-15');
insert into SHUTDOWN values(28,1,'2017-4-18');
insert into SHUTDOWN values(29,1,'2017-4-28');
insert into SHUTDOWN values(30,1,'2017-4-14');
insert into SHUTDOWN values(31,1,'2017-5-11');
insert into SHUTDOWN values(32,1,'2017-5-4');
insert into SHUTDOWN values(33,1,'2017-5-13');
insert into SHUTDOWN values(34,1,'2017-5-17');
insert into SHUTDOWN values(35,1,'2017-6-21');
insert into SHUTDOWN values(36,1,'2017-6-24');
insert into SHUTDOWN values(37,1,'2017-6-26');

select SHUTDOWN_DATE
from
SHUTDOWN

		select min(SHUTDOWN_DATE - CAST('2017-6-1' as date) )
		from SHUTDOWN
		where SHUTDOWN_SERIAL in
		(
			select SHUTDOWN_SERIAL
			from SHUTDOWN
			where ( SHUTDOWN_DATE - CAST('2017-6-1' as date) >=0)
			and HOUSE_SERIAL= 1
		)


insert into SHUTDOWN values(1,1,'2015-10-11');
insert into SHUTDOWN values(2,2,'2015-10-12');
insert into SHUTDOWN values(3,3,'2015-10-13');
insert into SHUTDOWN values(4,4,'2015-10-14');
insert into SHUTDOWN values(5,5,'2015-10-15');
insert into SHUTDOWN values(6,6,'2015-10-11');
insert into SHUTDOWN values(7,7,'2015-10-12');
insert into SHUTDOWN values(8,8,'2015-10-13');
insert into SHUTDOWN values(9,1,'2015-10-20');
insert into SHUTDOWN values(10,2,'2015-10-15');
insert into SHUTDOWN values(11,3,'2015-10-20');
insert into SHUTDOWN values(12,4,'2015-10-11');
insert into SHUTDOWN values(13,5,'2015-10-12');
insert into SHUTDOWN values(14,6,'2015-10-13');
insert into SHUTDOWN values(15,7,'2015-10-14');
insert into SHUTDOWN values(16,8,'2015-10-15');
insert into SHUTDOWN values(17,1,'2015-10-11');
insert into SHUTDOWN values(18,2,'2015-10-12');
insert into SHUTDOWN values(19,3,'2015-10-13');
insert into SHUTDOWN values(20,4,'2015-10-20');
-- 완성이다 ㅠㅠ 이제 남은건 CHECKLIST 뿐...
select DISTINCT HOuSE_SERIAL from (
	select DISTINCT HOUSE_SERIAL from SHUTDOWN
where HOUSE_SERIAL NOT IN (
	select DISTINCT HOUSE_SERIAL from SHUTDOWN
	where SHUTDOWN_DATE between '2015-10-12' and '2015-10-14'
) UNION ALL select DISTINCT HOUSE_SERIAL from CHECKLIST where HOUSE_SERIAL = 26
or HOUSE_SERIAL = 28 or HOUSE_SERIAL = 44
) group by HOUSE_SERIAL HAVING count(*)>1

select DISTINCT HOUSE_SERIAL from SHUTDOWN
where HOUSE_SERIAL NOT IN (
	select DISTINCT HOUSE_SERIAL from SHUTDOWN
	where SHUTDOWN_DATE between '2015-10-12' and '2015-10-14'
)

select DISTINCT HOUSE_SERIAL from SHUTDOWN
	where SHUTDOWN_DATE NOT between '2015-10-12' and '2015-10-14'

update HOUSEFILTER 
set HOUSE_RANGE='집전체', HOUSE_GUEST_NUMBER=4, HOUSE_TYPE='초가집', HOUSE_ROOM_NUMBER=3, HOUSE_LOCATION='경기'
where HOUSE_SERIAL=1

insert into HOUSE values(1,'화장실',20,'다인실',2,'경기도 용인시 모현면');

insert into HOUSE values(HOUSE_SEQ.nextval,'bbb',0,'따뜻한 집','조흔 집입니다1',null,0,37.400,127.100,213);
insert into HOUSE values(HOUSE_SEQ.nextval,'bbb',0,'추운 즵','조흔 집입니다2',null,0,37.404,127.110,213);
insert into HOUSE values(HOUSE_SEQ.nextval,'bbb',0,'초가집','조흔 집입니다3',null,0,37.500,127.099,213);
insert into HOUSE values(HOUSE_SEQ.nextval,'bbb',0,'이글루','조흔 집입니다4',null,0,37.398,127.142,213);
insert into HOUSE values(HOUSE_SEQ.nextval,'aaa',0,'아늑한집','조흔 집입니다5',null,0,37.400,127.140,213);
insert into HOUSE values(HOUSE_SEQ.nextval,'aaa',0,'정글집','조흔 집입니다6',null,0,37.400,127.102,213);
insert into HOUSE values(HOUSE_SEQ.nextval,'aaa',0,'개미집','조흔 집입니7',null,0,37.404,127.095,213);
insert into HOUSE values(HOUSE_SEQ.nextval,'aaa',0,'사람집','조흔 집입니다8',null,0,37.407,127.097,213);


delete from HOUSE where HOUSE_SERIAL = 1

     select r.review_serial, r.member_email,r.review_title,r.review_content,r.review_rating,r.review_time,r.review_marker_x,r.review_marker_y,r.review_marker_constant,
               c.review_serial,c.member_email,c.comment_content,c.comment_rating,c.comment_time,
               p.review_serial,p.picture_order,p.picture_name
      from review r, reviewcomment c, reviewpicture p
      where c.review_serial = r.review_serial
      and p.review_serial=c.review_serial 
      and r.review_serial=2
      
	insert into MEMBER values('aaa','wegwe','김아무개','199ㄷ-02-04','남',01023,'경기',null,0,null);
	insert into MEMBER values('bbb','dsgwe','아아무개','1993-02-04','남',01023,'경기',null,0,null);
	insert into MEMBER values('ccc','hfgwe','중아무개','199ㄹ-02-04','남',01023,'경기',null,0,null);
	insert into MEMBER values('ddd','xcgwe','이아무개','199ㅍ-02-04','남',01023,'경기',null,0,null);
	
	insert into MEMBER values('ddd@dd','xcgwe','이아무개','199ㅍ-02-04','남',01023,'경기',null,0,null);
      
 
	select SYSDATE from dual;

		select HOUSE_SERIAL,
		MEMBER_EMAIL,
		HOUSE_REGISTER_STATUS,
		HOUSE_TITLE,
		HOUSE_CONTENT,
		HOUSE_NECESSARY_CONDITION,
		HOUSE_CHECKIN_START,
		HOUSE_CHECKIN_END,
		HOUSE_RATING,
		HOUSE_MARKER_X,
		HOUSE_MARKER_Y,
		HOUSE_MARKER_CONSTANT
		from HOUSE
		where HOUSE_SERIAL = 2

				select HOUSE_SERIAL,
		MEMBER_EMAIL,
		HOUSE_REGISTER_STATUS,
		HOUSE_TITLE,
		HOUSE_CONTENT,
		HOUSE_NECESSARY_CONDITION,
		HOUSE_CHECKIN_START,
		HOUSE_CHECKIN_END,
		HOUSE_RATING,
		HOUSE_MARKER_X,
		HOUSE_MARKER_Y,
		HOUSE_MARKER_CONSTANT
		from HOUSE
		where MEMBER_EMAIL = 'bbb';
		
		insert into HOUSEFILTER values(1,'집전체',3,'초가집',3,'경기도',4,3,4,6,6,0,0,0,0	)
		
		select 
		HOUSE_SERIAL houseSerial,
		HOUSEFILTER_RANGE housefilterRange,
		HOUSEFILTER_GUEST_NUMBER housefilterGuestNumber,
		HOUSEFILTER_TYPE housefilterType,
		HOUSEFILTER_ROOM_NUMBER housefilterRoomNumber,
		HOUSEFILTER_LOCATION housefilterLocation,
		HOUSEFILTER_BEDROOM_NUMBER housefilterBedroomNumber,
		HOUSEFILTER_BATHROOM_NUMBER housefilterBathroomNumber,
		HOUSEFILTER_BED_NUMBER housefilterBedNumber,
		HOUSEFILTER_CHECKIN_TERM housefilterCheckinTerm,
		HOUSEFILTER_RESERVATION_TERM housefilterReservationTerm,
		HOUSEFILTER_BAK_MIN housefilterBakMin,
		HOUSEFILTER_BAK_MAX housefilterBakMax,
		HOUSEFILTER_MONEY_MIN housefilterMoneyMin,
		HOUSEFILTER_MONEY_MAX housefilterMoneyMax
		from HOUSEFILTER 
		
		select * from HOUSE where HOUSE_SERIAL = 25
		
		select (DATE'2008-03-23') - (DATE'2007-03-23') from dual;
		-- filter 시작
		
		insert into HOUSEFILTER values(1,'개인실',12,'이글루',1,'수지구',3,2,5,5,null,null,3,2,3,20000);
		insert into HOUSEFILTER values(2,'다인실',2,'초가집',4,'용인시' ,4,2,5,6,null,null,4,6,7,30000);
		insert into HOUSEFILTER values(3,'다인실',3,'아파트',6,'영통구' ,5,3,4,7,null,null,2,8,90,40000);
		insert into HOUSEFILTER values(4,'개인실',6,'빌라',2,'분당구'   ,2,7,2,8,null,null,5,5,8,50000);
		insert into HOUSEFILTER values(5,'개인실',100,'개집',3,'3234' ,4,8,1,8,null,null,2,2,3,60000);
		insert into HOUSEFILTER values(6,'개인실',4,'모래성',1,'3234' ,6,2,19,8,null,null,3,9,14,70000);
		insert into HOUSEFILTER values(7,'다인실',1,'노숙',4,'3234'   ,7,1,34,8,null,null,4,21,23,80000);
		insert into HOUSEFILTER values(8,'다인실',1,'지하철',6,'3234' ,8,4,4,3,null,null,1,3,10,90000);
		
		--간단한 필터 사용 예
		select * from HOUSE where HOUSE_SERIAL IN 
		(
		select HOUSE_SERIAL from HOUSEFILTER
		--1 차적으로 house
		--<if test ="startDay != null and endDay != null">
--		<where>
			 where (10-3) >= HOUSEFILTER_BAK_MIN
			and (10-3) <= HOUSEFILTER_BAK_MAX
--		</where>
		--</if>
		);
		
		-- 이게 된다는걸 알았으면 끝났다!!
		select * from HOUSE where HOUSE_SERIAL = (select HOUSE_SERIAL from HOUSEFILTER where HOUSEFILTER_BAK_MIN = 21);

		
		select DISTINCT h.HOUSE_SERIAL,
		h.HOUSEFILTER_RANGE,
		h.HOUSEFILTER_GUEST_NUMBER,
		h.HOUSEFILTER_TYPE,
		h.HOUSEFILTER_ROOM_NUMBER,
		h.HOUSEFILTER_LOCATION,
		h.HOUSEFILTER_BEDROOM_NUMBER,
		h.HOUSEFILTER_BATHROOM_NUMBER,
		h.HOUSEFILTER_BED_NUMBER,
		h.HOUSEFILTER_CHECKIN_TERM,
		h.HOUSEFILTER_RESERVATION_TERM,
		h.HOUSEFILTER_BAK_MIN,
		h.HOUSEFILTER_BAK_MAX,
		h.HOUSEFILTER_MONEY_MIN,
		h.HOUSEFILTER_MONEY_MAX 
		from HOUSEFILTER h , SHUTDOWN s
		;
		
		select HOUSE_SERIAL from 
		
select HOUSE_SERIAL from		
	(select HOUSE_SERIAL 
		from CHECKLIST 
		where VALUE in
		('필수품목','연기 감지기')
	)
group by HOUSE_SERIAL HAVING COUNT(*) = 2(여기에 size)


select HOUSE_SERIAL
from (
		select 
		HOUSE_SERIAL,
		HOUSEFILTER_RANGE,
		HOUSEFILTER_GUEST_NUMBER,
		HOUSEFILTER_TYPE,
		HOUSEFILTER_ROOM_NUMBER,
		HOUSEFILTER_LOCATION,
		HOUSEFILTER_BEDROOM_NUMBER,
		HOUSEFILTER_BATHROOM_NUMBER,
		HOUSEFILTER_BED_NUMBER,
		HOUSEFILTER_CHECKIN_TERM,
		HOUSEFILTER_RESERVATION_TERM,
		HOUSEFILTER_BAK_MIN,
		HOUSEFILTER_BAK_MAX,
		HOUSEFILTER_MONEY_MIN,
		HOUSEFILTER_MONEY_MAX 
		from HOUSEFILTER
		where HOUSE_SERIAL in (
			select DISTINCT HOUSE_SERIAL from
			(
			  	select DISTINCT HOUSE_SERIAL 
			  	from SHUTDOWN
				where HOUSE_SERIAL NOT IN (
					select DISTINCT HOUSE_SERIAL 
					from SHUTDOWN
					where SHUTDOWN_DATE 
					between '1992-02-04' and '1992-02-13'
				)
			)
		)
	)
)


select   h.HOUSE_SERIAL h_hSerial,h.MEMBER_EMAIL h_email, h.HOUSE_REGISTER_STATUS,h.HOUSE_TITLE, h.HOUSE_CONTENT,h.HOUSE_NECESSARY_CONDITION,   h.HOUSE_RATING, h.HOUSE_MARKER_X,h.HOUSE_MARKER_Y, h.HOUSE_MARKER_CONSTANT,   f.HOUSE_SERIAL f_hSerial,f.HOUSEFILTER_RANGE,f.HOUSEFILTER_GUEST_NUMBER,f.HOUSEFILTER_TYPE,f.HOUSEFILTER_ROOM_NUMBER,f.HOUSEFILTER_LOCATION,f.HOUSEFILTER_BEDROOM_NUMBER,   f.HOUSEFILTER_BATHROOM_NUMBER,f.HOUSEFILTER_BED_NUMBER,f.HOUSEFILTER_CHECKIN_TERM,f.HOUSEFILTER_CHECKIN_START,f.HOUSEFILTER_CHECKIN_END,   f.HOUSEFILTER_RESERVATION_TERM,f.HOUSEFILTER_BAK_MIN,f.HOUSEFILTER_BAK_MAX,f.HOUSEFILTER_PRICE,   p.PICTURE_SERIAL, p.HOUSE_SERIAL p_hSerial, p.PICTURE_ORDER , p.PICTURE_NAME   
from HOUSE h, HOUSEFILTER f , HOUSEPICTURE p       
where   h.HOUSE_SERIAL    
in   
(              
	select HOUSE_SERIAL houseSerial    
	from HOUSE     
	where HOUSE_SERIAL 
	IN   
	(          
		select HOUSE_SERIAL     
		from 
		(       
			select HOUSE_SERIAL,   HOUSEFILTER_RANGE,   HOUSEFILTER_GUEST_NUMBER,   HOUSEFILTER_TYPE,   HOUSEFILTER_ROOM_NUMBER,   HOUSEFILTER_LOCATION,   HOUSEFILTER_BEDROOM_NUMBER,   HOUSEFILTER_BATHROOM_NUMBER,   HOUSEFILTER_BED_NUMBER,   HOUSEFILTER_CHECKIN_TERM,   HOUSEFILTER_CHECKIN_START,   HOUSEFILTER_CHECKIN_END,   HOUSEFILTER_RESERVATION_TERM,   HOUSEFILTER_BAK_MIN,   HOUSEFILTER_BAK_MAX,   HOUSEFILTER_PRICE   
			from HOUSEFILTER                                      
			WHERE HOUSE_SERIAL 
			in 
			(       
				select DISTINCT HOUSE_SERIAL         
				from 
				(                                   
					select DISTINCT HOUSE_SERIAL           
					from SHUTDOWN        
					where HOUSE_SERIAL 
					NOT IN 
					(        
						select DISTINCT HOUSE_SERIAL          
						from SHUTDOWN          
						where SHUTDOWN_DATE       
						between (CAST(? as date)) and (CAST(? as date))        
					)                                                           
				)                      
			)      
		)          
		WHERE  (CAST(? as date)-CAST(? as date)) >=  HOUSEFILTER_BAK_MIN      
		and (CAST(? as date)-CAST(? as date)) <=  HOUSEFILTER_BAK_MAX           
		and ADD_MONTHS((select sysdate from dual),HOUSEFILTER_RESERVATION_TERM) >= CAST(? as date)         
		and (select sysdate from dual) + (HOUSEFILTER_CHECKIN_TERM) <= CAST(? as date)                     
		and HOUSEFILTER_GUEST_NUMBER >= ?                        
		and HOUSEFILTER_RANGE = ?                  
		and (HOUSEFILTER_PRICE between to_number(?) and to_number(?))     
	)   
)  
and f.HOUSE_SERIAL = h.HOUSE_SERIAL  
and p.HOUSE_SERIAL(+) = h.HOUSE_SERIAL   
and (HOUSE_MARKER_X between ? and ?)   
and (HOUSE_MARKER_Y between ? and ?)



select HOUSE_SERIAL houseSerial   
from HOUSE    
where HOUSE_SERIAL IN   
(        
select HOUSE_SERIAL        
from (         
select HOUSE_SERIAL,   
HOUSEFILTER_RANGE,   
HOUSEFILTER_GUEST_NUMBER,   
HOUSEFILTER_TYPE,   
HOUSEFILTER_ROOM_NUMBER,   
HOUSEFILTER_LOCATION,   
HOUSEFILTER_BEDROOM_NUMBER,   
HOUSEFILTER_BATHROOM_NUMBER,   
HOUSEFILTER_BED_NUMBER,   
HOUSEFILTER_CHECKIN_TERM,   
HOUSEFILTER_RESERVATION_TERM,   
HOUSEFILTER_BAK_MIN,   
HOUSEFILTER_BAK_MAX,   
HOUSEFILTER_MONEY_MIN,   
HOUSEFILTER_MONEY_MAX    
from HOUSEFILTER                                  
WHERE HOUSE_SERIAL in (       
select DISTINCT HOUSE_SERIAL from                                                              
)     
)           
)




select HOUSE_SERIAL houseSerial  
from HOUSE    
where HOUSE_SERIAL IN   (        
					select HOUSE_SERIAL       
					from (
							select HOUSE_SERIAL,   HOUSEFILTER_RANGE,   HOUSEFILTER_GUEST_NUMBER,   HOUSEFILTER_TYPE,   HOUSEFILTER_ROOM_NUMBER,   HOUSEFILTER_LOCATION,   HOUSEFILTER_BEDROOM_NUMBER,   HOUSEFILTER_BATHROOM_NUMBER,   HOUSEFILTER_BED_NUMBER,   HOUSEFILTER_CHECKIN_TERM,   HOUSEFILTER_RESERVATION_TERM,   HOUSEFILTER_BAK_MIN,   HOUSEFILTER_BAK_MAX,   HOUSEFILTER_MONEY_MIN,   HOUSEFILTER_MONEY_MAX   
							from HOUSEFILTER                                  
							WHERE HOUSE_SERIAL in (       
												select DISTINCT HOUSE_SERIAL 
												from        (                   
															select DISTINCT HOUSE_SERIAL          
															from SHUTDOWN        
															where HOUSE_SERIAL NOT IN (        
																					select DISTINCT HOUSE_SERIAL          
																					from SHUTDOWN      
																					where SHUTDOWN_DATE     between (CAST('1992-02-04' as date)) and (CAST('1992-02-13' as date))        
																					)                                                  
															)     
													)           
							)


							
							
							select HOUSE_SERIAL houseSerial   from HOUSE    where HOUSE_SERIAL IN   (        select HOUSE_SERIAL        from (         select HOUSE_SERIAL,   HOUSEFILTER_RANGE,   HOUSEFILTER_GUEST_NUMBER,   HOUSEFILTER_TYPE,   HOUSEFILTER_ROOM_NUMBER,   HOUSEFILTER_LOCATION,   HOUSEFILTER_BEDROOM_NUMBER,   HOUSEFILTER_BATHROOM_NUMBER,   HOUSEFILTER_BED_NUMBER,   HOUSEFILTER_CHECKIN_TERM,   HOUSEFILTER_RESERVATION_TERM,   HOUSEFILTER_BAK_MIN,   HOUSEFILTER_BAK_MAX,   HOUSEFILTER_MONEY_MIN,   HOUSEFILTER_MONEY_MAX    from HOUSEFILTER                                  WHERE HOUSE_SERIAL in (       select DISTINCT HOUSE_SERIAL from               (                    select DISTINCT HOUSE_SERIAL           from SHUTDOWN        where HOUSE_SERIAL NOT IN (         select DISTINCT HOUSE_SERIAL          from SHUTDOWN         where SHUTDOWN_DATE          between (CAST(? as date)) and (CAST(? as date))        )                              UNION AL                                       select HOUSE_SERIAL from(          select HOUSE_SERIAL           from CHECKLIST           where VALUE in          (           ?          ,           ?          ,           ?          ,           ?          ,           ?          )         )         group by HOUSE_SERIAL HAVING COUNT(*) = ?        )                                            group by HOUSE_SERIAL HAVING COUNT(*)>1                    )     )           )




						
select HOUSE_SERIAL houseSerial   
from HOUSE   
where HOUSE_SERIAL IN   (        
	select HOUSE_SERIAL        
	from (         
		select HOUSE_SERIAL,   HOUSEFILTER_RANGE,   HOUSEFILTER_GUEST_NUMBER,   HOUSEFILTER_TYPE,   HOUSEFILTER_ROOM_NUMBER,   HOUSEFILTER_LOCATION,   HOUSEFILTER_BEDROOM_NUMBER,   HOUSEFILTER_BATHROOM_NUMBER,   HOUSEFILTER_BED_NUMBER,   HOUSEFILTER_CHECKIN_TERM,   HOUSEFILTER_CHECKIN_START,   HOUSEFILTER_CHECKIN_END,   HOUSEFILTER_RESERVATION_TERM,   HOUSEFILTER_BAK_MIN,   HOUSEFILTER_BAK_MAX,   HOUSEFILTER_PRICE   
		from HOUSEFILTER                                  
		WHERE HOUSE_SERIAL in (       
			select DISTINCT HOUSE_SERIAL 
			from (                                  
				select DISTINCT HOUSE_SERIAL           
				from SHUTDOWN        
				where HOUSE_SERIAL NOT IN (         
					select DISTINCT HOUSE_SERIAL          
					from SHUTDOWN         
					where SHUTDOWN_DATE          
					between (CAST(? as date)) and (CAST(? as date))        
				)                                
				UNION ALL 			       
				select HOUSE_SERIAL 
				from(          
					select HOUSE_SERIAL           
					from CHECKLIST          
					where VALUE in          (           ?          )         
				)         
				group by HOUSE_SERIAL HAVING COUNT(*) = ?        
			)                                
			group by HOUSE_SERIAL HAVING COUNT(*)>1               
		)       
	)                    
)             


select HOUSE_SERIAL houseSerial   
from HOUSE    
where HOUSE_SERIAL IN   
(        
	select HOUSE_SERIAL        
	from 
	(         
		select HOUSE_SERIAL,   HOUSEFILTER_RANGE,   HOUSEFILTER_GUEST_NUMBER,   HOUSEFILTER_TYPE,   HOUSEFILTER_ROOM_NUMBER,   HOUSEFILTER_LOCATION,   HOUSEFILTER_BEDROOM_NUMBER,   HOUSEFILTER_BATHROOM_NUMBER,   HOUSEFILTER_BED_NUMBER,   HOUSEFILTER_CHECKIN_TERM,   HOUSEFILTER_CHECKIN_START,   HOUSEFILTER_CHECKIN_END,   HOUSEFILTER_RESERVATION_TERM,   HOUSEFILTER_BAK_MIN,   HOUSEFILTER_BAK_MAX,   HOUSEFILTER_PRICE   
		from HOUSEFILTER                                 
		WHERE HOUSE_SERIAL in 
		(       
			select DISTINCT HOUSE_SERIAL        
			from 
			(                                  
				select DISTINCT HOUSE_SERIAL           
				from SHUTDOWN       
				where HOUSE_SERIAL NOT IN 
				(         
					select DISTINCT HOUSE_SERIAL          
					from SHUTDOWN         
					where SHUTDOWN_DATE          
					between (CAST(? as date)) and (CAST(? as date))        
				)                                
				UNION ALL                                  
				select HOUSE_SERIAL          
				from
				(          
					select HOUSE_SERIAL          
					from CHECKLIST           
					where VALUE in          (           ?          )         
				)         
				group by HOUSE_SERIAL HAVING COUNT(*) = ?        
			)                                
			group by HOUSE_SERIAL HAVING COUNT(*)>1               
		)       
	)     
)


-- list X shutdown X -> table 없고 , 오른쪽 괄호 없고
select HOUSE_SERIAL houseSerial   
from HOUSE    
where HOUSE_SERIAL IN   
(        
	select HOUSE_SERIAL        
	from 
	(         
		select HOUSE_SERIAL,   HOUSEFILTER_RANGE,   HOUSEFILTER_GUEST_NUMBER,   HOUSEFILTER_TYPE,   HOUSEFILTER_ROOM_NUMBER,   HOUSEFILTER_LOCATION,   HOUSEFILTER_BEDROOM_NUMBER,   HOUSEFILTER_BATHROOM_NUMBER,   HOUSEFILTER_BED_NUMBER,   HOUSEFILTER_CHECKIN_TERM,   HOUSEFILTER_CHECKIN_START,   HOUSEFILTER_CHECKIN_END,   HOUSEFILTER_RESERVATION_TERM,   HOUSEFILTER_BAK_MIN,   HOUSEFILTER_BAK_MAX,   HOUSEFILTER_PRICE   
		from HOUSEFILTER                                  
		WHERE HOUSE_SERIAL in 
		(       
			select DISTINCT HOUSE_SERIAL        
			from 
			(                                                      
			)     
		)             
	)

-- list X shutdown O -> 오른쪽 괄호 없고
select HOUSE_SERIAL houseSerial   
from HOUSE    
where HOUSE_SERIAL IN   
(        
	select HOUSE_SERIAL        
	from 
	(         
		select HOUSE_SERIAL,   HOUSEFILTER_RANGE,   HOUSEFILTER_GUEST_NUMBER,   HOUSEFILTER_TYPE,   HOUSEFILTER_ROOM_NUMBER,   HOUSEFILTER_LOCATION,   HOUSEFILTER_BEDROOM_NUMBER,   HOUSEFILTER_BATHROOM_NUMBER,   HOUSEFILTER_BED_NUMBER,   HOUSEFILTER_CHECKIN_TERM,   HOUSEFILTER_CHECKIN_START,   HOUSEFILTER_CHECKIN_END,   HOUSEFILTER_RESERVATION_TERM,   HOUSEFILTER_BAK_MIN,   HOUSEFILTER_BAK_MAX,   HOUSEFILTER_PRICE   
		from HOUSEFILTER                                  
		WHERE HOUSE_SERIAL in 
		(       
			select DISTINCT HOUSE_SERIAL        
			from (                                  
				select DISTINCT HOUSE_SERIAL          
				from SHUTDOWN        
				where HOUSE_SERIAL NOT IN 
				(         
					select DISTINCT HOUSE_SERIAL          
					from SHUTDOWN         
					where SHUTDOWN_DATE          
					between (CAST(? as date)) and (CAST(? as date))        
				)                                                       
			)    
		)             
	)

	
	
select HOUSE_SERIAL houseSerial   
from HOUSE
where HOUSE_SERIAL IN 
(        
	select HOUSE_SERIAL
	from
	(       
		select HOUSE_SERIAL,   HOUSEFILTER_RANGE,   HOUSEFILTER_GUEST_NUMBER,   HOUSEFILTER_TYPE,   HOUSEFILTER_ROOM_NUMBER,   HOUSEFILTER_LOCATION,   HOUSEFILTER_BEDROOM_NUMBER,   HOUSEFILTER_BATHROOM_NUMBER,   HOUSEFILTER_BED_NUMBER,   HOUSEFILTER_CHECKIN_TERM,   HOUSEFILTER_CHECKIN_START,   HOUSEFILTER_CHECKIN_END,   HOUSEFILTER_RESERVATION_TERM,   HOUSEFILTER_BAK_MIN,   HOUSEFILTER_BAK_MAX,   HOUSEFILTER_PRICE  
		from HOUSEFILTER     
		WHERE HOUSE_SERIAL in 
		(    
			select DISTINCT HOUSE_SERIAL     
			from 
			(                 
				select DISTINCT HOUSE_SERIAL  
				from SHUTDOWN    
				where HOUSE_SERIAL NOT IN 
				(      
					select DISTINCT HOUSE_SERIAL        
					from SHUTDOWN    
					where SHUTDOWN_DATE   
					between (CAST(? as date)) and (CAST(? as date))  
				)                                                        
			)    
		)       
	)
	
	
select HOUSE_SERIAL houseSerial   
from HOUSE    
where HOUSE_SERIAL IN   
(        
	select HOUSE_SERIAL  
	from 
	(         
		select HOUSE_SERIAL,   HOUSEFILTER_RANGE,   HOUSEFILTER_GUEST_NUMBER,   HOUSEFILTER_TYPE,   HOUSEFILTER_ROOM_NUMBER,   HOUSEFILTER_LOCATION,   HOUSEFILTER_BEDROOM_NUMBER,   HOUSEFILTER_BATHROOM_NUMBER,   HOUSEFILTER_BED_NUMBER,   HOUSEFILTER_CHECKIN_TERM,   HOUSEFILTER_CHECKIN_START,   HOUSEFILTER_CHECKIN_END,   HOUSEFILTER_RESERVATION_TERM,   HOUSEFILTER_BAK_MIN,   HOUSEFILTER_BAK_MAX,   HOUSEFILTER_PRICE   
		from HOUSEFILTER                                 
		WHERE HOUSE_SERIAL in 
		(       
			select DISTINCT HOUSE_SERIAL        
			from 
			(                                   
				select DISTINCT HOUSE_SERIAL           
				from SHUTDOWN       
				where HOUSE_SERIAL NOT IN 
				(         
					select DISTINCT HOUSE_SERIAL         
					from SHUTDOWN        
					where SHUTDOWN_DATE          
					between (CAST(? as date)) and (CAST(? as date))        
				)                                                                        
			)                     
		)     
	)         
	WHERE  (CAST(? as date)-CAST(? as date)) 
	between HOUSEFILER_BAK_MIN and HOUSEFILTER_BAK_MAX        
	and (? + HOUSEFILTER_RESERVATION_TERM *30 >= ?)        
	and (? + HOUSEFILTER_CHECKIN_TERM >= ?)    
)

		select COALESCE(min(SHUTDOWN_DATE - CAST('2017-01-02' as date) ),  (CAST('2018-01-03' as date) - CAST('2017-01-02' as date)))
		from SHUTDOWN
		where SHUTDOWN_SERIAL in
		(
			select SHUTDOWN_SERIAL
			from SHUTDOWN
			where ( SHUTDOWN_DATE - CAST('2017-01-02' as date) >=1000)
			and HOUSE_SERIAL=1
		)

'2017-01-02'
select min()
count(
		select min(SHUTDOWN_DATE - CAST('2017-01-02' as date) )
		from SHUTDOWN
		where SHUTDOWN_SERIAL in
		(
			select SHUTDOWN_SERIAL
			from SHUTDOWN
			where ( SHUTDOWN_DATE - CAST('2017-01-02' as date) >=0)
			and HOUSE_SERIAL= 1
		)
	) is null

------------------------map 실험
37.397002083376634
127.09481058456424

37.40722956764499
127.11922941543583
insert into REVIEW values(REVIEW_SEQ.nextval,'aaa','좋은 곳입니다1','밥이 맛있음1',9,'2015-02-02',37.400,127.100,211,'밥집1');
insert into REVIEW values(REVIEW_SEQ.nextval,'aaa','좋은 곳입니다2','밥이 맛있음2',9,'2015-02-02',37.404,127.110,212,'밥집2');
insert into REVIEW values(REVIEW_SEQ.nextval,'aaa','좋은 곳입니다3','밥이 맛있음3',9,'2015-02-02',37.500,127.099,213,'밥집3');
insert into REVIEW values(REVIEW_SEQ.nextval,'aaa','좋은 곳입니다4','밥이 맛있음4',9,'2015-02-02',37.398,127.142,213,'밥집4');
insert into REVIEW values(REVIEW_SEQ.nextval,'aaa','좋은 곳입니다5','밥이 맛있음5',9,'2015-02-02',37.402,127.112,212,'밥집5');
insert into REVIEW values(REVIEW_SEQ.nextval,'aaa','좋은 곳입니다6','밥이 맛있음6',9,'2015-02-02',37.400,127.140,211,'밥집6');
insert into REVIEW values(REVIEW_SEQ.nextval,'aaa','좋은 곳입니다7','밥이 맛있음7',9,'2015-02-02',37.399,127.095,213,'밥집7');
insert into REVIEW values(REVIEW_SEQ.nextval,'aaa','좋은 곳입니다8','밥이 맛있음8',9,'2015-02-02',37.400,127.102,213,'밥집8');
insert into REVIEW values(REVIEW_SEQ.nextval,'aaa','좋은 곳입니다9','밥이 맛있음9',9,'2015-02-02',37.405,127.113,212,'밥집9');
insert into REVIEW values(REVIEW_SEQ.nextval,'aaa','좋은 곳입니다10','밥이 맛있음10',9,'2015-02-02',37.404,127.095,211,'밥집10');
insert into REVIEW values(REVIEW_SEQ.nextval,'aaa','좋은 곳입니다11','밥이 맛있음11',9,'2015-02-02',37.407,127.097,211,'밥집11');

delete from REVIEW;

														between 37.39 and 37.407)
															and	  (review_marker_y between 127.09 and 127.119)

															
select   h.HOUSE_SERIAL h_hSerial,h.MEMBER_EMAIL h_email, h.HOUSE_REGISTER_STATUS,h.HOUSE_TITLE, h.HOUSE_CONTENT,h.HOUSE_NECESSARY_CONDITION,   h.HOUSE_RATING, h.HOUSE_MARKER_X,h.HOUSE_MARKER_Y, h.HOUSE_MARKER_CONSTANT,   f.HOUSE_SERIAL f_hSerial,f.HOUSEFILTER_RANGE,f.HOUSEFILTER_GUEST_NUMBER,f.HOUSEFILTER_TYPE,f.HOUSEFILTER_ROOM_NUMBER,f.HOUSEFILTER_LOCATION,f.HOUSEFILTER_BEDROOM_NUMBER,   f.HOUSEFILTER_BATHROOM_NUMBER,f.HOUSEFILTER_BED_NUMBER,f.HOUSEFILTER_CHECKIN_TERM,f.HOUSEFILTER_CHECKIN_START,f.HOUSEFILTER_CHECKIN_END,   f.HOUSEFILTER_RESERVATION_TERM,f.HOUSEFILTER_BAK_MIN,f.HOUSEFILTER_BAK_MAX,f.HOUSEFILTER_PRICE,   p.PICTURE_SERIAL, p.HOUSE_SERIAL p_hSerial, p.PICTURE_ORDER , p.PICTURE_NAME  
from HOUSE h, HOUSEFILTER f , HOUSEPICTURE p       
where   h.HOUSE_SERIAL    
in  
(             
	select HOUSE_SERIAL houseSerial    
	from HOUSE    
	where HOUSE_SERIAL 
	IN   
	(         
		select HOUSE_SERIAL          
		from 
		(          
			select HOUSE_SERIAL,   HOUSEFILTER_RANGE,   HOUSEFILTER_GUEST_NUMBER,   HOUSEFILTER_TYPE,   HOUSEFILTER_ROOM_NUMBER,   HOUSEFILTER_LOCATION,   HOUSEFILTER_BEDROOM_NUMBER,   HOUSEFILTER_BATHROOM_NUMBER,   HOUSEFILTER_BED_NUMBER,   HOUSEFILTER_CHECKIN_TERM,   HOUSEFILTER_CHECKIN_START,   HOUSEFILTER_CHECKIN_END,   HOUSEFILTER_RESERVATION_TERM,   HOUSEFILTER_BAK_MIN,   HOUSEFILTER_BAK_MAX,   HOUSEFILTER_PRICE  
			from HOUSEFILTER                                             
		)          
		WHERE  HOUSEFILTER_GUEST_NUMBER >= ?                               
		and (HOUSEFILTER_PRICE between ? and ?)     
	)  
)  
and f.HOUSE_SERIAL = h.HOUSE_SERIAL  
and p.HOUSE_SERIAL(+) = h.HOUSE_SERIAL  
and (HOUSE_MARKER_X between ? and ?)   
and (HOUSE_MARKER_Y between ? and ?)


	SELECT ADD_MONTHS((select sysdate from dual),2) from dual;														
															
	select 
		review_serial reviewSerial, 
		member_email memberEmail,
		review_title reviewTitle,
		review_content reviewContent,
		review_rating reviewRating,
		review_time reviewTime,
		review_marker_x reviewMarkerX,
		review_marker_y reviewMarkerY,
		review_marker_constant reviewMarkerConstant,
		review_place reviewPlace
	from REVIEW 
	where (review_marker_x between 37.39 and 37.407)
	and	  (review_marker_y between 127.09 and 127.119)
	
	
	
	select 
		review_serial reviewSerial, 
		member_email memberEmail,
		review_title reviewTitle,
		review_content reviewContent,
		review_rating reviewRating,
		review_time reviewTime,
		review_marker_x reviewMarkerX,
		review_marker_y reviewMarkerY,
		review_marker_constant reviewMarkerConstant,
		review_place reviewPlace
	from REVIEW 
	where REVIEW_MARKER_X = #{lat}
	and   REVIEW_MARKER_Y = #{lng}