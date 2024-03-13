select object_name
from (select pizza_name as object_name, 1 as sort_order
      from menu
      union all
      select name object_name, 2 as sort_order
      from person) as tmp_data
order by sort_order desc, object_name;