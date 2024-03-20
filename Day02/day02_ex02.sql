select p.name, visit_date, p2.name
from person_visits
         full outer join public.person p on p.id = person_visits.person_id
         full outer join public.pizzeria p2 on person_visits.pizzeria_id = p2.id
where visit_date between '2022-01-01' and '2022-01-03'
;

select coalesce(p.name, '-')  AS person_name,
       visit_date,
       coalesce(pz.name, '-') AS pizzeria_name
from person p
         cross join pizzeria pz
         left join person_visits pv on p.id = pv.person_id and pv.pizzeria_id=pz.id

where visit_date between '2022-01-01' and '2022-01-03'
order by person_name,pizzeria_id,visit_date
