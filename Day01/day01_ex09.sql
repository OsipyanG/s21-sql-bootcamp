-- 1 solution
select p.name
from pizzeria p
where p.id not in (select pv.pizzeria_id
                   from person_visits pv);

-- 2 solution
select p.name
from pizzeria p
where not exists(select
                 from person_visits pv
                 where pv.pizzeria_id = p.id)
