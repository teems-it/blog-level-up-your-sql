-- Using lateral join to calculate the cylinder_hp for every row
select concat(make, ' ', model, ' ', year, ' ', engine_hp, 'hp'),
       msrp,
       popularity,
       msrp / cylinder_hp       as msrp_per_cylinder_hp,
       popularity / cylinder_hp as popularity_per_cylinder_hp
from cars
         cross join lateral (select (engine_hp / engine_cylinders_count) as cylinder_hp)
where engine_cylinders_count <> 0;