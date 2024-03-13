select *
from person
         cross join pizzeria
order by person.id, pizzeria.id