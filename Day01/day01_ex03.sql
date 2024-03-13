select order_date action_date, person_id
from person_order
intersect
select visit_date action_date, person_id
from person_visits
order by action_date, person_id desc