select 
   sub. item
FROM
(
   SELECT
        item,
        count(1) as cnt,
        min(count(1)) over () as min_cnt,
        max(count(1)) over () as max_cnt
    from item_bought 
    group by item
) sub
where sub.cnt not in (sub.min_cnt, sub.max_cnt);