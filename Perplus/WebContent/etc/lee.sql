create sequence house_seq increment by 1;

drop sequence house_seq

insert into HOUSEFILTER values(1,'화장실',20,'다인실',2,'경기도 용인시 모현면');



insert into HOUSEZZIM values(1,25,'bbb')

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

insert into HOUSE values(HOUSE_SEQ.nextval,'bbb',0,'따뜻한 집','조흔 집입니다1',null,0,0,0,0);
insert into HOUSE values(HOUSE_SEQ.nextval,'bbb',0,'추운 즵','조흔 집입니다2',null,0,0,0,0);
insert into HOUSE values(HOUSE_SEQ.nextval,'bbb',0,'초가집','조흔 집입니다3',null,0,0,0,0);
insert into HOUSE values(HOUSE_SEQ.nextval,'bbb',0,'이글루','조흔 집입니다4',null,0,0,0,0);
insert into HOUSE values(HOUSE_SEQ.nextval,'aaa',0,'아늑한집','조흔 집입니다5',null,0,0,0,0);
insert into HOUSE values(HOUSE_SEQ.nextval,'aaa',0,'정글집','조흔 집입니다6',null,0,0,0,0);
insert into HOUSE values(HOUSE_SEQ.nextval,'aaa',0,'개미집','조흔 집입니7',null,0,0,0,0);
insert into HOUSE values(HOUSE_SEQ.nextval,'aaa',0,'사람집','조흔 집입니다8',null,0,0,0,0);

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

