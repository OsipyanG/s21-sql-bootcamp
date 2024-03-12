select name, rating
from pizzeria p
where p.rating >= 3.5
  and p.rating <= 5
order by p.rating;

select name, rating
from pizzeria p
where p.rating between 3.5 and 5
order by p.rating;

