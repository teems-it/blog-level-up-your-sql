-- Duplicated calculation of the (engine_hp / engine_cylinders_count)
select concat(make, ' ', model, ' ', year, ' ', engine_hp, 'hp'),
       msrp,
       popularity,
       msrp / (engine_hp / engine_cylinders_count)       as msrp_per_cylinder_hp,
       popularity / (engine_hp / engine_cylinders_count) as popularity_per_cylinder_hp
from cars
where engine_cylinders_count <> 0;


