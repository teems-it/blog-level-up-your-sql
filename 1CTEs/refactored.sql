explain analyze
with normalized as (select translate(lower(market_category), '- ', '__') categories from cars),
     unnested as (select unnest(string_to_array(categories, ',')) as category from normalized)
select count(*), category
from unnested
group by category
order by count(*) desc;