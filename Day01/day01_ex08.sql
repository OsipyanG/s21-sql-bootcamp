select po.order_date                        as order_date,
       CONCAT(p.name, ' (age:', p.age, ')') as person_information
from (person_order as po(primary_id, id, menu_id, order_date)
    natural join person p)
order by order_date, person_information;