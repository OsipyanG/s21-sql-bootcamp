-- solution 1
select action_date, person.name as person_name
from (select order_date action_date, person_id
      from person_order
      intersect
      select visit_date action_date, person_id
      from person_visits) tmp
         join person
              on tmp.person_id = person.id
order by action_date, person_name desc;

-- solution 2
select distinct(order_date) as action_date, person.name as person_name
from person_order
         join person_visits
              on person_order.order_date = person_visits.visit_date
         join person on person_order.person_id = person.id
order by action_date, person_name desc
