desc guestbook;


insert into guestbook values(null , '김지원', '1234', 'hi', now());

select no, name, message
    from guestbook
    order by no; 

select no, name, date_format(reg_date, '%Y/%m/%d %H:%i:%s'), message
from guestbook
order by reg_date ;

delete
from guestbook
where no = 1
and password = '1234';