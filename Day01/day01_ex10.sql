select p.name person_name, m.pizza_name, p2.name pizzeria_name
from person_order po
         join person p on p.id = po.person_id
         join menu m on m.id = po.menu_id
         join pizzeria p2 on m.pizzeria_id = p2.id
order by person_name, pizza_name, pizzeria_name
