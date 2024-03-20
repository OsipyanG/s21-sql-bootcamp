select missing_date::date
from generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day'::interval) missing_date
         left join (select visit_date from person_visits where person_id = 1 or person_id = 2) as pv
                   on missing_date = pv.visit_date
where visit_date is null
order by missing_date