desc emaillist;

insert 
into emaillist
values ( null, '둘', '리' , 'DOOLLY@MAIL.COM');

select no, first_name, last_name, email 
from emaillist 
order by no desc;