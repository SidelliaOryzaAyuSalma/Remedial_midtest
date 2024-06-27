select 
    item, 
    count(1) as cnt,
    min(count(1)) over () as min_cnt,
    max(count(1)) over () as max_cnt
from item_bought 
group by item;