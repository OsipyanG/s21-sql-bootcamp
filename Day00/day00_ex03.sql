select distinct(person_id)
from person_visits p
where p.visit_date between '2022-01-06' and '2022-01-09'
   or p.pizzeria_id = 2
order by p.person_id desc