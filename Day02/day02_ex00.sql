select name, rating
from pizzeria p
         left join person_visits pv on p.id = pv.pizzeria_id
where pv.id IS NULL;