-- first solution
select (select name from person where id = person_order.person_id) as name,
       case
           when (select name from person where id = person_order.person_id) = 'Denis' then true
           else false
           end                                                     as check_name
from person_order
where menu_id in (13, 14, 18)
  and order_date = '2022-01-07';


-- second solution
select (select name from person where id = person_order.person_id)           as name,
       (SELECT name = 'Denis' FROM person WHERE id = person_order.person_id) AS check_name
from person_order
where menu_id in (13, 14, 18)
  and order_date = '2022-01-07';

