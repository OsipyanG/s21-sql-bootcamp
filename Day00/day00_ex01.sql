select name, age
from person p
where p.gender = 'female'
  and p.address = 'Kazan'
order by p.name