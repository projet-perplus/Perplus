	update review
	set review_serial = 1,
		 member_email = 'skfo@mail.com',
		 review_title = 'qqqqq',
		 review_content = 'q',
		 review_rating = 2,
		 review_time = '20160514',
		 review_marker_x = 1,
		 review_marker_y = 22,
		 review_marker_constant = 1
		where review_serial = 1
		
select *
from review

insert into review values(4,'skfo@email','오오ㅗㅇ','ㄴㅇㄹㄻㅁ',1,'2015-6-5',12.5,6.2,1);

delete from review
where review_serial =4

select r.review_serial, r.member_email,r.review_title,r.review_content,r.review_rating,r.review_time,r.review_marker_x,r.review_marker_y,r.review_marker_constant,
		   c.review_serial,c.member_email,c.comment_content,c.comment_rating,c.comment_time,
		   p.review_serial,p.picture_order,p.picture_name
from review r, REVIEWCOMMENT c, REVIEWPICTURE p
where r.review_serial = c.review_serial
and  r.review_serial = p.review_serial
and  r.review_serial = 1

