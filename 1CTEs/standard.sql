explain analyze
select count(*), category
from (select unnest(string_to_array(category, ',')) as category
      from (select translate(lower(market_category), '- ', '__') category from cars) normalized) unnested
group by category
order by count(*) desc;
