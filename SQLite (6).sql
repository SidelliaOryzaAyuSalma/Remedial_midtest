select 
    item, 
    count(1) as cnt,
    min(count(1)) over ()
from item_bought 
group by item;