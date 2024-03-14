select order_date, concat(person.name,' (age:',person.age,')') as person_information
from person_order
         join person
              on person_order.person_id = person.id
order by order_date,person_information